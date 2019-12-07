EESchema Schematic File Version 4
LIBS:MiniTempleT-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L Device:LED D1
U 1 1 5B1F3806
P 1900 2600
F 0 "D1" H 1900 2700 50  0000 C CNN
F 1 "LED" H 1900 2500 50  0000 C CNN
F 2 "TEST:LED_D5.0mm_BigPads" H 1900 2600 50  0001 C CNN
F 3 "" H 1900 2600 50  0001 C CNN
	1    1900 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5B1F3AD6
P 1900 2900
F 0 "D2" H 1900 3000 50  0000 C CNN
F 1 "LED" H 1900 2800 50  0000 C CNN
F 2 "TEST:LED_D5.0mm_BigPads" H 1900 2900 50  0001 C CNN
F 3 "" H 1900 2900 50  0001 C CNN
	1    1900 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5B1F3AF8
P 1900 3200
F 0 "D3" H 1900 3300 50  0000 C CNN
F 1 "LED" H 1900 3100 50  0000 C CNN
F 2 "TEST:LED_D5.0mm_BigPads" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5B1F3B29
P 1900 3500
F 0 "D4" H 1900 3600 50  0000 C CNN
F 1 "LED" H 1900 3400 50  0000 C CNN
F 2 "TEST:LED_D5.0mm_BigPads" H 1900 3500 50  0001 C CNN
F 3 "" H 1900 3500 50  0001 C CNN
	1    1900 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5B1F3B81
P 1900 3800
F 0 "D5" H 1900 3900 50  0000 C CNN
F 1 "LED" H 1900 3700 50  0000 C CNN
F 2 "TEST:LED_D5.0mm_BigPads" H 1900 3800 50  0001 C CNN
F 3 "" H 1900 3800 50  0001 C CNN
	1    1900 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5B1F3BAC
P 1900 4100
F 0 "D6" H 1900 4200 50  0000 C CNN
F 1 "LED" H 1900 4000 50  0000 C CNN
F 2 "TEST:LED_D5.0mm_BigPads" H 1900 4100 50  0001 C CNN
F 3 "" H 1900 4100 50  0001 C CNN
	1    1900 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 5B1F3BE2
P 1900 4400
F 0 "D7" H 1900 4500 50  0000 C CNN
F 1 "LED" H 1900 4300 50  0000 C CNN
F 2 "TEST:LED_D5.0mm_BigPads" H 1900 4400 50  0001 C CNN
F 3 "" H 1900 4400 50  0001 C CNN
	1    1900 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 5B1F3C23
P 1900 4700
F 0 "D8" H 1900 4800 50  0000 C CNN
F 1 "LED" H 1900 4600 50  0000 C CNN
F 2 "TEST:LED_D5.0mm_BigPads" H 1900 4700 50  0001 C CNN
F 3 "" H 1900 4700 50  0001 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 Shift1
U 1 1 5B1F3CC6
P 3050 3650
F 0 "Shift1" H 3200 4250 50  0000 C CNN
F 1 "74HC595" H 3050 3050 50  0000 C CNN
F 2 "TEST:DIP16-EzSolder" H 3050 3650 50  0001 C CNN
F 3 "" H 3050 3650 50  0001 C CNN
	1    3050 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 2600 2550 2600
Wire Wire Line
	2550 2600 2550 3250
Wire Wire Line
	2550 3250 2650 3250
Wire Wire Line
	2650 3350 2450 3350
Wire Wire Line
	2450 3350 2450 2900
Wire Wire Line
	2450 2900 2050 2900
Wire Wire Line
	2650 3450 2350 3450
Wire Wire Line
	2350 3450 2350 3200
Wire Wire Line
	2350 3200 2050 3200
Wire Wire Line
	2650 3550 2300 3550
Wire Wire Line
	2300 3550 2300 3500
Wire Wire Line
	2300 3500 2050 3500
Wire Wire Line
	2650 3650 2300 3650
Wire Wire Line
	2300 3650 2300 3800
Wire Wire Line
	2300 3800 2050 3800
Wire Wire Line
	2650 3750 2350 3750
Wire Wire Line
	2350 3750 2350 4100
Wire Wire Line
	2350 4100 2050 4100
Wire Wire Line
	2650 3850 2400 3850
Wire Wire Line
	2400 3850 2400 4400
Wire Wire Line
	2400 4400 2050 4400
Wire Wire Line
	2650 3950 2450 3950
Wire Wire Line
	2450 3950 2450 4700
Wire Wire Line
	2450 4700 2050 4700
$Comp
L power:GND #PWR01
U 1 1 5B1F416C
P 1550 4850
F 0 "#PWR01" H 1550 4600 50  0001 C CNN
F 1 "GND" H 1550 4700 50  0000 C CNN
F 2 "" H 1550 4850 50  0001 C CNN
F 3 "" H 1550 4850 50  0001 C CNN
	1    1550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2600 1550 2900
Wire Wire Line
	1550 2600 1750 2600
Wire Wire Line
	1750 2900 1550 2900
Connection ~ 1550 2900
Wire Wire Line
	1750 3200 1550 3200
Connection ~ 1550 3200
Wire Wire Line
	1750 3500 1550 3500
Connection ~ 1550 3500
Wire Wire Line
	1550 3800 1750 3800
Connection ~ 1550 3800
Wire Wire Line
	1750 4100 1550 4100
Connection ~ 1550 4100
Wire Wire Line
	1750 4400 1550 4400
Connection ~ 1550 4400
Wire Wire Line
	1750 4700 1550 4700
Connection ~ 1550 4700
Text GLabel 3550 3450 2    60   Input ~ 0
Serial_Clock
Text GLabel 4250 3550 2    60   Input ~ 0
Master_Reset
Text GLabel 3650 3750 2    60   Input ~ 0
Reg_Clock
Text GLabel 4250 3850 2    60   Input ~ 0
Output_Enable
Wire Wire Line
	3550 3450 3450 3450
Wire Wire Line
	3450 3550 4250 3550
Wire Wire Line
	3650 3750 3450 3750
Wire Wire Line
	3450 3850 4250 3850
$Comp
L conn:Conn_01x04 POWER1
U 1 1 5B1FAED0
P 9500 2900
F 0 "POWER1" V 9700 2900 50  0000 C CNN
F 1 "CONN_01X04" V 9600 2900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9500 2900 50  0001 C CNN
F 3 "" H 9500 2900 50  0001 C CNN
	1    9500 2900
	0    -1   -1   0   
$EndComp
$Comp
L atmel:ATTINY85-20PU Tiny1
U 1 1 5B1FC363
P 7500 3650
F 0 "Tiny1" H 6350 4050 50  0000 C CNN
F 1 "ATTINY85-20PU" H 8500 3250 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 8500 3650 50  0001 C CIN
F 3 "" H 7500 3650 50  0001 C CNN
	1    7500 3650
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_01x02 Battery1
U 1 1 5B2976EE
P 10100 3500
F 0 "Battery1" H 10100 3600 50  0000 C CNN
F 1 "Conn_01x02" H 10100 3300 50  0000 C CNN
F 2 "TEST:CR2032 Housing" H 10100 3500 50  0001 C CNN
F 3 "" H 10100 3500 50  0001 C CNN
	1    10100 3500
	1    0    0    1   
$EndComp
Wire Wire Line
	8850 3400 9000 3400
Wire Wire Line
	9400 3400 9400 3100
Wire Wire Line
	9500 3100 9500 3200
Wire Wire Line
	9500 3400 9800 3400
Wire Wire Line
	9500 3900 9500 3500
Wire Wire Line
	9500 3500 9800 3500
$Comp
L power:GND #PWR07
U 1 1 5B298268
P 9500 3900
F 0 "#PWR07" H 9500 3650 50  0001 C CNN
F 1 "GND" H 9500 3750 50  0000 C CNN
F 2 "" H 9500 3900 50  0001 C CNN
F 3 "" H 9500 3900 50  0001 C CNN
	1    9500 3900
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_01x02 BTN1
U 1 1 5B29D7C7
P 9800 4750
F 0 "BTN1" H 9800 4850 50  0000 C CNN
F 1 "Conn_01x02" H 9800 4550 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 9800 4750 50  0001 C CNN
F 3 "" H 9800 4750 50  0001 C CNN
	1    9800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3800 6050 3800
Wire Wire Line
	6050 3800 6050 4850
$Comp
L power:VCC #PWR06
U 1 1 5B29E6B3
P 9000 3300
F 0 "#PWR06" H 9000 3150 50  0001 C CNN
F 1 "VCC" H 9000 3450 50  0000 C CNN
F 2 "" H 9000 3300 50  0001 C CNN
F 3 "" H 9000 3300 50  0001 C CNN
	1    9000 3300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5B29E80E
P 6400 4350
F 0 "#PWR05" H 6400 4200 50  0001 C CNN
F 1 "VCC" H 6400 4500 50  0000 C CNN
F 2 "" H 6400 4350 50  0001 C CNN
F 3 "" H 6400 4350 50  0001 C CNN
	1    6400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3900 6100 3900
Wire Wire Line
	6100 3900 6100 4400
Wire Wire Line
	6100 4400 6400 4400
Wire Wire Line
	6400 4400 6400 4350
Wire Wire Line
	9000 3300 9000 3400
Connection ~ 9000 3400
Text GLabel 3950 3250 2    60   Input ~ 0
Serial_Data
Wire Wire Line
	3950 3250 3450 3250
Text GLabel 5950 3400 0    39   Input ~ 0
Serial_Data
Text GLabel 5950 3500 0    39   Input ~ 0
Serial_Clock
Text GLabel 5950 3600 0    39   Input ~ 0
Reg_Clock
Text GLabel 5950 3700 0    39   Input ~ 0
Output_Enable
Text GLabel 4450 2900 0    60   Input ~ 0
Master_Reset
Wire Wire Line
	5950 3700 6150 3700
Wire Wire Line
	5950 3600 6150 3600
Wire Wire Line
	5950 3500 6150 3500
Wire Wire Line
	5950 3400 6150 3400
$Comp
L power:VCC #PWR04
U 1 1 5B5F1C3E
P 4600 2850
F 0 "#PWR04" H 4600 2700 39  0001 C CNN
F 1 "VCC" H 4600 3000 50  0000 C CNN
F 2 "" H 4600 2850 50  0001 C CNN
F 3 "" H 4600 2850 50  0001 C CNN
	1    4600 2850
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_01x02 Power1
U 1 1 5B5F5ADC
P 10650 3500
F 0 "Power1" H 10650 3600 50  0000 C CNN
F 1 "Conn_01x02" H 10650 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10650 3500 50  0001 C CNN
F 3 "" H 10650 3500 50  0001 C CNN
	1    10650 3500
	1    0    0    1   
$EndComp
Wire Wire Line
	10450 3400 10400 3400
Wire Wire Line
	10400 3400 10400 3200
Wire Wire Line
	10400 3200 9800 3200
Wire Wire Line
	9800 3200 9800 3400
Connection ~ 9800 3400
Wire Wire Line
	10450 3500 10400 3500
Wire Wire Line
	10400 3500 10400 3650
Wire Wire Line
	10400 3650 9800 3650
Wire Wire Line
	9800 3650 9800 3500
Connection ~ 9800 3500
Wire Wire Line
	1550 2900 1550 3200
Wire Wire Line
	1550 3200 1550 3500
Wire Wire Line
	1550 3500 1550 3800
Wire Wire Line
	1550 3800 1550 4100
Wire Wire Line
	1550 4100 1550 4400
Wire Wire Line
	1550 4400 1550 4700
Wire Wire Line
	1550 4700 1550 4850
Wire Wire Line
	9000 3400 9400 3400
Wire Wire Line
	9800 3400 9900 3400
Wire Wire Line
	9800 3500 9900 3500
$Comp
L power:VCC #PWR02
U 1 1 5C5D1657
P 3050 3000
F 0 "#PWR02" H 3050 2850 39  0001 C CNN
F 1 "VCC" H 3050 3150 50  0000 C CNN
F 2 "" H 3050 3000 50  0001 C CNN
F 3 "" H 3050 3000 50  0001 C CNN
	1    3050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3050 3050 3000
$Comp
L power:GND #PWR03
U 1 1 5C651E76
P 3050 4400
F 0 "#PWR03" H 3050 4150 50  0001 C CNN
F 1 "GND" H 3050 4250 50  0000 C CNN
F 2 "" H 3050 4400 50  0001 C CNN
F 3 "" H 3050 4400 50  0001 C CNN
	1    3050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4400 3050 4350
Wire Wire Line
	9700 3200 9600 3200
Wire Wire Line
	9700 3100 9700 3200
Connection ~ 9500 3200
Wire Wire Line
	9500 3200 9500 3400
Wire Wire Line
	9600 3100 9600 3200
Connection ~ 9600 3200
Wire Wire Line
	9600 3200 9500 3200
Wire Wire Line
	4450 2900 4600 2900
Wire Wire Line
	4600 2900 4600 2850
Text GLabel 2750 4800 2    60   Input ~ 0
Out1
Wire Wire Line
	2750 4800 2550 4800
Wire Wire Line
	2550 4800 2550 4150
Wire Wire Line
	2550 4150 2650 4150
Wire Notes Line
	1300 5250 5200 5250
Wire Notes Line
	5200 5250 5200 2350
Wire Notes Line
	5200 2350 1300 2350
Wire Notes Line
	1300 2350 1300 5250
Text Notes 4250 5050 0    118  ~ 0
Repeat x4\n
Text Notes 3400 4800 0    118  ~ 0
Shift Register Block
Connection ~ 9500 3900
Wire Wire Line
	6050 4850 9600 4850
Wire Wire Line
	9600 4750 9400 4750
Wire Wire Line
	9400 4750 9400 3900
Wire Wire Line
	8850 3900 9400 3900
Connection ~ 9400 3900
Wire Wire Line
	9400 3900 9500 3900
Wire Notes Line
	5400 2350 11000 2350
Wire Notes Line
	11000 2350 11000 5250
Wire Notes Line
	11000 5250 5400 5250
Wire Notes Line
	5400 5250 5400 2350
Text Notes 5500 5150 0    118  ~ 0
ATtiny85 & Battery
Text Notes 7400 7500 0    79   ~ 0
Tiny T
Text Notes 7050 7100 0    157  Italic 31
Experience Temple Day\nTiny Ts
Text Notes 8150 7650 0    59   ~ 0
2/16/19
Text Notes 10600 7650 0    59   ~ 0
1.4
Text Notes 9650 7500 0    59   Italic 0
Reed Esquirell www.esquiree.com
$Sheet
S 3400 5000 500  150 
U 5D73A71F
F0 "74HC595" 59
F1 "shift.sch" 59
$EndSheet
$EndSCHEMATC
