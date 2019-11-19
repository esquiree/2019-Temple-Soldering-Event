EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 5B1F3806
P 1450 2000
F 0 "D1" H 1450 2100 50  0000 C CNN
F 1 "LED" H 1450 1900 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 2000 50  0001 C CNN
F 3 "" H 1450 2000 50  0001 C CNN
	1    1450 2000
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5B1F3AD6
P 1450 2300
F 0 "D2" H 1450 2400 50  0000 C CNN
F 1 "LED" H 1450 2200 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 2300 50  0001 C CNN
F 3 "" H 1450 2300 50  0001 C CNN
	1    1450 2300
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 5B1F3AF8
P 1450 2600
F 0 "D3" H 1450 2700 50  0000 C CNN
F 1 "LED" H 1450 2500 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 2600 50  0001 C CNN
F 3 "" H 1450 2600 50  0001 C CNN
	1    1450 2600
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 5B1F3B29
P 1450 2900
F 0 "D4" H 1450 3000 50  0000 C CNN
F 1 "LED" H 1450 2800 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 2900 50  0001 C CNN
F 3 "" H 1450 2900 50  0001 C CNN
	1    1450 2900
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 5B1F3B81
P 1450 3200
F 0 "D5" H 1450 3300 50  0000 C CNN
F 1 "LED" H 1450 3100 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 3200 50  0001 C CNN
F 3 "" H 1450 3200 50  0001 C CNN
	1    1450 3200
	1    0    0    -1  
$EndComp
$Comp
L LED D6
U 1 1 5B1F3BAC
P 1450 3450
F 0 "D6" H 1450 3550 50  0000 C CNN
F 1 "LED" H 1450 3350 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 3450 50  0001 C CNN
F 3 "" H 1450 3450 50  0001 C CNN
	1    1450 3450
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 5B1F3BE2
P 1450 4700
F 0 "D7" H 1450 4800 50  0000 C CNN
F 1 "LED" H 1450 4600 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 4700 50  0001 C CNN
F 3 "" H 1450 4700 50  0001 C CNN
	1    1450 4700
	1    0    0    -1  
$EndComp
$Comp
L LED D8
U 1 1 5B1F3C23
P 1450 5000
F 0 "D8" H 1450 5100 50  0000 C CNN
F 1 "LED" H 1450 4900 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 5000 50  0001 C CNN
F 3 "" H 1450 5000 50  0001 C CNN
	1    1450 5000
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 Shift1
U 1 1 5B1F3CC6
P 3100 2400
F 0 "Shift1" H 3250 3000 50  0000 C CNN
F 1 "74HC595" H 3100 1800 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3100 2400 50  0001 C CNN
F 3 "" H 3100 2400 50  0001 C CNN
	1    3100 2400
	-1   0    0    -1  
$EndComp
Text GLabel 3900 2150 2    60   Input ~ 0
Serial_Clock
Text GLabel 4600 2250 2    60   Input ~ 0
Master_Reset
Text GLabel 4000 2450 2    60   Input ~ 0
Reg_Clock
Text GLabel 4600 2550 2    60   Input ~ 0
Output_Enable
$Comp
L ATTINY85-20PU Tiny85
U 1 1 5B1FC363
P 8050 3700
F 0 "Tiny85" H 6900 4100 50  0000 C CNN
F 1 "ATTINY85-20PU" H 9050 3300 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 9050 3700 50  0001 C CIN
F 3 "" H 8050 3700 50  0001 C CNN
	1    8050 3700
	1    0    0    -1  
$EndComp
$Comp
L LED D9
U 1 1 5B295E57
P 1450 5300
F 0 "D9" H 1450 5400 50  0000 C CNN
F 1 "LED" H 1450 5200 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 5300 50  0001 C CNN
F 3 "" H 1450 5300 50  0001 C CNN
	1    1450 5300
	1    0    0    -1  
$EndComp
$Comp
L LED D10
U 1 1 5B295E5D
P 1450 6550
F 0 "D10" H 1450 6650 50  0000 C CNN
F 1 "LED" H 1450 6450 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 6550 50  0001 C CNN
F 3 "" H 1450 6550 50  0001 C CNN
	1    1450 6550
	1    0    0    -1  
$EndComp
$Comp
L LED D11
U 1 1 5B295E63
P 1450 6850
F 0 "D11" H 1450 6950 50  0000 C CNN
F 1 "LED" H 1450 6750 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 6850 50  0001 C CNN
F 3 "" H 1450 6850 50  0001 C CNN
	1    1450 6850
	1    0    0    -1  
$EndComp
$Comp
L LED D12
U 1 1 5B295E69
P 1450 7150
F 0 "D12" H 1450 7250 50  0000 C CNN
F 1 "LED" H 1450 7050 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 7150 50  0001 C CNN
F 3 "" H 1450 7150 50  0001 C CNN
	1    1450 7150
	1    0    0    -1  
$EndComp
$Comp
L LED D13
U 1 1 5B295E6F
P 1450 6200
F 0 "D13" H 1450 6300 50  0000 C CNN
F 1 "LED" H 1450 6100 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 6200 50  0001 C CNN
F 3 "" H 1450 6200 50  0001 C CNN
	1    1450 6200
	1    0    0    -1  
$EndComp
$Comp
L LED D14
U 1 1 5B295E75
P 1450 5600
F 0 "D14" H 1450 5700 50  0000 C CNN
F 1 "LED" H 1450 5500 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 5600 50  0001 C CNN
F 3 "" H 1450 5600 50  0001 C CNN
	1    1450 5600
	1    0    0    -1  
$EndComp
$Comp
L LED D15
U 1 1 5B295E7B
P 1450 5900
F 0 "D15" H 1450 6000 50  0000 C CNN
F 1 "LED" H 1450 5800 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 5900 50  0001 C CNN
F 3 "" H 1450 5900 50  0001 C CNN
	1    1450 5900
	1    0    0    -1  
$EndComp
$Comp
L LED D16
U 1 1 5B295E81
P 1450 4350
F 0 "D16" H 1450 4450 50  0000 C CNN
F 1 "LED" H 1450 4250 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 4350 50  0001 C CNN
F 3 "" H 1450 4350 50  0001 C CNN
	1    1450 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5B295EA5
P 550 7250
F 0 "#PWR01" H 550 7000 50  0001 C CNN
F 1 "GND" H 550 7100 50  0000 C CNN
F 2 "" H 550 7250 50  0001 C CNN
F 3 "" H 550 7250 50  0001 C CNN
	1    550  7250
	1    0    0    -1  
$EndComp
$Comp
L LED D17
U 1 1 5B296425
P 1450 4050
F 0 "D17" H 1450 4150 50  0000 C CNN
F 1 "LED" H 1450 3950 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 4050 50  0001 C CNN
F 3 "" H 1450 4050 50  0001 C CNN
	1    1450 4050
	1    0    0    -1  
$EndComp
$Comp
L LED D18
U 1 1 5B29642B
P 1450 3750
F 0 "D18" H 1450 3850 50  0000 C CNN
F 1 "LED" H 1450 3650 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 3750 50  0001 C CNN
F 3 "" H 1450 3750 50  0001 C CNN
	1    1450 3750
	1    0    0    -1  
$EndComp
$Comp
L LED D19
U 1 1 5B296431
P 1450 1700
F 0 "D19" H 1450 1800 50  0000 C CNN
F 1 "LED" H 1450 1600 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 1700 50  0001 C CNN
F 3 "" H 1450 1700 50  0001 C CNN
	1    1450 1700
	1    0    0    -1  
$EndComp
$Comp
L LED D20
U 1 1 5B296437
P 1450 1100
F 0 "D20" H 1450 1200 50  0000 C CNN
F 1 "LED" H 1450 1000 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 1100 50  0001 C CNN
F 3 "" H 1450 1100 50  0001 C CNN
	1    1450 1100
	1    0    0    -1  
$EndComp
$Comp
L LED D21
U 1 1 5B29643D
P 1450 1400
F 0 "D21" H 1450 1500 50  0000 C CNN
F 1 "LED" H 1450 1300 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 1450 1400 50  0001 C CNN
F 3 "" H 1450 1400 50  0001 C CNN
	1    1450 1400
	1    0    0    -1  
$EndComp
$Comp
L LED D22
U 1 1 5B296443
P 2150 1650
F 0 "D22" H 2150 1750 50  0000 C CNN
F 1 "LED" H 2150 1550 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 2150 1650 50  0001 C CNN
F 3 "" H 2150 1650 50  0001 C CNN
	1    2150 1650
	1    0    0    -1  
$EndComp
$Comp
L LED D23
U 1 1 5B296449
P 2150 1950
F 0 "D23" H 2150 2050 50  0000 C CNN
F 1 "LED" H 2150 1850 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm_FlatTop" H 2150 1950 50  0001 C CNN
F 3 "" H 2150 1950 50  0001 C CNN
	1    2150 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B296473
P 1300 8800
F 0 "#PWR02" H 1300 8550 50  0001 C CNN
F 1 "GND" H 1300 8650 50  0000 C CNN
F 2 "" H 1300 8800 50  0001 C CNN
F 3 "" H 1300 8800 50  0001 C CNN
	1    1300 8800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 Battery1
U 1 1 5B2976EE
P 10650 3550
F 0 "Battery1" H 10650 3650 50  0000 C CNN
F 1 "Conn_01x02" H 10650 3350 50  0000 C CNN
F 2 "TEST:CR2032 Housing" H 10650 3550 50  0001 C CNN
F 3 "" H 10650 3550 50  0001 C CNN
	1    10650 3550
	1    0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 5B298268
P 10050 3950
F 0 "#PWR03" H 10050 3700 50  0001 C CNN
F 1 "GND" H 10050 3800 50  0000 C CNN
F 2 "" H 10050 3950 50  0001 C CNN
F 3 "" H 10050 3950 50  0001 C CNN
	1    10050 3950
	1    0    0    -1  
$EndComp
Text GLabel 6500 3550 0    39   Input ~ 0
Serial_Clock_AVR
Text GLabel 6500 3650 0    39   Input ~ 0
Reg_Clock_AVR
Text GLabel 6500 3750 0    39   Input ~ 0
Output_Enable_AVR
$Comp
L Conn_01x02 BTN1
U 1 1 5B29D7C7
P 10350 4850
F 0 "BTN1" H 10350 4950 50  0000 C CNN
F 1 "Conn_01x02" H 10350 4650 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 10350 4850 50  0001 C CNN
F 3 "" H 10350 4850 50  0001 C CNN
	1    10350 4850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5B29E6B3
P 9550 3350
F 0 "#PWR04" H 9550 3200 50  0001 C CNN
F 1 "VCC" H 9550 3500 50  0000 C CNN
F 2 "" H 9550 3350 50  0001 C CNN
F 3 "" H 9550 3350 50  0001 C CNN
	1    9550 3350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 5B29E80E
P 6950 4400
F 0 "#PWR05" H 6950 4250 50  0001 C CNN
F 1 "VCC" H 6950 4550 50  0000 C CNN
F 2 "" H 6950 4400 50  0001 C CNN
F 3 "" H 6950 4400 50  0001 C CNN
	1    6950 4400
	1    0    0    -1  
$EndComp
Text GLabel 4300 1950 2    60   Input ~ 0
Serial_Data
Text GLabel 6750 1950 1    60   Input ~ 0
Serial_Data
Text GLabel 6950 1950 1    60   Input ~ 0
Serial_Clock
Text GLabel 7350 1950 1    60   Input ~ 0
Reg_Clock
Text GLabel 7550 1950 1    60   Input ~ 0
Output_Enable
Text GLabel 7150 1950 1    60   Input ~ 0
Master_Reset
Text GLabel 6500 3450 0    39   Input ~ 0
Serial_Data_AVR
Text GLabel 8800 2150 2    39   Input ~ 0
Serial_Clock_AVR
Text GLabel 8800 2050 2    39   Input ~ 0
Serial_Data_AVR
Text GLabel 8800 2350 2    39   Input ~ 0
Reg_Clock_AVR
Text GLabel 8800 2450 2    39   Input ~ 0
Output_Enable_AVR
$Comp
L VCC #PWR06
U 1 1 5B5F1C3E
P 9550 2200
F 0 "#PWR06" H 9550 2050 39  0001 C CNN
F 1 "VCC" H 9550 2350 50  0000 C CNN
F 2 "" H 9550 2200 50  0001 C CNN
F 3 "" H 9550 2200 50  0001 C CNN
	1    9550 2200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 Power1
U 1 1 5B5F5ADC
P 10050 2950
F 0 "Power1" H 10050 3050 50  0000 C CNN
F 1 "Conn_01x02" H 10050 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 10050 2950 50  0001 C CNN
F 3 "" H 10050 2950 50  0001 C CNN
	1    10050 2950
	0    1    -1   0   
$EndComp
Wire Wire Line
	3900 2150 3800 2150
Wire Wire Line
	3800 2250 4600 2250
Wire Wire Line
	4000 2450 3800 2450
Wire Wire Line
	3800 2550 4600 2550
Wire Wire Line
	9400 3450 9950 3450
Wire Wire Line
	9950 3450 9950 3150
Wire Wire Line
	10050 3150 10050 3450
Wire Wire Line
	10050 3450 10450 3450
Wire Wire Line
	9400 3950 10050 3950
Wire Wire Line
	10050 3950 10050 3550
Wire Wire Line
	10050 3550 10450 3550
Wire Wire Line
	6700 3850 6600 3850
Wire Wire Line
	6600 3850 6600 4900
Wire Wire Line
	6600 4900 9800 4900
Wire Wire Line
	9800 4900 9800 4950
Wire Wire Line
	9800 4950 10150 4950
Wire Wire Line
	10150 4850 9850 4850
Wire Wire Line
	9850 4850 9850 3950
Connection ~ 9850 3950
Wire Wire Line
	6700 3950 6650 3950
Wire Wire Line
	6650 3950 6650 4450
Wire Wire Line
	6650 4450 6950 4450
Wire Wire Line
	6950 4450 6950 4400
Wire Wire Line
	9550 3350 9550 3450
Connection ~ 9550 3450
Wire Wire Line
	4300 1950 3800 1950
Wire Wire Line
	6750 1950 6750 2050
Connection ~ 6750 2050
Wire Wire Line
	6950 1950 6950 2150
Connection ~ 6950 2150
Wire Wire Line
	7150 1950 7150 2250
Connection ~ 7150 2250
Wire Wire Line
	7350 1950 7350 2350
Connection ~ 7350 2350
Wire Wire Line
	7550 1950 7550 2450
Connection ~ 7550 2450
Wire Wire Line
	6500 3750 6700 3750
Wire Wire Line
	6500 3650 6700 3650
Wire Wire Line
	6500 3550 6700 3550
Wire Wire Line
	6500 3450 6700 3450
Wire Wire Line
	7150 2250 9550 2250
Wire Wire Line
	9550 2250 9550 2200
Wire Wire Line
	7550 2450 8800 2450
Wire Wire Line
	7350 2350 8800 2350
Wire Wire Line
	6950 2150 8800 2150
Wire Wire Line
	6750 2050 8800 2050
Wire Wire Line
	1700 2600 1600 2600
Wire Wire Line
	1700 2300 1600 2300
Wire Wire Line
	1600 2000 1700 2000
Connection ~ 1700 2300
Wire Wire Line
	1600 1700 1850 1700
Connection ~ 1700 2000
Wire Wire Line
	1600 1400 1700 1400
Connection ~ 1700 1700
Wire Wire Line
	1600 1100 1700 1100
Connection ~ 1700 1400
Wire Wire Line
	2300 1950 2400 1950
Wire Wire Line
	2000 1950 1900 1950
Wire Wire Line
	1900 1950 1900 800 
Wire Wire Line
	1900 800  550  800 
Wire Wire Line
	550  800  550  7250
Wire Wire Line
	1300 1100 550  1100
Connection ~ 550  1100
Wire Wire Line
	1300 1400 550  1400
Connection ~ 550  1400
Wire Wire Line
	1300 1700 550  1700
Connection ~ 550  1700
Wire Wire Line
	1300 2000 550  2000
Connection ~ 550  2000
Wire Wire Line
	1300 2300 550  2300
Connection ~ 550  2300
Wire Wire Line
	1300 2600 550  2600
Connection ~ 550  2600
Wire Wire Line
	1700 1100 1700 1700
Wire Wire Line
	2400 2050 1850 2050
Wire Wire Line
	1850 2050 1850 1700
Wire Wire Line
	1700 2000 1700 2600
Wire Wire Line
	2400 2150 1700 2150
Connection ~ 1700 2150
Wire Wire Line
	1300 2900 550  2900
Connection ~ 550  2900
Wire Wire Line
	1750 3450 1600 3450
Wire Wire Line
	1750 2250 1750 3450
Wire Wire Line
	1750 2900 1600 2900
Wire Wire Line
	1600 3200 1750 3200
Connection ~ 1750 3200
Wire Wire Line
	1300 3200 550  3200
Connection ~ 550  3200
Wire Wire Line
	1300 3450 550  3450
Wire Wire Line
	550  3450 550  3400
Connection ~ 550  3400
Wire Wire Line
	1600 3750 1850 3750
Wire Wire Line
	1750 3750 1750 4350
Wire Wire Line
	1750 4350 1600 4350
Wire Wire Line
	1600 4050 1750 4050
Connection ~ 1750 4050
Wire Wire Line
	1300 3750 550  3750
Connection ~ 550  3750
Wire Wire Line
	1300 4050 550  4050
Connection ~ 550  4050
Wire Wire Line
	1300 4350 550  4350
Connection ~ 550  4350
Wire Wire Line
	1750 2250 2400 2250
Connection ~ 1750 2900
Wire Wire Line
	2400 2350 1850 2350
Wire Wire Line
	1850 2350 1850 3750
Connection ~ 1750 3750
Wire Wire Line
	1300 4700 550  4700
Connection ~ 550  4700
Wire Wire Line
	550  5000 1300 5000
Wire Wire Line
	550  5300 1300 5300
Connection ~ 550  5000
Wire Wire Line
	1600 4700 1950 4700
Wire Wire Line
	1750 4700 1750 5300
Wire Wire Line
	1750 5300 1600 5300
Wire Wire Line
	1600 5000 1750 5000
Connection ~ 1750 5000
Wire Wire Line
	2400 2450 1950 2450
Wire Wire Line
	1950 2450 1950 4700
Connection ~ 1750 4700
Wire Wire Line
	1600 6200 1750 6200
Wire Wire Line
	1750 6200 1750 5600
Wire Wire Line
	1600 5600 2000 5600
Wire Wire Line
	1600 5900 1750 5900
Connection ~ 1750 5900
Wire Wire Line
	550  6200 1300 6200
Connection ~ 550  5300
Wire Wire Line
	1300 5900 550  5900
Connection ~ 550  5900
Wire Wire Line
	1300 5600 550  5600
Connection ~ 550  5600
Wire Wire Line
	2400 2550 2000 2550
Wire Wire Line
	2000 2550 2000 5600
Connection ~ 1750 5600
Wire Wire Line
	550  7150 1300 7150
Connection ~ 550  6200
Wire Wire Line
	1300 6850 550  6850
Connection ~ 550  6850
Wire Wire Line
	1300 6550 550  6550
Wire Wire Line
	550  6550 550  6500
Connection ~ 550  6500
Wire Wire Line
	1600 7150 1750 7150
Wire Wire Line
	1750 7150 1750 6550
Wire Wire Line
	1600 6550 2100 6550
Wire Wire Line
	1600 6850 1750 6850
Connection ~ 1750 6850
Wire Wire Line
	2100 6550 2100 2650
Wire Wire Line
	2100 2650 2400 2650
Connection ~ 1750 6550
Connection ~ 550  7150
Wire Wire Line
	2000 1650 1900 1650
Connection ~ 1900 1650
Wire Wire Line
	2300 1650 2350 1650
Wire Wire Line
	2350 1650 2350 1950
Connection ~ 2350 1950
$EndSCHEMATC
