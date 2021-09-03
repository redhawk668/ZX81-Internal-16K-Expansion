EESchema Schematic File Version 4
EELAYER 30 0
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
Wire Wire Line
	4950 3900 4750 3900
Wire Wire Line
	4750 3900 4750 4200
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 607DCA13
P 4750 4400
F 0 "J1" V 4750 4250 50  0000 L CNN
F 1 "A14" V 4850 4300 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4750 4400 50  0001 C CNN
F 3 "~" H 4750 4400 50  0001 C CNN
	1    4750 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3800 4450 3800
Wire Wire Line
	4450 3800 4450 4200
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 607DF965
P 4450 4400
F 0 "J2" V 4450 4250 50  0000 L CNN
F 1 "A13" V 4550 4300 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4450 4400 50  0001 C CNN
F 3 "~" H 4450 4400 50  0001 C CNN
	1    4450 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 3600 3850 4200
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 607E0B05
P 3850 4400
F 0 "J4" V 3850 4250 50  0000 L CNN
F 1 "A11" V 3950 4300 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 3850 4400 50  0001 C CNN
F 3 "~" H 3850 4400 50  0001 C CNN
	1    3850 4400
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607E4DC2
P 1200 1300
F 0 "#FLG0101" H 1200 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 1473 50  0000 C CNN
F 2 "" H 1200 1300 50  0001 C CNN
F 3 "~" H 1200 1300 50  0001 C CNN
	1    1200 1300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 607E59E4
P 1700 1300
F 0 "#FLG0102" H 1700 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 1473 50  0000 C CNN
F 2 "" H 1700 1300 50  0001 C CNN
F 3 "~" H 1700 1300 50  0001 C CNN
	1    1700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 607E5F10
P 1200 1300
F 0 "#PWR0101" H 1200 1150 50  0001 C CNN
F 1 "+5V" H 1215 1473 50  0000 C CNN
F 2 "" H 1200 1300 50  0001 C CNN
F 3 "" H 1200 1300 50  0001 C CNN
	1    1200 1300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 607E667F
P 1700 1300
F 0 "#PWR0102" H 1700 1050 50  0001 C CNN
F 1 "GND" H 1705 1127 50  0000 C CNN
F 2 "" H 1700 1300 50  0001 C CNN
F 3 "" H 1700 1300 50  0001 C CNN
	1    1700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4100 5600 4100
Wire Wire Line
	5600 4100 5600 4250
Connection ~ 5600 4100
Wire Wire Line
	5600 4100 5450 4100
$Comp
L power:GND #PWR0103
U 1 1 607E740A
P 5600 4250
F 0 "#PWR0103" H 5600 4000 50  0001 C CNN
F 1 "GND" H 5605 4077 50  0000 C CNN
F 2 "" H 5600 4250 50  0001 C CNN
F 3 "" H 5600 4250 50  0001 C CNN
	1    5600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2300 5800 2300
Wire Wire Line
	5800 2300 5800 2200
Connection ~ 5800 2300
$Comp
L power:+5V #PWR0104
U 1 1 607E8166
P 5800 2150
F 0 "#PWR0104" H 5800 2000 50  0001 C CNN
F 1 "+5V" H 5815 2323 50  0000 C CNN
F 2 "" H 5800 2150 50  0001 C CNN
F 3 "" H 5800 2150 50  0001 C CNN
	1    5800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2300 6350 2800
$Comp
L Device:C C1
U 1 1 607EA057
P 6350 2950
F 0 "C1" H 6465 2996 50  0000 L CNN
F 1 "0.1uF" H 6465 2905 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6388 2800 50  0001 C CNN
F 3 "~" H 6350 2950 50  0001 C CNN
	1    6350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3100 6350 4100
Wire Wire Line
	5800 2300 6350 2300
Wire Wire Line
	5950 3700 6800 3700
Wire Wire Line
	6800 3700 6800 3100
$Comp
L Device:R R1
U 1 1 607EB473
P 6800 2950
F 0 "R1" H 6870 2996 50  0000 L CNN
F 1 "10K" H 6870 2905 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" V 6730 2950 50  0001 C CNN
F 3 "~" H 6800 2950 50  0001 C CNN
	1    6800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2800 6800 2200
Wire Wire Line
	6800 2200 5800 2200
Connection ~ 5800 2200
Wire Wire Line
	5800 2200 5800 2150
$Comp
L Memory_RAM:CY62256-70PC U1
U 1 1 607D8662
P 5450 3200
F 0 "U1" H 5450 4281 50  0000 C CNN
F 1 "CY62256-70PC" H 5450 4190 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-28W_7.5x17.9mm_Pitch1.27mm" H 5450 3100 50  0001 C CNN
F 3 "https://ecee.colorado.edu/~mcclurel/Cypress_SRAM_CY62256.pdf" H 5450 3100 50  0001 C CNN
	1    5450 3200
	1    0    0    -1  
$EndComp
NoConn ~ 4950 2500
NoConn ~ 4950 2600
NoConn ~ 4950 2700
NoConn ~ 4950 2800
NoConn ~ 4950 2900
NoConn ~ 4950 3000
NoConn ~ 4950 3100
NoConn ~ 4950 3200
NoConn ~ 4950 3300
NoConn ~ 4950 3400
NoConn ~ 5950 3600
NoConn ~ 5950 3400
NoConn ~ 5950 3200
NoConn ~ 5950 3100
NoConn ~ 5950 3000
NoConn ~ 5950 2900
NoConn ~ 5950 2800
NoConn ~ 5950 2700
NoConn ~ 5950 2600
NoConn ~ 5950 2500
NoConn ~ 4950 3500
Wire Wire Line
	4150 3700 4150 4200
Wire Wire Line
	4150 3700 4950 3700
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 610DB624
P 4150 4400
F 0 "J3" V 4150 4250 50  0000 L CNN
F 1 "A12" V 4250 4300 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4150 4400 50  0001 C CNN
F 3 "~" H 4150 4400 50  0001 C CNN
	1    4150 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 3600 4950 3600
$EndSCHEMATC
