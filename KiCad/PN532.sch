EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PN532 NFC Board"
Date "2021-06-01"
Rev "7"
Comp "Adrian Kennard Andrews & Arnold Ltd"
Comment1 "www.me.uk"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RevK:PN532 U1
U 1 1 60753706
P 6450 5500
F 0 "U1" H 7244 6996 50  0000 L CNN
F 1 "PN532" H 7244 6905 50  0000 L CNN
F 2 "RevK:QFN-40-1EP_6x6mm_P0.5mm_EP4.6x4.6mm" H 6450 5500 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/771-PN5321A3HN10" H 6450 5500 50  0001 C CNN
	1    6450 5500
	1    0    0    -1  
$EndComp
$Comp
L RevK:Cx2 C1
U 1 1 60756CAE
P 2550 3850
F 0 "C1" H 2350 3850 50  0000 L CNN
F 1 "160pF" H 2200 3750 50  0000 L CNN
F 2 "RevK:Cx2_0603" H 2588 3700 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/80-C0603C151F1HACTU" H 2550 3850 50  0001 C CNN
	1    2550 3850
	1    0    0    -1  
$EndComp
$Comp
L RevK:Cx2 C2
U 1 1 60757E92
P 2550 4250
F 0 "C2" H 2350 4250 50  0000 L CNN
F 1 "160pF" H 2200 4350 50  0000 L CNN
F 2 "RevK:Cx2_0603" H 2588 4100 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/80-C0603C151F1HACTU" H 2550 4250 50  0001 C CNN
	1    2550 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60758CE7
P 3000 3650
F 0 "C3" V 2748 3650 50  0000 C CNN
F 1 "22pF" V 2839 3650 50  0000 C CNN
F 2 "RevK:C_0603" H 3038 3500 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/791-0603N220F500CT" H 3000 3650 50  0001 C CNN
	1    3000 3650
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6075A7AA
P 3350 3850
F 0 "C5" H 3250 3800 50  0000 R CNN
F 1 "220pF" H 3250 3900 50  0000 R CNN
F 2 "RevK:C_0603" H 3388 3700 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/77-VJ0603A221GXAPBC" H 3350 3850 50  0001 C CNN
	1    3350 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 6075B113
P 3350 4250
F 0 "C6" H 3450 4300 50  0000 L CNN
F 1 "220pF" H 3450 4200 50  0000 L CNN
F 2 "RevK:C_0603" H 3388 4100 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/77-VJ0603A221GXAPBC" H 3350 4250 50  0001 C CNN
	1    3350 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 6075BC21
P 3900 3650
F 0 "L1" V 3719 3650 50  0000 C CNN
F 1 "560nH" V 3810 3650 50  0000 C CNN
F 2 "RevK:L_1206_1008" H 3900 3650 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/81-LQW2UASR56G00L" H 3900 3650 50  0001 C CNN
	1    3900 3650
	0    1    1    0   
$EndComp
$Comp
L Device:L L2
U 1 1 6075C317
P 3900 4450
F 0 "L2" V 4090 4450 50  0000 C CNN
F 1 "560nH" V 3999 4450 50  0000 C CNN
F 2 "RevK:L_1206_1008" H 3900 4450 50  0001 C CNN
F 3 "" H 3900 4450 50  0001 C CNN
	1    3900 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C8
U 1 1 6075C646
P 4400 5000
F 0 "C8" V 4600 5000 50  0000 C CNN
F 1 "1nF" V 4239 5000 50  0000 C CNN
F 2 "RevK:C_0603" H 4438 4850 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/77-VJ0603A102GXAPBC" H 4400 5000 50  0001 C CNN
	1    4400 5000
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 6075D8AC
P 4650 4650
F 0 "C10" V 4398 4650 50  0000 C CNN
F 1 "0.1uF" V 4489 4650 50  0000 C CNN
F 2 "RevK:C_0603" H 4688 4500 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/80-C0603C104M4R" H 4650 4650 50  0001 C CNN
	1    4650 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6075DE03
P 4000 5000
F 0 "R3" V 4200 5000 50  0000 C CNN
F 1 "2K7" V 3884 5000 50  0000 C CNN
F 2 "RevK:R_0603" V 3930 5000 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/603-RC0603FR-102K7L" H 4000 5000 50  0001 C CNN
	1    4000 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 6075E871
P 5050 4850
F 0 "R4" H 4980 4804 50  0000 R CNN
F 1 "1K" H 4980 4895 50  0000 R CNN
F 2 "RevK:R_0603" V 4980 4850 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/71-CRCW06031K00FKEAC" H 5050 4850 50  0001 C CNN
	1    5050 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 6075F2FD
P 4700 3200
F 0 "C9" H 4815 3246 50  0000 L CNN
F 1 "4.7uF" H 4815 3155 50  0000 L CNN
F 2 "RevK:C_0603" H 4738 3050 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/187-CL03A475MQ5C65C" H 4700 3200 50  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6075FD74
P 4350 3200
F 0 "C7" H 4100 3250 50  0000 L CNN
F 1 "0.1uF" H 4000 3150 50  0000 L CNN
F 2 "RevK:C_0603" H 4388 3050 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/80-C0603C104M4R" H 4350 3200 50  0001 C CNN
	1    4350 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 607608E5
P 5550 2800
F 0 "C14" H 5665 2846 50  0000 L CNN
F 1 "0.1uF" H 5665 2755 50  0000 L CNN
F 2 "RevK:C_0603" H 5588 2650 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/80-C0603C104M4R" H 5550 2800 50  0001 C CNN
	1    5550 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 607617F2
P 4850 2150
F 0 "C12" H 4550 2200 50  0000 L CNN
F 1 "0.1uF" H 4450 2100 50  0000 L CNN
F 2 "RevK:C_0603" H 4888 2000 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/80-C0603C104M4R" H 4850 2150 50  0001 C CNN
	1    4850 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 60761B18
P 5200 2150
F 0 "C13" H 5315 2196 50  0000 L CNN
F 1 "4.7uF" H 5315 2105 50  0000 L CNN
F 2 "RevK:C_0603" H 5238 2000 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/187-CL03A475MQ5C65C" H 5200 2150 50  0001 C CNN
	1    5200 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60762055
P 5950 1450
F 0 "R5" V 5743 1450 50  0000 C CNN
F 1 "10K" V 5834 1450 50  0000 C CNN
F 2 "RevK:R_0603" V 5880 1450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/652-CR0603FX-1002ELF" H 5950 1450 50  0001 C CNN
	1    5950 1450
	0    1    1    0   
$EndComp
$Comp
L Device:C C17
U 1 1 607627AA
P 7500 4500
F 0 "C17" H 7615 4546 50  0000 L CNN
F 1 "0.1uF" H 7615 4455 50  0000 L CNN
F 2 "RevK:C_0603" H 7538 4350 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/80-C0603C104M4R" H 7500 4500 50  0001 C CNN
	1    7500 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 60762D5E
P 6100 6050
F 0 "C15" H 5800 6100 50  0000 L CNN
F 1 "22pF" H 5800 6000 50  0000 L CNN
F 2 "RevK:C_0603" H 6138 5900 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/791-0603N220F500CT" H 6100 6050 50  0001 C CNN
	1    6100 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 6076408B
P 6400 6050
F 0 "C16" H 6515 6096 50  0000 L CNN
F 1 "22pF" H 6515 6005 50  0000 L CNN
F 2 "RevK:C_0603" H 6438 5900 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/791-0603N220F500CT" H 6400 6050 50  0001 C CNN
	1    6400 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3650 2250 3650
Wire Wire Line
	1950 4450 2250 4450
$Comp
L power:GND #PWR01
U 1 1 6076AF1E
P 3700 4050
F 0 "#PWR01" H 3700 3800 50  0001 C CNN
F 1 "GND" V 3705 3922 50  0000 R CNN
F 2 "" H 3700 4050 50  0001 C CNN
F 3 "" H 3700 4050 50  0001 C CNN
	1    3700 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 3650 3750 3650
Connection ~ 3350 3650
Wire Wire Line
	4500 3950 5450 3950
Wire Wire Line
	4500 4150 5450 4150
Wire Wire Line
	4150 5000 4250 5000
Wire Wire Line
	4550 5000 5050 5000
Wire Wire Line
	5050 5000 5250 5000
Connection ~ 5050 5000
$Comp
L power:GND #PWR02
U 1 1 6078659F
P 4500 4650
F 0 "#PWR02" H 4500 4400 50  0001 C CNN
F 1 "GND" V 4505 4522 50  0000 R CNN
F 2 "" H 4500 4650 50  0001 C CNN
F 3 "" H 4500 4650 50  0001 C CNN
	1    4500 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3350 4700 3350
Wire Wire Line
	4350 3050 4700 3050
Wire Wire Line
	5450 4050 5050 4050
Wire Wire Line
	5050 4050 5050 3050
Connection ~ 4700 3050
$Comp
L power:+3.3V #PWR03
U 1 1 607899AD
P 4700 3050
F 0 "#PWR03" H 4700 2900 50  0001 C CNN
F 1 "+3.3V" H 4715 3223 50  0000 C CNN
F 2 "" H 4700 3050 50  0001 C CNN
F 3 "" H 4700 3050 50  0001 C CNN
	1    4700 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6078C0C2
P 4700 3350
F 0 "#PWR04" H 4700 3100 50  0001 C CNN
F 1 "GND" H 4705 3177 50  0000 C CNN
F 2 "" H 4700 3350 50  0001 C CNN
F 3 "" H 4700 3350 50  0001 C CNN
	1    4700 3350
	1    0    0    -1  
$EndComp
Connection ~ 4700 3350
Wire Wire Line
	5450 4350 4900 4350
$Comp
L Device:C C11
U 1 1 6078DE67
P 4900 5600
F 0 "C11" H 5015 5646 50  0000 L CNN
F 1 "0.1uF" H 5015 5555 50  0000 L CNN
F 2 "RevK:C_0603" H 4938 5450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/80-C0603C104M4R" H 4900 5600 50  0001 C CNN
	1    4900 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6078EE36
P 4900 5750
F 0 "#PWR06" H 4900 5500 50  0001 C CNN
F 1 "GND" H 4905 5577 50  0000 C CNN
F 2 "" H 4900 5750 50  0001 C CNN
F 3 "" H 4900 5750 50  0001 C CNN
	1    4900 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 6078F22E
P 4900 5350
F 0 "#PWR05" H 4900 5200 50  0001 C CNN
F 1 "+3.3V" V 4915 5478 50  0000 L CNN
F 2 "" H 4900 5350 50  0001 C CNN
F 3 "" H 4900 5350 50  0001 C CNN
	1    4900 5350
	0    -1   -1   0   
$EndComp
Connection ~ 4900 5350
Wire Wire Line
	4900 5350 4900 5450
Wire Wire Line
	5450 4250 5300 4250
Wire Wire Line
	5300 4250 5300 3850
Wire Wire Line
	5300 3850 5450 3850
Wire Wire Line
	5300 3850 5300 3650
Wire Wire Line
	5300 3650 5450 3650
Connection ~ 5300 3850
Wire Wire Line
	5300 3650 5300 3500
Wire Wire Line
	5300 3500 5450 3500
Connection ~ 5300 3650
Wire Wire Line
	5300 3500 5300 3350
Connection ~ 5300 3500
$Comp
L power:GND #PWR09
U 1 1 607933E2
P 5300 3350
F 0 "#PWR09" H 5300 3100 50  0001 C CNN
F 1 "GND" H 5305 3177 50  0000 C CNN
F 2 "" H 5300 3350 50  0001 C CNN
F 3 "" H 5300 3350 50  0001 C CNN
	1    5300 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60793EBB
P 5550 2950
F 0 "#PWR011" H 5550 2700 50  0001 C CNN
F 1 "GND" H 5555 2777 50  0000 C CNN
F 2 "" H 5550 2950 50  0001 C CNN
F 3 "" H 5550 2950 50  0001 C CNN
	1    5550 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 60796710
P 5550 2650
F 0 "#PWR010" H 5550 2500 50  0001 C CNN
F 1 "+5V" H 5565 2823 50  0000 C CNN
F 2 "" H 5550 2650 50  0001 C CNN
F 3 "" H 5550 2650 50  0001 C CNN
	1    5550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2650 5900 3150
Connection ~ 5550 2650
Wire Wire Line
	5200 2000 4850 2000
Wire Wire Line
	5200 2300 4850 2300
$Comp
L power:GND #PWR08
U 1 1 6079CC9E
P 4850 2300
F 0 "#PWR08" H 4850 2050 50  0001 C CNN
F 1 "GND" H 4855 2127 50  0000 C CNN
F 2 "" H 4850 2300 50  0001 C CNN
F 3 "" H 4850 2300 50  0001 C CNN
	1    4850 2300
	1    0    0    -1  
$EndComp
Connection ~ 4850 2300
$Comp
L power:+3.3V #PWR07
U 1 1 6079D14F
P 4850 2000
F 0 "#PWR07" H 4850 1850 50  0001 C CNN
F 1 "+3.3V" H 4865 2173 50  0000 C CNN
F 2 "" H 4850 2000 50  0001 C CNN
F 3 "" H 4850 2000 50  0001 C CNN
	1    4850 2000
	1    0    0    -1  
$EndComp
Connection ~ 4850 2000
Wire Wire Line
	6000 3150 6000 2000
Wire Wire Line
	7200 4350 7500 4350
$Comp
L power:GND #PWR020
U 1 1 607A6512
P 7500 4650
F 0 "#PWR020" H 7500 4400 50  0001 C CNN
F 1 "GND" H 7505 4477 50  0000 C CNN
F 2 "" H 7500 4650 50  0001 C CNN
F 3 "" H 7500 4650 50  0001 C CNN
	1    7500 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 607A693F
P 6600 4950
F 0 "#PWR018" H 6600 4700 50  0001 C CNN
F 1 "GND" H 6605 4777 50  0000 C CNN
F 2 "" H 6600 4950 50  0001 C CNN
F 3 "" H 6600 4950 50  0001 C CNN
	1    6600 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 607A6DFA
P 5900 4950
F 0 "#PWR013" H 5900 4700 50  0001 C CNN
F 1 "GND" H 5905 4777 50  0000 C CNN
F 2 "" H 5900 4950 50  0001 C CNN
F 3 "" H 5900 4950 50  0001 C CNN
	1    5900 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 607ABABA
P 6250 6350
F 0 "#PWR014" H 6250 6100 50  0001 C CNN
F 1 "GND" H 6255 6177 50  0000 C CNN
F 2 "" H 6250 6350 50  0001 C CNN
F 3 "" H 6250 6350 50  0001 C CNN
	1    6250 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6200 6100 6350
Wire Wire Line
	6100 6350 6250 6350
Wire Wire Line
	6400 6200 6400 6350
Wire Wire Line
	6400 6350 6250 6350
Connection ~ 6250 6350
Wire Wire Line
	6200 5400 6100 5400
Wire Wire Line
	6200 4950 6200 5400
Wire Wire Line
	6300 5400 6400 5400
Wire Wire Line
	6300 4950 6300 5400
$Comp
L Device:C C4
U 1 1 60759861
P 3000 4450
F 0 "C4" V 2748 4450 50  0000 C CNN
F 1 "22pF" V 2839 4450 50  0000 C CNN
F 2 "RevK:C_0603" H 3038 4300 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/791-0603N220F500CT" H 3000 4450 50  0001 C CNN
	1    3000 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 3050 5050 3050
Wire Wire Line
	5550 2650 5900 2650
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 607D09FB
P 9750 2450
F 0 "J2" H 9858 2731 50  0000 C CNN
F 1 "Header" H 9858 2640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9750 2450 50  0001 C CNN
F 3 "~" H 9750 2450 50  0001 C CNN
	1    9750 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 607D486C
P 9750 3100
F 0 "J3" H 9858 3381 50  0000 C CNN
F 1 "SPOX" H 9858 3290 50  0000 C CNN
F 2 "RevK:Molex_MiniSPOX_H4RA" H 9750 3100 50  0001 C CNN
F 3 "" H 9750 3100 50  0001 C CNN
	1    9750 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 607D87E0
P 9950 2350
F 0 "#PWR025" H 9950 2100 50  0001 C CNN
F 1 "GND" V 9955 2222 50  0000 R CNN
F 2 "" H 9950 2350 50  0001 C CNN
F 3 "" H 9950 2350 50  0001 C CNN
	1    9950 2350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 607D93E3
P 9950 3000
F 0 "#PWR027" H 9950 2750 50  0001 C CNN
F 1 "GND" V 9955 2872 50  0000 R CNN
F 2 "" H 9950 3000 50  0001 C CNN
F 3 "" H 9950 3000 50  0001 C CNN
	1    9950 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 607D9EEA
P 9950 2450
F 0 "#PWR026" H 9950 2300 50  0001 C CNN
F 1 "+5V" V 9965 2578 50  0000 L CNN
F 2 "" H 9950 2450 50  0001 C CNN
F 3 "" H 9950 2450 50  0001 C CNN
	1    9950 2450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 607DA4EA
P 9950 3100
F 0 "#PWR028" H 9950 2950 50  0001 C CNN
F 1 "+5V" V 9965 3228 50  0000 L CNN
F 2 "" H 9950 3100 50  0001 C CNN
F 3 "" H 9950 3100 50  0001 C CNN
	1    9950 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 4600 9850 4600
Wire Wire Line
	9200 4600 9200 3850
Wire Wire Line
	9200 3850 7200 3850
Wire Wire Line
	7200 3950 9100 3950
$Comp
L Device:LED D1
U 1 1 607E9287
P 7850 1200
F 0 "D1" H 7843 1417 50  0000 C CNN
F 1 "G" H 7843 1326 50  0000 C CNN
F 2 "RevK:LED_Reverse" H 7850 1200 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/604-APTD1608LCGCK" H 7850 1200 50  0001 C CNN
	1    7850 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 607EAF87
P 7850 1800
F 0 "D2" H 7843 2017 50  0000 C CNN
F 1 "A" H 7843 1926 50  0000 C CNN
F 2 "RevK:LED_Reverse" H 7850 1800 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/604-APHD1608LSYCK" H 7850 1800 50  0001 C CNN
	1    7850 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 607EB52D
P 7850 2450
F 0 "D3" H 7843 2667 50  0000 C CNN
F 1 "R" H 7843 2576 50  0000 C CNN
F 2 "RevK:LED_Reverse" H 7850 2450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/604-APHD1608LSURCK" H 7850 2450 50  0001 C CNN
	1    7850 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 607EBC51
P 8400 1200
F 0 "R7" V 8193 1200 50  0000 C CNN
F 1 "470R" V 8284 1200 50  0000 C CNN
F 2 "RevK:R_0603" V 8330 1200 50  0001 C CNN
F 3 "" H 8400 1200 50  0001 C CNN
	1    8400 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 607ED1A6
P 8400 1800
F 0 "R8" V 8193 1800 50  0000 C CNN
F 1 "680R" V 8284 1800 50  0000 C CNN
F 2 "RevK:R_0603" V 8330 1800 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/603-RC0603JR-07680RL" H 8400 1800 50  0001 C CNN
	1    8400 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 607ED794
P 8400 2450
F 0 "R9" V 8193 2450 50  0000 C CNN
F 1 "680R" V 8284 2450 50  0000 C CNN
F 2 "RevK:R_0603" V 8330 2450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/603-RC0603JR-07680RL" H 8400 2450 50  0001 C CNN
	1    8400 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 1450 6100 3150
Wire Wire Line
	10450 4700 9850 4700
NoConn ~ 6200 3150
NoConn ~ 6300 3150
NoConn ~ 6400 3150
NoConn ~ 7200 4050
NoConn ~ 6000 4950
NoConn ~ 6100 4950
NoConn ~ 5450 3750
NoConn ~ -450 1250
$Comp
L power:+3.3V #PWR019
U 1 1 60847AD6
P 7500 4350
F 0 "#PWR019" H 7500 4200 50  0001 C CNN
F 1 "+3.3V" V 7515 4478 50  0000 L CNN
F 2 "" H 7500 4350 50  0001 C CNN
F 3 "" H 7500 4350 50  0001 C CNN
	1    7500 4350
	0    1    1    0   
$EndComp
Connection ~ 7500 4350
$Comp
L power:GND #PWR016
U 1 1 60832E77
P 6400 4950
F 0 "#PWR016" H 6400 4700 50  0001 C CNN
F 1 "GND" H 6405 4777 50  0000 C CNN
F 2 "" H 6400 4950 50  0001 C CNN
F 3 "" H 6400 4950 50  0001 C CNN
	1    6400 4950
	1    0    0    -1  
$EndComp
NoConn ~ 7200 3750
NoConn ~ 7200 4150
$Comp
L Switch:SW_Push SW1
U 1 1 6076E91E
P 8250 800
F 0 "SW1" H 8250 1085 50  0000 C CNN
F 1 "TAMPER" H 8250 994 50  0000 C CNN
F 2 "RevK:SW_PUSH_6mm_PTH_SMD" H 8250 1000 50  0001 C CNN
F 3 "~" H 8250 1000 50  0001 C CNN
	1    8250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 800  8850 800 
Wire Wire Line
	9950 2550 10350 2550
$Comp
L Mechanical:MountingHole H1
U 1 1 607A1F8B
P 9600 1400
F 0 "H1" H 9700 1446 50  0001 L CNN
F 1 "MountingHole" H 9700 1355 50  0000 L CNN
F 2 "RevK:ISO7380-M3-NoPad" H 9600 1400 50  0001 C CNN
F 3 "~" H 9600 1400 50  0001 C CNN
	1    9600 1400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 607A2C4F
P 9600 1650
F 0 "H2" H 9700 1696 50  0001 L CNN
F 1 "MountingHole" H 9700 1605 50  0000 L CNN
F 2 "RevK:ISO7380-M3-NoPad" H 9600 1650 50  0001 C CNN
F 3 "~" H 9600 1650 50  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 6075CAF9
P 6250 5700
F 0 "Y1" H 6444 5746 50  0000 L CNN
F 1 "27.12MHz" H 6444 5655 50  0000 L CNN
F 2 "RevK:Crystal-3.4x2.7" H 6250 5700 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/710-830053099" H 6250 5700 50  0001 C CNN
	1    6250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5400 6100 5700
Wire Wire Line
	6400 5400 6400 5700
Connection ~ 6100 5700
Wire Wire Line
	6100 5700 6100 5900
Connection ~ 6400 5700
Wire Wire Line
	6400 5700 6400 5900
Wire Wire Line
	6250 5900 6250 6350
Wire Wire Line
	6250 5500 5750 5500
Wire Wire Line
	5750 5500 5750 6350
Wire Wire Line
	5750 6350 6100 6350
Connection ~ 6100 6350
Wire Wire Line
	9950 2650 10450 2650
Wire Wire Line
	9950 3200 10350 3200
Wire Wire Line
	9950 3300 10450 3300
Text Notes 9550 2650 0    50   ~ 0
GND\nVCC\nTX\nRX
Text Notes 9550 3250 0    50   ~ 0
GND\nVCC\nTX\nRX
NoConn ~ 7200 4450
NoConn ~ 7200 4550
NoConn ~ 6800 4950
Wire Wire Line
	6800 3000 6800 3150
Wire Wire Line
	8750 2950 6700 2950
Wire Wire Line
	6700 2950 6700 3150
Wire Wire Line
	6600 2900 6600 3150
Wire Wire Line
	8700 2450 8700 2900
$Comp
L Device:R R10
U 1 1 6080249E
P 9000 800
F 0 "R10" V 8793 800 50  0000 C CNN
F 1 "10K" V 8884 800 50  0000 C CNN
F 2 "RevK:R_0603" V 8930 800 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/652-CR0603FX-1002ELF" H 9000 800 50  0001 C CNN
	1    9000 800 
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 60805672
P 9150 800
F 0 "#PWR023" H 9150 650 50  0001 C CNN
F 1 "+3.3V" V 9165 928 50  0000 L CNN
F 2 "" H 9150 800 50  0001 C CNN
F 3 "" H 9150 800 50  0001 C CNN
	1    9150 800 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 60807251
P 5800 1450
F 0 "#PWR012" H 5800 1300 50  0001 C CNN
F 1 "+5V" V 5815 1578 50  0000 L CNN
F 2 "" H 5800 1450 50  0001 C CNN
F 3 "" H 5800 1450 50  0001 C CNN
	1    5800 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 6080809B
P 6250 1450
F 0 "R6" V 6043 1450 50  0000 C CNN
F 1 "20K" V 6134 1450 50  0000 C CNN
F 2 "RevK:R_0603" V 6180 1450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/603-RC0603JR-1020KL" H 6250 1450 50  0001 C CNN
	1    6250 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6080B375
P 6400 1450
F 0 "#PWR015" H 6400 1200 50  0001 C CNN
F 1 "GND" V 6405 1322 50  0000 R CNN
F 2 "" H 6400 1450 50  0001 C CNN
F 3 "" H 6400 1450 50  0001 C CNN
	1    6400 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 607F6C62
P 2400 3650
F 0 "R1" V 2193 3650 50  0000 C CNN
F 1 "0R" V 2284 3650 50  0000 C CNN
F 2 "RevK:R_0603" V 2330 3650 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/652-CR0603-J-000ELF" H 2400 3650 50  0001 C CNN
	1    2400 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 607F7DFF
P 2400 4450
F 0 "R2" V 2500 4450 50  0000 C CNN
F 1 "0R" V 2600 4450 50  0000 C CNN
F 2 "RevK:R_0603" V 2330 4450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/652-CR0603-J-000ELF" H 2400 4450 50  0001 C CNN
	1    2400 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4450 2550 4450
Connection ~ 2650 4450
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 60841004
P 8350 5900
F 0 "J1" H 8458 6081 50  0000 C CNN
F 1 "Bell" H 8458 5990 50  0000 C CNN
F 2 "RevK:PinHeader_1x02_P2.54mm_Vertical" H 8350 5900 50  0001 C CNN
F 3 "~" H 8350 5900 50  0001 C CNN
	1    8350 5900
	1    0    0    -1  
$EndComp
$Comp
L RevK:QR U2
U 1 1 60859564
P 11075 6825
F 0 "U2" H 11075 6775 50  0001 C CNN
F 1 "QR" H 11075 6775 50  0001 C CNN
F 2 "RevK:QR-PN532" H 11075 6825 50  0001 C CNN
F 3 "" H 11075 6825 50  0001 C CNN
	1    11075 6825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 6086E7E9
P 9850 6000
F 0 "R11" V 9643 6000 50  0000 C CNN
F 1 "10K" V 9734 6000 50  0000 C CNN
F 2 "RevK:R_0603" V 9780 6000 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/652-CR0603FX-1002ELF" H 9850 6000 50  0001 C CNN
	1    9850 6000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR024
U 1 1 60873918
P 10000 6000
F 0 "#PWR024" H 10000 5850 50  0001 C CNN
F 1 "+3.3V" V 10015 6128 50  0000 L CNN
F 2 "" H 10000 6000 50  0001 C CNN
F 3 "" H 10000 6000 50  0001 C CNN
	1    10000 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 608748A2
P 8550 5900
F 0 "#PWR022" H 8550 5650 50  0001 C CNN
F 1 "GND" V 8555 5772 50  0000 R CNN
F 2 "" H 8550 5900 50  0001 C CNN
F 3 "" H 8550 5900 50  0001 C CNN
	1    8550 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 3950 9100 4700
$Comp
L RevK:PN532-Antenna A1
U 1 1 6074E4EC
P 1350 4050
F 0 "A1" H 1408 4715 50  0000 C CNN
F 1 "PN532-Antenna" H 1408 4624 50  0000 C CNN
F 2 "RevK:PN532-Antenna4" H 1350 4050 50  0001 C CNN
F 3 "" H 1350 4050 50  0001 C CNN
	1    1350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3650 4300 3650
Connection ~ 8850 800 
Connection ~ 6100 1450
Wire Wire Line
	6500 4950 6500 5350
Wire Wire Line
	6500 5350 7050 5350
Wire Wire Line
	7050 5350 7050 5850
$Comp
L power:GND #PWR0101
U 1 1 60937436
P 7600 6050
F 0 "#PWR0101" H 7600 5800 50  0001 C CNN
F 1 "GND" H 7605 5877 50  0000 C CNN
F 2 "" H 7600 6050 50  0001 C CNN
F 3 "" H 7600 6050 50  0001 C CNN
	1    7600 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 60937B3C
P 7600 5650
F 0 "#PWR0102" H 7600 5500 50  0001 C CNN
F 1 "+3.3V" H 7615 5823 50  0000 C CNN
F 2 "" H 7600 5650 50  0001 C CNN
F 3 "" H 7600 5650 50  0001 C CNN
	1    7600 5650
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 609405DB
P 7600 5850
F 0 "JP1" V 7646 5918 50  0000 L CNN
F 1 "I1" V 7555 5918 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_RoundedPad1.0x1.5mm_NumberLabels" H 7600 5850 50  0001 C CNN
F 3 "~" H 7600 5850 50  0001 C CNN
	1    7600 5850
	0    1    -1   0   
$EndComp
Wire Wire Line
	7050 5850 7450 5850
Wire Wire Line
	9350 6000 9700 6000
NoConn ~ 6700 4950
Wire Wire Line
	9700 5600 9700 6000
Connection ~ 9700 6000
Wire Wire Line
	7200 3650 8200 3650
Wire Wire Line
	8200 3650 8200 4950
NoConn ~ 6500 3150
$Comp
L Device:R R12
U 1 1 6097C1FF
P 9700 4700
F 0 "R12" V 9900 4700 50  0000 C CNN
F 1 "100R" V 9800 4700 50  0000 C CNN
F 2 "RevK:R_0603" V 9630 4700 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/603-RC0603JR-07100RL" H 9700 4700 50  0001 C CNN
	1    9700 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4700 9250 4700
Connection ~ 4300 3650
Wire Wire Line
	4300 3650 4500 3650
$Comp
L Device:C C18
U 1 1 60993DC2
P 5650 2150
F 0 "C18" H 5765 2196 50  0000 L CNN
F 1 "4.7uF" H 5765 2105 50  0000 L CNN
F 2 "RevK:C_0603" H 5688 2000 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/187-CL03A475MQ5C65C" H 5650 2150 50  0001 C CNN
	1    5650 2150
	1    0    0    -1  
$EndComp
Connection ~ 5650 2000
Wire Wire Line
	5200 2300 5650 2300
Connection ~ 5200 2300
Wire Wire Line
	5200 2000 5650 2000
Connection ~ 5200 2000
Wire Wire Line
	5650 2000 6000 2000
$Comp
L Device:R R13
U 1 1 609A96B9
P 9700 4600
F 0 "R13" V 9500 4600 50  0000 C CNN
F 1 "100R" V 9600 4600 50  0000 C CNN
F 2 "RevK:R_0603" V 9630 4600 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/603-RC0603JR-07100RL" H 9700 4600 50  0001 C CNN
	1    9700 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4600 9200 4600
Wire Wire Line
	2550 3650 2650 3650
Connection ~ 2650 3650
Wire Wire Line
	4300 3650 4300 3850
Wire Wire Line
	4500 3650 4500 3950
Wire Wire Line
	5450 4450 5050 4450
Wire Wire Line
	5450 4550 5250 4550
Wire Wire Line
	5250 4550 5250 5000
Wire Wire Line
	2650 4050 3350 4050
Wire Wire Line
	1950 4050 2650 4050
Connection ~ 2650 4050
Connection ~ 3350 4050
Wire Wire Line
	3350 4050 3700 4050
Wire Wire Line
	4500 4150 4500 4450
Wire Wire Line
	3350 3650 3350 3700
Wire Wire Line
	3350 4000 3350 4050
Wire Wire Line
	3350 4050 3350 4100
Wire Wire Line
	3350 4400 3350 4450
Connection ~ 3350 4450
Wire Wire Line
	3350 4450 3750 4450
Wire Wire Line
	3350 4450 3350 5000
Wire Wire Line
	3350 5000 3850 5000
Wire Wire Line
	1950 3650 1950 3950
Wire Wire Line
	1950 4150 1950 4450
Wire Wire Line
	4900 4350 4900 5350
Wire Wire Line
	5050 4450 5050 4650
Wire Wire Line
	4800 4650 5050 4650
Connection ~ 5050 4650
Wire Wire Line
	5050 4650 5050 4700
$Comp
L Device:R R14
U 1 1 609C70D6
P 9200 6000
F 0 "R14" V 9400 6000 50  0000 C CNN
F 1 "100R" V 9300 6000 50  0000 C CNN
F 2 "RevK:R_0603" V 9130 6000 50  0001 C CNN
F 3 "~" H 9200 6000 50  0001 C CNN
	1    9200 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 6000 8550 6000
$Comp
L Diode:BAV99S D5
U 2 1 609C0FCA
P 8400 4950
F 0 "D5" H 8400 5167 50  0000 C CNN
F 1 "BAV99S" H 8400 5076 50  0000 C CNN
F 2 "RevK:SOT-363_SC-70-6" H 8400 4450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/771-BAV99S-T-R" H 8400 4950 50  0001 C CNN
	2    8400 4950
	0    1    -1   0   
$EndComp
$Comp
L Diode:BAV99S D6
U 2 1 609C1D90
P 8900 4700
F 0 "D6" V 8946 4779 50  0000 L CNN
F 1 "BAV99S" V 8855 4779 50  0000 L CNN
F 2 "RevK:SOT-363_SC-70-6" H 8900 4200 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/771-BAV99S-T-R" H 8900 4700 50  0001 C CNN
	2    8900 4700
	0    -1   -1   0   
$EndComp
$Comp
L Diode:BAV99S D6
U 1 1 609C6100
P 9400 3850
F 0 "D6" V 9354 3930 50  0000 L CNN
F 1 "BAV99S" V 9445 3930 50  0000 L CNN
F 2 "RevK:SOT-363_SC-70-6" H 9400 3350 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/771-BAV99S-T-R" H 9400 3850 50  0001 C CNN
	1    9400 3850
	0    1    -1   0   
$EndComp
$Comp
L Diode:BAV99S D5
U 1 1 609CA448
P 8000 1400
F 0 "D5" V 7954 1480 50  0000 L CNN
F 1 "BAV99S" V 8045 1480 50  0000 L CNN
F 2 "RevK:SOT-363_SC-70-6" H 8000 900 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/771-BAV99S-T-R" H 8000 1400 50  0001 C CNN
	1    8000 1400
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 609E8AA7
P 7700 2650
F 0 "#PWR0103" H 7700 2400 50  0001 C CNN
F 1 "GND" V 7705 2522 50  0000 R CNN
F 2 "" H 7700 2650 50  0001 C CNN
F 3 "" H 7700 2650 50  0001 C CNN
	1    7700 2650
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 609E93A9
P 7700 1400
F 0 "#PWR0104" H 7700 1150 50  0001 C CNN
F 1 "GND" V 7705 1272 50  0000 R CNN
F 2 "" H 7700 1400 50  0001 C CNN
F 3 "" H 7700 1400 50  0001 C CNN
	1    7700 1400
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 609EA5B6
P 8400 5250
F 0 "#PWR0106" H 8400 5000 50  0001 C CNN
F 1 "GND" V 8405 5122 50  0000 R CNN
F 2 "" H 8400 5250 50  0001 C CNN
F 3 "" H 8400 5250 50  0001 C CNN
	1    8400 5250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 609EB68E
P 8900 5000
F 0 "#PWR0107" H 8900 4750 50  0001 C CNN
F 1 "GND" H 8905 4827 50  0000 C CNN
F 2 "" H 8900 5000 50  0001 C CNN
F 3 "" H 8900 5000 50  0001 C CNN
	1    8900 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 60A15E22
P 8900 4400
F 0 "#PWR0109" H 8900 4250 50  0001 C CNN
F 1 "+3.3V" H 8915 4573 50  0000 C CNN
F 2 "" H 8900 4400 50  0001 C CNN
F 3 "" H 8900 4400 50  0001 C CNN
	1    8900 4400
	1    0    0    -1  
$EndComp
Connection ~ 10350 3200
Connection ~ 10450 3300
Wire Wire Line
	10350 2550 10350 3200
Wire Wire Line
	10450 2650 10450 3300
$Comp
L power:+3.3V #PWR0111
U 1 1 60A2B5B1
P 8400 4650
F 0 "#PWR0111" H 8400 4500 50  0001 C CNN
F 1 "+3.3V" V 8415 4778 50  0000 L CNN
F 2 "" H 8400 4650 50  0001 C CNN
F 3 "" H 8400 4650 50  0001 C CNN
	1    8400 4650
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 60A2BEDD
P 8300 2650
F 0 "#PWR0112" H 8300 2500 50  0001 C CNN
F 1 "+3.3V" V 8315 2778 50  0000 L CNN
F 2 "" H 8300 2650 50  0001 C CNN
F 3 "" H 8300 2650 50  0001 C CNN
	1    8300 2650
	0    1    -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 60A2C81B
P 8300 1400
F 0 "#PWR0113" H 8300 1250 50  0001 C CNN
F 1 "+3.3V" V 8315 1528 50  0000 L CNN
F 2 "" H 8300 1400 50  0001 C CNN
F 3 "" H 8300 1400 50  0001 C CNN
	1    8300 1400
	0    1    -1   0   
$EndComp
Connection ~ 9100 4700
Wire Wire Line
	10350 3200 10350 4600
Wire Wire Line
	8400 4250 8400 3650
Wire Wire Line
	8400 3650 8850 3650
Wire Wire Line
	8400 4250 7200 4250
Connection ~ 9200 3850
Wire Wire Line
	10450 3300 10450 4700
$Comp
L Diode:BAV99S D4
U 2 1 609D2A98
P 8000 2650
F 0 "D4" H 8000 2867 50  0000 C CNN
F 1 "BAV99S" H 8000 2776 50  0000 C CNN
F 2 "RevK:SOT-363_SC-70-6" H 8000 2150 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/771-BAV99S-T-R" H 8000 2650 50  0001 C CNN
	2    8000 2650
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 609CCFD7
P 9400 4150
F 0 "#PWR0110" H 9400 3900 50  0001 C CNN
F 1 "GND" H 9405 3977 50  0000 C CNN
F 2 "" H 9400 4150 50  0001 C CNN
F 3 "" H 9400 4150 50  0001 C CNN
	1    9400 4150
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 609CF1CB
P 9400 3550
F 0 "#PWR0114" H 9400 3400 50  0001 C CNN
F 1 "+3.3V" H 9415 3723 50  0000 C CNN
F 2 "" H 9400 3550 50  0001 C CNN
F 3 "" H 9400 3550 50  0001 C CNN
	1    9400 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 3650 2850 3650
Wire Wire Line
	3150 3650 3350 3650
Wire Wire Line
	2650 4450 2850 4450
Wire Wire Line
	3150 4450 3350 4450
Wire Wire Line
	8800 1200 8800 3000
Wire Wire Line
	8850 800  8850 3650
$Comp
L power:GND #PWR0115
U 1 1 609FA5D0
P 8050 800
F 0 "#PWR0115" H 8050 550 50  0001 C CNN
F 1 "GND" V 8055 672 50  0000 R CNN
F 2 "" H 8050 800 50  0001 C CNN
F 3 "" H 8050 800 50  0001 C CNN
	1    8050 800 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 609FAED2
P 7700 1200
F 0 "#PWR0116" H 7700 950 50  0001 C CNN
F 1 "GND" V 7705 1072 50  0000 R CNN
F 2 "" H 7700 1200 50  0001 C CNN
F 3 "" H 7700 1200 50  0001 C CNN
	1    7700 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 609FC068
P 7700 1800
F 0 "#PWR0117" H 7700 1550 50  0001 C CNN
F 1 "GND" V 7705 1672 50  0000 R CNN
F 2 "" H 7700 1800 50  0001 C CNN
F 3 "" H 7700 1800 50  0001 C CNN
	1    7700 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 609FC9A6
P 7700 2450
F 0 "#PWR0118" H 7700 2200 50  0001 C CNN
F 1 "GND" V 7705 2322 50  0000 R CNN
F 2 "" H 7700 2450 50  0001 C CNN
F 3 "" H 7700 2450 50  0001 C CNN
	1    7700 2450
	0    1    1    0   
$EndComp
$Comp
L Diode:BAV99S D4
U 1 1 609D03D5
P 8000 2000
F 0 "D4" H 8000 2125 50  0000 C CNN
F 1 "BAV99S" H 8000 2216 50  0000 C CNN
F 2 "RevK:SOT-363_SC-70-6" H 8000 1500 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/771-BAV99S-T-R" H 8000 2000 50  0001 C CNN
	1    8000 2000
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 60A87BF2
P 8300 2000
F 0 "#PWR0108" H 8300 1850 50  0001 C CNN
F 1 "+3.3V" V 8300 2250 50  0000 C CNN
F 2 "" H 8300 2000 50  0001 C CNN
F 3 "" H 8300 2000 50  0001 C CNN
	1    8300 2000
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 609E9C81
P 7700 2000
F 0 "#PWR0105" H 7700 1750 50  0001 C CNN
F 1 "GND" V 7700 1800 50  0000 C CNN
F 2 "" H 7700 2000 50  0001 C CNN
F 3 "" H 7700 2000 50  0001 C CNN
	1    7700 2000
	0    1    -1   0   
$EndComp
Wire Wire Line
	8250 1200 8000 1200
Wire Wire Line
	8250 1800 8000 1800
Wire Wire Line
	8250 2450 8000 2450
Connection ~ 8000 1800
Wire Wire Line
	8750 1800 8750 2950
Connection ~ 8000 1200
Wire Wire Line
	6800 3000 8800 3000
Connection ~ 8000 2450
Wire Wire Line
	6600 2900 8700 2900
Wire Wire Line
	8550 1200 8800 1200
Wire Wire Line
	8550 1800 8750 1800
Wire Wire Line
	8550 2450 8700 2450
Connection ~ 8200 4950
Wire Wire Line
	8200 4950 8200 5600
Wire Wire Line
	8200 5600 9700 5600
$Comp
L Device:C C19
U 1 1 609F7A83
P 9250 4850
F 0 "C19" H 9365 4896 50  0000 L CNN
F 1 "33pF" H 9365 4805 50  0000 L CNN
F 2 "RevK:C_0603" H 9288 4700 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/80-C0603C330G8HACTU" H 9250 4850 50  0001 C CNN
	1    9250 4850
	1    0    0    -1  
$EndComp
Connection ~ 9250 4700
Wire Wire Line
	9250 4700 9100 4700
$Comp
L power:GND #PWR0119
U 1 1 609FD453
P 9250 5000
F 0 "#PWR0119" H 9250 4750 50  0001 C CNN
F 1 "GND" H 9255 4827 50  0000 C CNN
F 2 "" H 9250 5000 50  0001 C CNN
F 3 "" H 9250 5000 50  0001 C CNN
	1    9250 5000
	1    0    0    -1  
$EndComp
$Comp
L RevK:AJK AJK1
U 1 1 607F5B4A
P 10575 6825
F 0 "AJK1" H 10575 6925 50  0001 C CNN
F 1 "AJK" H 10600 6825 50  0000 L CNN
F 2 "RevK:AJK-Silk" H 10575 6725 50  0001 C CNN
F 3 "" H 10575 6725 50  0001 C CNN
	1    10575 6825
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_2Pole TP1
U 1 1 609B72F2
P 4300 4050
F 0 "TP1" V 4254 4108 50  0000 L CNN
F 1 "TestPoint_2Pole" V 4345 4108 50  0000 L CNN
F 2 "RevK:PN532-RF-Test" H 4300 4050 50  0001 C CNN
F 3 "~" H 4300 4050 50  0001 C CNN
	1    4300 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 4450 4300 4450
Wire Wire Line
	4300 4250 4300 4450
Connection ~ 4300 4450
Wire Wire Line
	4300 4450 4500 4450
$Comp
L RevK:QR U3
U 1 1 6184CC73
P 10900 6825
F 0 "U3" H 10900 6775 50  0001 C CNN
F 1 "QR" H 10900 6775 50  0001 C CNN
F 2 "RevK:QR-PN532" H 10900 6825 50  0001 C CNN
F 3 "" H 10900 6825 50  0001 C CNN
	1    10900 6825
	1    0    0    -1  
$EndComp
$Comp
L RevK:AJK AJK2
U 1 1 6185D41B
P 10400 6825
F 0 "AJK2" H 10400 6925 50  0001 C CNN
F 1 "AJK" H 10425 6825 50  0000 L CNN
F 2 "RevK:AJK-Silk" H 10400 6725 50  0001 C CNN
F 3 "" H 10400 6725 50  0001 C CNN
	1    10400 6825
	1    0    0    -1  
$EndComp
$EndSCHEMATC
