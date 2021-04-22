EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PN532 Board"
Date "2021-04-20"
Rev "2"
Comp "Adrian Kennard Andrews & Arnold Ltd"
Comment1 "www.me.uk"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RevK:PN532-Antenna A1
U 1 1 6074E4EC
P 1300 3850
F 0 "A1" H 1358 4515 50  0000 C CNN
F 1 "PN532-Antenna" H 1358 4424 50  0000 C CNN
F 2 "RevK:PN532-Antenna" H 1300 3850 50  0001 C CNN
F 3 "" H 1300 3850 50  0001 C CNN
	1    1300 3850
	1    0    0    -1  
$EndComp
$Comp
L RevK:PN532 U1
U 1 1 60753706
P 6050 5300
F 0 "U1" H 6844 6796 50  0000 L CNN
F 1 "PN532" H 6844 6705 50  0000 L CNN
F 2 "RevK:QFN-40-(hand)-1EP_6x6mm_P0.5mm_EP4.6x4.6mm" H 6050 5300 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/NXP-Semiconductors/PN5321A3HN-C10655" H 6050 5300 50  0001 C CNN
	1    6050 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60756CAE
P 2600 3700
F 0 "C1" H 2715 3746 50  0000 L CNN
F 1 "200pF" H 2715 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2638 3550 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C201F4HACTU" H 2600 3700 50  0001 C CNN
	1    2600 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60757E92
P 2600 4000
F 0 "C2" H 2715 4046 50  0000 L CNN
F 1 "200pF" H 2715 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2638 3850 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C201F4HACTU" H 2600 4000 50  0001 C CNN
	1    2600 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60758CE7
P 2950 3550
F 0 "C3" V 2698 3550 50  0000 C CNN
F 1 "22pF" V 2789 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2988 3400 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C220F1HACTU" H 2950 3550 50  0001 C CNN
	1    2950 3550
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6075A7AA
P 3300 3700
F 0 "C5" H 3185 3654 50  0000 R CNN
F 1 "220pF" H 3185 3745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3338 3550 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C221F1HACTU" H 3300 3700 50  0001 C CNN
	1    3300 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 6075B113
P 3300 4000
F 0 "C6" H 3415 4046 50  0000 L CNN
F 1 "220pF" H 3415 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3338 3850 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C221F1HACTU" H 3300 4000 50  0001 C CNN
	1    3300 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 6075BC21
P 3850 3550
F 0 "L1" V 3669 3550 50  0000 C CNN
F 1 "560nH" V 3760 3550 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.05x1.20mm_HandSolder" H 3850 3550 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/Fastron/0805AS-R56J-08" H 3850 3550 50  0001 C CNN
	1    3850 3550
	0    1    1    0   
$EndComp
$Comp
L Device:L L2
U 1 1 6075C317
P 3850 4150
F 0 "L2" V 4040 4150 50  0000 C CNN
F 1 "560nH" V 3949 4150 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.05x1.20mm_HandSolder" H 3850 4150 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/Fastron/0805AS-R56J-08" H 3850 4150 50  0001 C CNN
	1    3850 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C8
U 1 1 6075C646
P 4000 4600
F 0 "C8" V 4200 4600 50  0000 C CNN
F 1 "1nF" V 3839 4600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4038 4450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C102F5GACTU" H 4000 4600 50  0001 C CNN
	1    4000 4600
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 6075D8AC
P 4350 4250
F 0 "C10" V 4098 4250 50  0000 C CNN
F 1 "0.1uF" V 4189 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4388 4100 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C104M3RACTU" H 4350 4250 50  0001 C CNN
	1    4350 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6075DE03
P 3600 4600
F 0 "R3" V 3800 4600 50  0000 C CNN
F 1 "2K7" V 3484 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 4600 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTD2701F" H 3600 4600 50  0001 C CNN
	1    3600 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 6075E871
P 4650 4450
F 0 "R4" H 4580 4404 50  0000 R CNN
F 1 "1K" H 4580 4495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4580 4450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTDD1001F" H 4650 4450 50  0001 C CNN
	1    4650 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 6075F2FD
P 4300 3000
F 0 "C9" H 4415 3046 50  0000 L CNN
F 1 "4.7uF" H 4415 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4338 2850 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C475M4RACTU" H 4300 3000 50  0001 C CNN
	1    4300 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6075FD74
P 3950 3000
F 0 "C7" H 3700 3050 50  0000 L CNN
F 1 "0.1uF" H 3600 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3988 2850 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C104M3RACTU" H 3950 3000 50  0001 C CNN
	1    3950 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 607608E5
P 5150 2600
F 0 "C14" H 5265 2646 50  0000 L CNN
F 1 "0.1uF" H 5265 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5188 2450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C104M3RACTU" H 5150 2600 50  0001 C CNN
	1    5150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 607617F2
P 4750 1950
F 0 "C12" H 4450 2000 50  0000 L CNN
F 1 "0.1uF" H 4350 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4788 1800 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C104M3RACTU" H 4750 1950 50  0001 C CNN
	1    4750 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 60761B18
P 5100 1950
F 0 "C13" H 5215 1996 50  0000 L CNN
F 1 "4.7uF" H 5215 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5138 1800 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C475M4RACTU" H 5100 1950 50  0001 C CNN
	1    5100 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60762055
P 5550 1250
F 0 "R5" V 5343 1250 50  0000 C CNN
F 1 "10K" V 5434 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5480 1250 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTED1002F" H 5550 1250 50  0001 C CNN
	1    5550 1250
	0    1    1    0   
$EndComp
$Comp
L Device:C C17
U 1 1 607627AA
P 7100 4300
F 0 "C17" H 7215 4346 50  0000 L CNN
F 1 "0.1uF" H 7215 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7138 4150 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C104M3RACTU" H 7100 4300 50  0001 C CNN
	1    7100 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 60762D5E
P 5700 5850
F 0 "C15" H 5400 5900 50  0000 L CNN
F 1 "22pF" H 5400 5800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5738 5700 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C220F1HACTU" H 5700 5850 50  0001 C CNN
	1    5700 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 6076408B
P 6000 5850
F 0 "C16" H 6115 5896 50  0000 L CNN
F 1 "22pF" H 6115 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6038 5700 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C220F1HACTU" H 6000 5850 50  0001 C CNN
	1    6000 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3750 1900 3550
Wire Wire Line
	1900 3550 2200 3550
Connection ~ 2600 3850
Wire Wire Line
	1900 3950 1900 4150
Wire Wire Line
	1900 4150 2200 4150
Wire Wire Line
	2600 3550 2800 3550
Wire Wire Line
	2600 4150 2800 4150
Wire Wire Line
	2600 3850 3300 3850
Connection ~ 3300 3850
Wire Wire Line
	3100 3550 3300 3550
Wire Wire Line
	3100 4150 3150 4150
$Comp
L power:GND #PWR01
U 1 1 6076AF1E
P 3650 3850
F 0 "#PWR01" H 3650 3600 50  0001 C CNN
F 1 "GND" V 3655 3722 50  0000 R CNN
F 2 "" H 3650 3850 50  0001 C CNN
F 3 "" H 3650 3850 50  0001 C CNN
	1    3650 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 3850 3650 3850
Wire Wire Line
	3300 3550 3700 3550
Connection ~ 3300 3550
Connection ~ 3300 4150
Wire Wire Line
	4000 3550 4100 3550
Wire Wire Line
	4000 4150 4100 4150
Wire Wire Line
	4100 3550 4100 3750
Wire Wire Line
	4100 3750 5050 3750
Wire Wire Line
	4100 4150 4100 3950
Wire Wire Line
	4100 3950 5050 3950
Wire Wire Line
	3750 4600 3850 4600
Wire Wire Line
	4150 4600 4650 4600
Wire Wire Line
	4650 4600 4850 4600
Wire Wire Line
	4850 4600 4850 4350
Wire Wire Line
	4850 4350 5050 4350
Connection ~ 4650 4600
$Comp
L power:GND #PWR02
U 1 1 6078659F
P 4200 4250
F 0 "#PWR02" H 4200 4000 50  0001 C CNN
F 1 "GND" V 4205 4122 50  0000 R CNN
F 2 "" H 4200 4250 50  0001 C CNN
F 3 "" H 4200 4250 50  0001 C CNN
	1    4200 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 3150 4300 3150
Wire Wire Line
	3950 2850 4300 2850
Wire Wire Line
	5050 3850 4650 3850
Wire Wire Line
	4650 3850 4650 2850
Connection ~ 4300 2850
$Comp
L power:+3.3V #PWR03
U 1 1 607899AD
P 4300 2850
F 0 "#PWR03" H 4300 2700 50  0001 C CNN
F 1 "+3.3V" H 4315 3023 50  0000 C CNN
F 2 "" H 4300 2850 50  0001 C CNN
F 3 "" H 4300 2850 50  0001 C CNN
	1    4300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6078C0C2
P 4300 3150
F 0 "#PWR04" H 4300 2900 50  0001 C CNN
F 1 "GND" H 4305 2977 50  0000 C CNN
F 2 "" H 4300 3150 50  0001 C CNN
F 3 "" H 4300 3150 50  0001 C CNN
	1    4300 3150
	1    0    0    -1  
$EndComp
Connection ~ 4300 3150
Wire Wire Line
	5050 4150 4500 4150
$Comp
L Device:C C11
U 1 1 6078DE67
P 4500 5200
F 0 "C11" H 4615 5246 50  0000 L CNN
F 1 "0.1uF" H 4615 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4538 5050 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C104M3RACTU" H 4500 5200 50  0001 C CNN
	1    4500 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6078EE36
P 4500 5350
F 0 "#PWR06" H 4500 5100 50  0001 C CNN
F 1 "GND" H 4505 5177 50  0000 C CNN
F 2 "" H 4500 5350 50  0001 C CNN
F 3 "" H 4500 5350 50  0001 C CNN
	1    4500 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 6078F22E
P 4500 4950
F 0 "#PWR05" H 4500 4800 50  0001 C CNN
F 1 "+3.3V" V 4515 5078 50  0000 L CNN
F 2 "" H 4500 4950 50  0001 C CNN
F 3 "" H 4500 4950 50  0001 C CNN
	1    4500 4950
	0    -1   -1   0   
$EndComp
Connection ~ 4500 4950
Wire Wire Line
	4500 4950 4500 5050
Wire Wire Line
	5050 4050 4900 4050
Wire Wire Line
	4900 4050 4900 3650
Wire Wire Line
	4900 3650 5050 3650
Wire Wire Line
	4900 3650 4900 3450
Wire Wire Line
	4900 3450 5050 3450
Connection ~ 4900 3650
Wire Wire Line
	4900 3450 4900 3300
Wire Wire Line
	4900 3300 5050 3300
Connection ~ 4900 3450
Wire Wire Line
	4900 3300 4900 3150
Connection ~ 4900 3300
$Comp
L power:GND #PWR09
U 1 1 607933E2
P 4900 3150
F 0 "#PWR09" H 4900 2900 50  0001 C CNN
F 1 "GND" H 4905 2977 50  0000 C CNN
F 2 "" H 4900 3150 50  0001 C CNN
F 3 "" H 4900 3150 50  0001 C CNN
	1    4900 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60793EBB
P 5150 2750
F 0 "#PWR011" H 5150 2500 50  0001 C CNN
F 1 "GND" H 5155 2577 50  0000 C CNN
F 2 "" H 5150 2750 50  0001 C CNN
F 3 "" H 5150 2750 50  0001 C CNN
	1    5150 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 60796710
P 5150 2450
F 0 "#PWR010" H 5150 2300 50  0001 C CNN
F 1 "+5V" H 5165 2623 50  0000 C CNN
F 2 "" H 5150 2450 50  0001 C CNN
F 3 "" H 5150 2450 50  0001 C CNN
	1    5150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2450 5500 2950
Connection ~ 5150 2450
Wire Wire Line
	5600 1800 5100 1800
Wire Wire Line
	5100 1800 4750 1800
Connection ~ 5100 1800
Wire Wire Line
	5100 2100 4750 2100
$Comp
L power:GND #PWR08
U 1 1 6079CC9E
P 4750 2100
F 0 "#PWR08" H 4750 1850 50  0001 C CNN
F 1 "GND" H 4755 1927 50  0000 C CNN
F 2 "" H 4750 2100 50  0001 C CNN
F 3 "" H 4750 2100 50  0001 C CNN
	1    4750 2100
	1    0    0    -1  
$EndComp
Connection ~ 4750 2100
$Comp
L power:+3.3V #PWR07
U 1 1 6079D14F
P 4750 1800
F 0 "#PWR07" H 4750 1650 50  0001 C CNN
F 1 "+3.3V" H 4765 1973 50  0000 C CNN
F 2 "" H 4750 1800 50  0001 C CNN
F 3 "" H 4750 1800 50  0001 C CNN
	1    4750 1800
	1    0    0    -1  
$EndComp
Connection ~ 4750 1800
Wire Wire Line
	5600 2950 5600 1800
Wire Wire Line
	6800 4150 7100 4150
$Comp
L power:GND #PWR020
U 1 1 607A6512
P 7100 4450
F 0 "#PWR020" H 7100 4200 50  0001 C CNN
F 1 "GND" H 7105 4277 50  0000 C CNN
F 2 "" H 7100 4450 50  0001 C CNN
F 3 "" H 7100 4450 50  0001 C CNN
	1    7100 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 607A693F
P 6200 4750
F 0 "#PWR018" H 6200 4500 50  0001 C CNN
F 1 "GND" H 6205 4577 50  0000 C CNN
F 2 "" H 6200 4750 50  0001 C CNN
F 3 "" H 6200 4750 50  0001 C CNN
	1    6200 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 607A6DFA
P 5500 4750
F 0 "#PWR013" H 5500 4500 50  0001 C CNN
F 1 "GND" H 5505 4577 50  0000 C CNN
F 2 "" H 5500 4750 50  0001 C CNN
F 3 "" H 5500 4750 50  0001 C CNN
	1    5500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 607ABABA
P 5850 6150
F 0 "#PWR014" H 5850 5900 50  0001 C CNN
F 1 "GND" H 5855 5977 50  0000 C CNN
F 2 "" H 5850 6150 50  0001 C CNN
F 3 "" H 5850 6150 50  0001 C CNN
	1    5850 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6000 5700 6150
Wire Wire Line
	5700 6150 5850 6150
Wire Wire Line
	6000 6000 6000 6150
Wire Wire Line
	6000 6150 5850 6150
Connection ~ 5850 6150
Wire Wire Line
	5800 5200 5700 5200
Wire Wire Line
	5800 4750 5800 5200
Wire Wire Line
	5900 5200 6000 5200
Wire Wire Line
	5900 4750 5900 5200
$Comp
L Device:C C4
U 1 1 60759861
P 2950 4150
F 0 "C4" V 2698 4150 50  0000 C CNN
F 1 "22pF" V 2789 4150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2988 4000 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KEMET/C0805C220F1HACTU" H 2950 4150 50  0001 C CNN
	1    2950 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 4150 3700 4150
Wire Wire Line
	3150 4150 3150 4600
Wire Wire Line
	3150 4600 3450 4600
Connection ~ 3150 4150
Wire Wire Line
	3150 4150 3300 4150
Wire Wire Line
	4300 2850 4650 2850
Wire Wire Line
	5150 2450 5500 2450
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 607D09FB
P 9350 2550
F 0 "J1" H 9458 2831 50  0000 C CNN
F 1 "Header" H 9458 2740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9350 2550 50  0001 C CNN
F 3 "~" H 9350 2550 50  0001 C CNN
	1    9350 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 607D486C
P 9350 3200
F 0 "J2" H 9458 3481 50  0000 C CNN
F 1 "SPOX" H 9458 3390 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5268-04A_1x04_P2.50mm_Horizontal" H 9350 3200 50  0001 C CNN
F 3 "~" H 9350 3200 50  0001 C CNN
	1    9350 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 607D641F
P 9350 3950
F 0 "J3" H 9458 4231 50  0000 C CNN
F 1 "MiniGrid" H 9458 4140 50  0000 C CNN
F 2 "RevK:Connector-MilliGrid-2x2" H 9350 3950 50  0001 C CNN
F 3 "~" H 9350 3950 50  0001 C CNN
	1    9350 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 607D87E0
P 9550 2450
F 0 "#PWR023" H 9550 2200 50  0001 C CNN
F 1 "GND" V 9555 2322 50  0000 R CNN
F 2 "" H 9550 2450 50  0001 C CNN
F 3 "" H 9550 2450 50  0001 C CNN
	1    9550 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 607D93E3
P 9550 3100
F 0 "#PWR025" H 9550 2850 50  0001 C CNN
F 1 "GND" V 9555 2972 50  0000 R CNN
F 2 "" H 9550 3100 50  0001 C CNN
F 3 "" H 9550 3100 50  0001 C CNN
	1    9550 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 607D994B
P 9550 3850
F 0 "#PWR027" H 9550 3600 50  0001 C CNN
F 1 "GND" V 9555 3722 50  0000 R CNN
F 2 "" H 9550 3850 50  0001 C CNN
F 3 "" H 9550 3850 50  0001 C CNN
	1    9550 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 607D9EEA
P 9550 2550
F 0 "#PWR024" H 9550 2400 50  0001 C CNN
F 1 "+5V" V 9565 2678 50  0000 L CNN
F 2 "" H 9550 2550 50  0001 C CNN
F 3 "" H 9550 2550 50  0001 C CNN
	1    9550 2550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 607DA4EA
P 9550 3200
F 0 "#PWR026" H 9550 3050 50  0001 C CNN
F 1 "+5V" V 9565 3328 50  0000 L CNN
F 2 "" H 9550 3200 50  0001 C CNN
F 3 "" H 9550 3200 50  0001 C CNN
	1    9550 3200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 607DAA60
P 9550 3950
F 0 "#PWR028" H 9550 3800 50  0001 C CNN
F 1 "+5V" V 9565 4078 50  0000 L CNN
F 2 "" H 9550 3950 50  0001 C CNN
F 3 "" H 9550 3950 50  0001 C CNN
	1    9550 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 4400 8800 4400
Wire Wire Line
	8800 4400 8800 3650
Wire Wire Line
	8800 3650 6800 3650
Wire Wire Line
	6800 3750 8700 3750
$Comp
L Device:LED D1
U 1 1 607E9287
P 7850 1200
F 0 "D1" H 7843 1417 50  0000 C CNN
F 1 "RED" H 7843 1326 50  0000 C CNN
F 2 "RevK:LED_D3.0mm_and_SMD" H 7850 1200 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/749-SM0805HCL" H 7850 1200 50  0001 C CNN
	1    7850 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 607EAF87
P 7850 1700
F 0 "D2" H 7843 1917 50  0000 C CNN
F 1 "AMBER" H 7843 1826 50  0000 C CNN
F 2 "RevK:LED_D3.0mm_and_SMD" H 7850 1700 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/749-SM0805YCL" H 7850 1700 50  0001 C CNN
	1    7850 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 607EB52D
P 7850 2250
F 0 "D3" H 7843 2467 50  0000 C CNN
F 1 "GREEN" H 7843 2376 50  0000 C CNN
F 2 "RevK:LED_D3.0mm_and_SMD" H 7850 2250 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/749-SM0805GCL" H 7850 2250 50  0001 C CNN
	1    7850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 607EBC51
P 8150 1200
F 0 "R7" V 7943 1200 50  0000 C CNN
F 1 "680R" V 8034 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8080 1200 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTD6800F" H 8150 1200 50  0001 C CNN
	1    8150 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 607ED1A6
P 8150 1700
F 0 "R8" V 7943 1700 50  0000 C CNN
F 1 "680R" V 8034 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8080 1700 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTD6800F" H 8150 1700 50  0001 C CNN
	1    8150 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 607ED794
P 8150 2250
F 0 "R9" V 7943 2250 50  0000 C CNN
F 1 "680R" V 8034 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8080 2250 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTD6800F" H 8150 2250 50  0001 C CNN
	1    8150 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 2250 7700 2250
Wire Wire Line
	7550 2250 7550 2450
Connection ~ 7550 2250
$Comp
L power:GND #PWR021
U 1 1 607F47EC
P 7550 2450
F 0 "#PWR021" H 7550 2200 50  0001 C CNN
F 1 "GND" H 7555 2277 50  0000 C CNN
F 2 "" H 7550 2450 50  0001 C CNN
F 3 "" H 7550 2450 50  0001 C CNN
	1    7550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1250 5700 2950
Wire Wire Line
	10050 4500 8700 4500
Wire Wire Line
	8700 4500 8700 3750
NoConn ~ 5800 2950
NoConn ~ 5900 2950
NoConn ~ 6000 2950
NoConn ~ 6800 3850
NoConn ~ 6800 4050
NoConn ~ 5600 4750
NoConn ~ 5700 4750
NoConn ~ 5050 3550
NoConn ~ -850 1050
NoConn ~ 13700 2900
$Comp
L power:+3.3V #PWR019
U 1 1 60847AD6
P 7100 4150
F 0 "#PWR019" H 7100 4000 50  0001 C CNN
F 1 "+3.3V" V 7115 4278 50  0000 L CNN
F 2 "" H 7100 4150 50  0001 C CNN
F 3 "" H 7100 4150 50  0001 C CNN
	1    7100 4150
	0    1    1    0   
$EndComp
Connection ~ 7100 4150
$Comp
L power:GND #PWR017
U 1 1 60834040
P 6100 4750
F 0 "#PWR017" H 6100 4500 50  0001 C CNN
F 1 "GND" H 6105 4577 50  0000 C CNN
F 2 "" H 6100 4750 50  0001 C CNN
F 3 "" H 6100 4750 50  0001 C CNN
	1    6100 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 60832E77
P 6000 4750
F 0 "#PWR016" H 6000 4500 50  0001 C CNN
F 1 "GND" H 6005 4577 50  0000 C CNN
F 2 "" H 6000 4750 50  0001 C CNN
F 3 "" H 6000 4750 50  0001 C CNN
	1    6000 4750
	1    0    0    -1  
$EndComp
NoConn ~ 6800 3450
NoConn ~ 6800 3550
NoConn ~ 6800 3950
Wire Wire Line
	7550 1200 7700 1200
Wire Wire Line
	7550 1200 7550 1700
Wire Wire Line
	7550 1700 7700 1700
Connection ~ 7550 1700
Wire Wire Line
	7550 1700 7550 2250
$Comp
L Switch:SW_Push SW1
U 1 1 6076E91E
P 7850 800
F 0 "SW1" H 7850 1085 50  0000 C CNN
F 1 "TAMPER" H 7850 994 50  0000 C CNN
F 2 "RevK:SW_PUSH_6mm_centred" H 7850 1000 50  0001 C CNN
F 3 "~" H 7850 1000 50  0001 C CNN
	1    7850 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 800  7550 800 
Wire Wire Line
	7550 800  7550 1200
Connection ~ 7550 1200
Wire Wire Line
	8300 1700 8350 1700
Wire Wire Line
	8300 1200 8400 1200
Wire Wire Line
	8400 1200 8400 2800
Wire Wire Line
	8050 800  8450 800 
Wire Wire Line
	9550 2650 9950 2650
$Comp
L Mechanical:MountingHole H1
U 1 1 607A1F8B
P 9200 1200
F 0 "H1" H 9300 1246 50  0000 L CNN
F 1 "MountingHole" H 9300 1155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 9200 1200 50  0001 C CNN
F 3 "~" H 9200 1200 50  0001 C CNN
	1    9200 1200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 607A2C4F
P 9200 1450
F 0 "H2" H 9300 1496 50  0000 L CNN
F 1 "MountingHole" H 9300 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 9200 1450 50  0001 C CNN
F 3 "~" H 9200 1450 50  0001 C CNN
	1    9200 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 6075CAF9
P 5850 5500
F 0 "Y1" H 6044 5546 50  0000 L CNN
F 1 "27.12MHz (Mouser 830053099)" H 6044 5455 50  0000 L CNN
F 2 "RevK:Crystal-3.4x2.7" H 5850 5500 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/710-830053099" H 5850 5500 50  0001 C CNN
	1    5850 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5200 5700 5500
Wire Wire Line
	6000 5200 6000 5500
Connection ~ 5700 5500
Wire Wire Line
	5700 5500 5700 5700
Connection ~ 6000 5500
Wire Wire Line
	6000 5500 6000 5700
Wire Wire Line
	5850 5700 5850 6150
Wire Wire Line
	5850 5300 5350 5300
Wire Wire Line
	5350 5300 5350 6150
Wire Wire Line
	5350 6150 5700 6150
Connection ~ 5700 6150
Wire Wire Line
	9550 2750 10050 2750
Wire Wire Line
	9950 2650 9950 3300
Wire Wire Line
	9550 3300 9950 3300
Connection ~ 9950 3300
Wire Wire Line
	9550 3400 10050 3400
Wire Wire Line
	10050 2750 10050 3400
Connection ~ 10050 3400
Text Notes 9150 2750 0    50   ~ 0
GND\nVCC\nTX\nRX
Text Notes 9150 3350 0    50   ~ 0
GND\nVCC\nTX\nRX
Wire Wire Line
	10050 3400 10050 4150
Wire Wire Line
	9950 3300 9950 4050
Wire Wire Line
	9950 4050 9550 4050
Connection ~ 9950 4050
Wire Wire Line
	9950 4050 9950 4400
Wire Wire Line
	9550 4150 10050 4150
Connection ~ 10050 4150
Wire Wire Line
	10050 4150 10050 4500
Text Notes 9150 4150 0    50   ~ 0
GND\nVCC\nTX\nRX
NoConn ~ 6800 4250
NoConn ~ 6800 4350
NoConn ~ 6400 4750
Wire Wire Line
	8450 4950 6300 4950
Wire Wire Line
	6300 4950 6300 4750
Wire Wire Line
	8450 800  8450 4950
Wire Wire Line
	8400 2800 6400 2800
Wire Wire Line
	6400 2800 6400 2950
Wire Wire Line
	8350 2750 6300 2750
Wire Wire Line
	6300 2750 6300 2950
Wire Wire Line
	8350 1700 8350 2750
Wire Wire Line
	8300 2700 6200 2700
Wire Wire Line
	6200 2700 6200 2950
Wire Wire Line
	8300 2250 8300 2700
NoConn ~ 6100 2950
$Comp
L Device:R R10
U 1 1 6080249E
P 8600 800
F 0 "R10" V 8393 800 50  0000 C CNN
F 1 "10K" V 8484 800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8530 800 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTED1002F" H 8600 800 50  0001 C CNN
	1    8600 800 
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 60805672
P 8750 800
F 0 "#PWR022" H 8750 650 50  0001 C CNN
F 1 "+3.3V" V 8765 928 50  0000 L CNN
F 2 "" H 8750 800 50  0001 C CNN
F 3 "" H 8750 800 50  0001 C CNN
	1    8750 800 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 60807251
P 5400 1250
F 0 "#PWR012" H 5400 1100 50  0001 C CNN
F 1 "+5V" V 5415 1378 50  0000 L CNN
F 2 "" H 5400 1250 50  0001 C CNN
F 3 "" H 5400 1250 50  0001 C CNN
	1    5400 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 6080809B
P 5850 1250
F 0 "R6" V 5643 1250 50  0000 C CNN
F 1 "20K" V 5734 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5780 1250 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTE2002F" H 5850 1250 50  0001 C CNN
	1    5850 1250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6080B375
P 6000 1250
F 0 "#PWR015" H 6000 1000 50  0001 C CNN
F 1 "GND" V 6005 1122 50  0000 R CNN
F 2 "" H 6000 1250 50  0001 C CNN
F 3 "" H 6000 1250 50  0001 C CNN
	1    6000 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 3850 2600 3850
$Comp
L Device:R R1
U 1 1 607F6C62
P 2350 3550
F 0 "R1" V 2143 3550 50  0000 C CNN
F 1 "2R" V 2234 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2280 3550 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTD2R00F" H 2350 3550 50  0001 C CNN
	1    2350 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 607F7DFF
P 2350 4150
F 0 "R2" V 2143 4150 50  0000 C CNN
F 1 "2R" V 2234 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2280 4150 50  0001 C CNN
F 3 "https://www.mouser.co.uk/ProductDetail/KOA-Speer/RK73H2ATTD2R00F" H 2350 4150 50  0001 C CNN
	1    2350 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3550 2500 3550
Connection ~ 2600 3550
Wire Wire Line
	2600 4150 2500 4150
Connection ~ 2600 4150
Wire Wire Line
	4500 4250 4650 4250
Wire Wire Line
	4650 4250 4650 4300
Connection ~ 4650 4250
Wire Wire Line
	4650 4250 5050 4250
Wire Wire Line
	4500 4150 4500 4950
$Comp
L RevK:AJK AJK1
U 1 1 607F5B4A
P 10750 6850
F 0 "AJK1" H 10750 6950 50  0001 C CNN
F 1 "AJK" H 10775 6850 50  0000 L CNN
F 2 "RevK:AJK-Silk" H 10750 6750 50  0001 C CNN
F 3 "" H 10750 6750 50  0001 C CNN
	1    10750 6850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
