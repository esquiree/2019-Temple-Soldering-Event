#include <avr/io.h>
#define F_CPU 1000000UL
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#define RAND_MAX 0x08
#include <stdlib.h>

/***************************************

Configure Connections

****************************************/



#define HC595_PORT   PORTB
#define HC595_DDR    DDRB

#define HC595_DS_POS PB0      //Data pin (DS) pin location

#define HC595_SH_CP_POS PB1      //Shift Clock (SH_CP) pin location 
#define HC595_ST_CP_POS PB2      //Store Clock (ST_CP) pin location
#define HC595_OE_POS PB3
#define BTN PB4


uint8_t MAXMODE = 2;
uint8_t mode = 0;
uint8_t j = 0;
uint8_t i = 0;
uint8_t coolDown = 0;


void HC595Init()
{
   //Make the Data(DS), Shift clock (SH_CP), Store Clock (ST_CP) lines output
   HC595_DDR|=((1<<HC595_SH_CP_POS)|(1<<HC595_ST_CP_POS)|(1<<HC595_DS_POS)|(1<<HC595_OE_POS));
   HC595_PORT&=(~(1<<HC595_OE_POS));//LOW
}


//Low level macros to change data (DS)lines
#define HC595DataHigh() (HC595_PORT|=(1<<HC595_DS_POS))

#define HC595DataLow() (HC595_PORT&=(~(1<<HC595_DS_POS)))

//Sends a clock pulse on SH_CP line
void HC595Pulse()
{
   //Pulse the Shift Clock

   HC595_PORT|=(1<<HC595_SH_CP_POS);//HIGH

   HC595_PORT&=(~(1<<HC595_SH_CP_POS));//LOW

}


void HC595Latch()
{

   HC595_PORT|=(1<<HC595_ST_CP_POS);//HIGH
   _delay_us(1);

   HC595_PORT&=(~(1<<HC595_ST_CP_POS));//LOW
   _delay_us(1);
}


void HC595Write(uint8_t data)
{
   for(uint8_t i=0;i<8;i++)
   {

      if(data & 0b10000000)
      {
         HC595DataHigh();
      }
      else
      {
         HC595DataLow();
      }
      HC595Pulse();  //Pulse the Clock line
      data=data<<1;  //Now bring next bit at MSB position

   }

   //HC595Latch();
}


void EEPROM_write(uint8_t uiAddress, uint8_t ucData) //Stolen from https://stackoverflow.com/questions/4412111/avr-eeprom-read-write
{
	while(EECR & (1<<EEPE));    /* Wait for completion of previous write */
	EEARH = 0x00;
	EEARL = uiAddress;
	EEDR = ucData;
	cli();
	EECR |= (1<<EEMPE);     /* Write logical one to EEMPE */
	EECR |= (1<<EEPE);      /* Start eeprom write by setting EEPE */
	sei();
}
unsigned char EEPROM_read(uint8_t uiAddress) //Stolen from https://stackoverflow.com/questions/4412111/avr-eeprom-read-write
{
	while(EECR & (1<<EEPE)); /* Wait for completion of previous write */

	EEARH = (uiAddress>>8);  /* Set up address register */
	EEARL = uiAddress;

	EECR |= (1<<EERE);       /* Start eeprom read by writing EERE */

	return EEDR;             /* Return data from Data Register */
}




void Wait()
{
	_delay_ms(100);
	_delay_ms(100);
	_delay_ms(100);
	_delay_ms(100);
}
void Wait_short()
{
	_delay_ms(100);
}

void writeByte(uint8_t byte0)
{

	HC595Write(byte0);
	HC595Latch();
}

ISR(PCINT0_vect)
{
	if (((PINB&(1<<BTN)) == 0x00) && (coolDown == 0x00))
	{
		mode++;
		j = 0x00; 
		i = 0x00;
		if (mode >= MAXMODE){ //Max mode options - 1
			mode = 0;
		}
		//Set up Timer1 for btn cool down
		EEPROM_write(0x07, mode); 
		TCCR0B = (2 << CS00);              //div8
		OCR0B = F_CPU/8 * 0.000500 - 1;    // 500us compare value
		TIMSK |= (1<<OCIE0B);              //if you want interrupt
	}
}

ISR(TIMER0_COMPB_vect)
{
	//Cool Down timer complete
	coolDown = 0x00;
	TIMSK = 0x00;  //Stop the counter
	//EEPROM_write(0x07, mode); // Save mode for next power up
}

int main()
{
	HC595Init();
	PORTB ^= (1<<BTN); //Btn 
	//PORTB ^= (1<<HC595_OE_POS);
	DDRB ^= (1<<HC595_OE_POS);
	uint8_t pattern1 = 1;
	uint8_t pattern2[] = {0xFD,0xFB,0xF7,0xEF,0xDF,0xBF,0x7F};
	uint8_t pattern3[] = {0x7D, 0xBB, 0xD7, 0xEF};
	uint8_t pattern4[] = {0xFB,0xF3,0xD3,0x53,0x13,0x03,0x01};
	uint8_t pattern5[] = {0xFF, 0x00};
	mode = EEPROM_read(0x07); // Read mode selection from last power cycle
	MAXMODE = 7;
	if(mode > MAXMODE){ //catch any errors in EEPROM
		mode = 0x00;
	}
	
	
	GIMSK |= (1<<PCIE);		
	PCMSK |= (1<<BTN);
	sei();

	//uint8_t j = 0;
	
		
	while(1)
	{		
		j++;
		if (mode == 4)
		{
			writeByte(0xFF);
			Wait();			
		}
		if (mode == 1)
		{
			writeByte(0xFF);
			if(j == 4){
				writeByte(0xFE);
				j = 0;
			}
			Wait();
		}
		if (mode == 2)
		{
			writeByte(0xFF);
			if(j == 4){
				writeByte(pattern2[i]);
				j = 0;
				i++;
				if (i==7)
				{
					i =0;
				}
			}
			Wait_short();
			Wait_short();
			Wait_short();
		}
		if (mode == 3)
		{
			writeByte(0xFF);
			if(j == 4){
				writeByte(pattern3[i]);
				j = 0;
				i++;
				if (i==4)
				{
					i =0;
				}
			}
			Wait();
		}
		if (mode == 0)
		{
			pattern1++;
			writeByte(pattern1);
			Wait_short();
			Wait_short();
			Wait_short();
			Wait_short();
			Wait_short();
		}
		if (mode == 5)
		{
			if ((i == 0x80) || (i == 0x00))
			{
				i = 1;
			}
			i = i<<1;
			j= i | 0x01;
			writeByte(j);
			Wait_short();
			Wait_short();
			Wait_short();
			Wait_short();
			Wait_short();
		}
		if (mode == 6)
		{
			writeByte(rand());
			Wait();
		}		 	 
	}
}
