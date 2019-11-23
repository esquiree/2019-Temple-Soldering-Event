#include <avr/io.h>
#define F_CPU 1000000UL
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>

/***************************************

Configure Connections

****************************************/

#define HC595_PORT   PORTB
#define HC595_DDR    DDRB

#define HC595_DS_POS PB0      //Data pin (DS) pin location

#define HC595_SH_CP_POS PB1      //Shift Clock (SH_CP) pin location 
#define HC595_ST_CP_POS PB2      //Store Clock (ST_CP) pin location
#define HC595_OE_POS PB3




uint8_t mode = 0;
uint8_t j = 0;
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


void Wait()
{
   _delay_ms(50);
}

void Wait2()
{
	_delay_ms(1);
}
//
//int chkBtn(uint8_t *lcv)
//{
	//if (((PINB&(1<<PB4)) == 0x00) && (coolDown == 0x00))
	//{
		//mode++;
		//coolDown = 0x06;
		//if (mode >= 5){
			//mode = 0;
		//}
		//*lcv = 0xFD;
		//return 1;
	//}
	//if (coolDown != 0x00)
	//{
		//coolDown--;
	//}
	//return 0;
//}

void write5Bytes(uint8_t byte0, uint8_t byte1, uint8_t byte2, uint8_t byte3, uint8_t byte4)
{
	HC595Write(byte4);
	HC595Write(byte3);
	HC595Write(byte2);
	HC595Write(byte1);
	HC595Write(byte0);
	HC595Latch();
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


ISR(PCINT0_vect)
{
	if (((PINB&(1<<PB4)) == 0x00) && (coolDown == 0x00))
	{
		mode++;
		j = 0xFD; //Exit current mode loop
		//coolDown = 0x0F;
		if (mode >= 7){ //Max mode options - 1
			mode = 0;
		}
		//Set up Timer1 for btn cool down
		coolDown = 1;
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
	EEPROM_write(0x07, mode); // Save mode for next power up
}



int main()
{
	uint64_t line_pattern1[] = {0x00001F000000, 0x000060C00000, 0x000080200000, 0x000100100000, 0x00220008C001, 0x1C00072002, 0x000000001004, 0x000000000FF8, 0x0};
	uint64_t line_pattern2[] = {0x00001F000000, 0x00007FC00000, 0x0000FFE00000, 0x0001FFF00000, 0x0023FFF8C001, 0x007FFFFFE003, 0x00FFFFFFF007, 0x00FFFFFFFFFF, 0x0};
	HC595Init();
	
	PORTB ^= (1<<PB4); //Btn 
	mode = EEPROM_read(0x07); // Read mode selection from last power cycle
	if(mode > 0x08){ //catch any errors in EEPROM
		mode = 0x00;
	}
	
	
	GIMSK |= (1<<PCIE);
	PCMSK |= (1<<PB4);
	sei();
		  
	while(1)
	{		
		if (mode == 0)
		{
			for (j=0;j<9;j++)
			{
				write5Bytes(line_pattern1[j],line_pattern1[j]>>8,line_pattern1[j]>>16,line_pattern1[j]>>24,line_pattern1[j]>>32);
				//data_byte = data_byte<<1;
				Wait();   	
				Wait();	 
				Wait();				
			}
		}
		if (mode == 1)
		{
			for (j=0;j<8;j++)
			{
				write5Bytes(line_pattern2[j],line_pattern2[j]>>8,line_pattern2[j]>>16,line_pattern2[j]>>24,line_pattern2[j]>>32);
				//data_byte = data_byte<<1;
				Wait();
				Wait();
				Wait();
			}
			
			for (j=8;j>0;j--)
			{
				if (mode == 1) //Check for exit condition
				{
					write5Bytes(line_pattern2[j-1],line_pattern2[j-1]>>8,line_pattern2[j-1]>>16,line_pattern2[j-1]>>24,line_pattern2[j-1]>>32);
					//data_byte = data_byte<<1;
					Wait();
					Wait();
					Wait();
				}
			}
					
		}
		if (mode == 2)
		{
			uint64_t shiftedNum =0x01;
			for (j=0;j<38;j++)
			{
				write5Bytes(shiftedNum,shiftedNum>>8,shiftedNum>>16,shiftedNum>>24,shiftedNum>>32);
				shiftedNum = shiftedNum<<1;				   
				Wait();										
			}
		}
		if (mode == 3)
		{
			uint64_t shiftedNum =0x00;
			for (j=0;j<39;j++)
			{
				write5Bytes(shiftedNum,shiftedNum>>8,shiftedNum>>16,shiftedNum>>24,shiftedNum>>32);
				shiftedNum = shiftedNum<<1;
				shiftedNum = shiftedNum + 1;				   
				Wait();										
			}
			if (mode == 3)//check for exit condition
			{
				for (j=0;j<39;j++)
				{
					write5Bytes(shiftedNum,shiftedNum>>8,shiftedNum>>16,shiftedNum>>24,shiftedNum>>32);
					shiftedNum = shiftedNum<<1;
					Wait();
				}
			}			
		}
		if (mode == 4)
		{
			uint64_t shiftedNum =0x0F;
			while (mode == 4)
			{
				write5Bytes(shiftedNum,shiftedNum>>8,shiftedNum>>16,shiftedNum>>24,shiftedNum>>32);
				if ((shiftedNum & 0x002000000000) == 0x002000000000) //Bit at end
				{
					shiftedNum = shiftedNum<<1;
					shiftedNum = shiftedNum + 1;
				} 
				else
				{
					shiftedNum = shiftedNum<<1;
				}
				
				Wait();
			}
		}
		if (mode == 5)
		{
			write5Bytes(0xFF,0xFF,0xFF,0xFF,0xFF);
			Wait();
		}
		if (mode == 6)
		{
			uint64_t shiftedNum =0x00;
			for (shiftedNum=0;(shiftedNum<274877906944 && mode == 6);shiftedNum++)
			{
				write5Bytes(shiftedNum,shiftedNum>>8,shiftedNum>>16,shiftedNum>>24,shiftedNum>>32);
				Wait2();
			}
		}
			 	 
	}
}
