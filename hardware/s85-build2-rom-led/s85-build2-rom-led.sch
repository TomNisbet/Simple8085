EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Simple8085 ROM test LED"
Date "2023-10-12"
Rev "1.0"
Comp "github.com/TomNisbet"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MyLibrary:8085 U1
U 1 1 6523B388
P 5250 3050
F 0 "U1" H 5550 4550 50  0000 C CNN
F 1 "8085" H 5550 4450 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 5250 1400 50  0001 C CNN
F 3 "http://datasheets.chipdb.org/Intel/MCS-85/intel-8085.pdf" H 5250 3350 50  0001 C CNN
	1    5250 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6523E815
P 1400 4750
F 0 "C2" H 1492 4796 50  0000 L CNN
F 1 "0.1uF" H 1492 4705 50  0000 L CNN
F 2 "" H 1400 4750 50  0001 C CNN
F 3 "~" H 1400 4750 50  0001 C CNN
	1    1400 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6523FE89
P 4350 3200
F 0 "C1" H 4442 3246 50  0000 L CNN
F 1 "22pF" H 4442 3155 50  0000 L CNN
F 2 "" H 4350 3200 50  0001 C CNN
F 3 "~" H 4350 3200 50  0001 C CNN
	1    4350 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 652417E2
P 4600 4350
F 0 "D1" H 4700 4400 50  0000 C CNN
F 1 "LED" H 4450 4400 50  0000 C CNN
F 2 "" V 4600 4350 50  0001 C CNN
F 3 "~" V 4600 4350 50  0001 C CNN
	1    4600 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6524214B
P 5250 4750
F 0 "#PWR06" H 5250 4500 50  0001 C CNN
F 1 "GND" H 5255 4577 50  0000 C CNN
F 2 "" H 5250 4750 50  0001 C CNN
F 3 "" H 5250 4750 50  0001 C CNN
	1    5250 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 652423B5
P 5250 1550
F 0 "#PWR01" H 5250 1400 50  0001 C CNN
F 1 "+5V" H 5265 1723 50  0000 C CNN
F 2 "" H 5250 1550 50  0001 C CNN
F 3 "" H 5250 1550 50  0001 C CNN
	1    5250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1550 5250 1600
Wire Wire Line
	4750 1900 4700 1900
Wire Wire Line
	4700 1900 4700 1600
Wire Wire Line
	4700 1600 5250 1600
Connection ~ 5250 1600
Wire Wire Line
	5250 1600 5250 1650
Wire Wire Line
	4750 2300 4650 2300
Wire Wire Line
	4650 2300 4650 2400
Wire Wire Line
	4650 2700 4750 2700
Wire Wire Line
	4750 2600 4650 2600
Connection ~ 4650 2600
Wire Wire Line
	4650 2600 4650 2700
Wire Wire Line
	4750 2500 4650 2500
Connection ~ 4650 2500
Wire Wire Line
	4650 2500 4650 2600
Wire Wire Line
	4750 2400 4650 2400
Connection ~ 4650 2400
Wire Wire Line
	4650 2400 4650 2500
$Comp
L power:GND #PWR02
U 1 1 65244B98
P 4500 2500
F 0 "#PWR02" H 4500 2250 50  0001 C CNN
F 1 "GND" H 4505 2327 50  0000 C CNN
F 2 "" H 4500 2500 50  0001 C CNN
F 3 "" H 4500 2500 50  0001 C CNN
	1    4500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2400 4500 2400
Wire Wire Line
	4500 2400 4500 2500
NoConn ~ 5800 4150
NoConn ~ 4700 3800
NoConn ~ 4700 3700
NoConn ~ 4700 3600
NoConn ~ 4700 3300
NoConn ~ 4700 4150
Wire Wire Line
	4300 2900 4600 2900
Wire Wire Line
	4600 2900 4600 2950
Wire Wire Line
	4600 2950 4750 2950
Wire Wire Line
	4300 3100 4350 3100
Wire Wire Line
	4600 3100 4600 3050
Wire Wire Line
	4600 3050 4750 3050
$Comp
L Device:Crystal_Small Y1
U 1 1 65249673
P 4300 3000
F 0 "Y1" V 4300 2700 50  0000 L CNN
F 1 "6.144MHz" V 4400 2550 50  0000 L CNN
F 2 "" H 4300 3000 50  0001 C CNN
F 3 "~" H 4300 3000 50  0001 C CNN
	1    4300 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6524BAF5
P 4350 3350
F 0 "#PWR03" H 4350 3100 50  0001 C CNN
F 1 "GND" H 4355 3177 50  0000 C CNN
F 2 "" H 4350 3350 50  0001 C CNN
F 3 "" H 4350 3350 50  0001 C CNN
	1    4350 3350
	1    0    0    -1  
$EndComp
Connection ~ 4350 3100
Wire Wire Line
	4350 3100 4600 3100
Wire Wire Line
	4350 3300 4350 3250
Wire Wire Line
	5750 1900 6150 1900
Wire Wire Line
	5750 2000 6150 2000
Wire Wire Line
	5750 2100 6150 2100
Wire Wire Line
	5750 2200 6150 2200
Wire Wire Line
	5750 2300 6150 2300
Wire Wire Line
	5750 2400 6150 2400
Wire Wire Line
	5750 2500 6150 2500
Wire Wire Line
	5750 2600 6150 2600
$Comp
L power:GND #PWR04
U 1 1 65258AB5
P 3850 4500
F 0 "#PWR04" H 3850 4250 50  0001 C CNN
F 1 "GND" H 3855 4327 50  0000 C CNN
F 2 "" H 3850 4500 50  0001 C CNN
F 3 "" H 3850 4500 50  0001 C CNN
	1    3850 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 4350 4200 4350
$Comp
L power:+5V #PWR07
U 1 1 6525F3C6
P 1400 4550
F 0 "#PWR07" H 1400 4400 50  0001 C CNN
F 1 "+5V" H 1415 4723 50  0000 C CNN
F 2 "" H 1400 4550 50  0001 C CNN
F 3 "" H 1400 4550 50  0001 C CNN
	1    1400 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 652601FB
P 1400 4950
F 0 "#PWR08" H 1400 4700 50  0001 C CNN
F 1 "GND" H 1405 4777 50  0000 C CNN
F 2 "" H 1400 4950 50  0001 C CNN
F 3 "" H 1400 4950 50  0001 C CNN
	1    1400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4550 1600 4600
Wire Wire Line
	1400 4850 1400 4900
$Comp
L power:+5V #PWR010
U 1 1 652694E6
P 4150 5200
F 0 "#PWR010" H 4150 5050 50  0001 C CNN
F 1 "+5V" H 4165 5373 50  0000 C CNN
F 2 "" H 4150 5200 50  0001 C CNN
F 3 "" H 4150 5200 50  0001 C CNN
	1    4150 5200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 6526D40F
P 4100 4350
F 0 "R2" V 4050 4200 50  0000 C CNN
F 1 "1K" V 4050 4500 50  0000 C CNN
F 2 "" H 4100 4350 50  0001 C CNN
F 3 "~" H 4100 4350 50  0001 C CNN
	1    4100 4350
	0    -1   1    0   
$EndComp
Wire Wire Line
	4000 4350 3850 4350
Wire Wire Line
	4750 2100 4650 2100
Wire Wire Line
	4650 2100 4650 2300
Connection ~ 4650 2300
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6527CC72
P 2500 4550
F 0 "#FLG0101" H 2500 4625 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 4700 50  0000 C CNN
F 2 "" H 2500 4550 50  0001 C CNN
F 3 "~" H 2500 4550 50  0001 C CNN
	1    2500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4900 2500 4950
Wire Wire Line
	1400 4550 1400 4600
Wire Wire Line
	1400 4600 1600 4600
Connection ~ 1600 4600
Wire Wire Line
	1400 4600 1400 4650
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6527D61C
P 2500 4950
F 0 "#FLG01" H 2500 5025 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 5123 50  0000 C CNN
F 2 "" H 2500 4950 50  0001 C CNN
F 3 "~" H 2500 4950 50  0001 C CNN
	1    2500 4950
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS573 U2
U 1 1 652B7A39
P 7050 2400
F 0 "U2" H 7300 3200 50  0000 C CNN
F 1 "74LS573" H 7300 3100 50  0000 C CNN
F 2 "" H 7050 2400 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 7050 2400 50  0001 C CNN
	1    7050 2400
	1    0    0    -1  
$EndComp
$Comp
L MyLibrary:AT28C256 U3
U 1 1 652BBA42
P 2450 2600
F 0 "U3" H 2700 3550 50  0000 C CNN
F 1 "AT28C256" H 2700 3450 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 2450 2500 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 2450 2500 50  0001 C CNN
	1    2450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2800 6300 2800
Wire Wire Line
	6300 2800 6300 3900
Wire Wire Line
	6300 3900 5750 3900
Wire Wire Line
	6550 2900 6500 2900
Wire Wire Line
	6500 2900 6500 3250
Wire Wire Line
	6500 3250 7050 3250
Wire Wire Line
	7050 3250 7050 3200
Wire Bus Line
	6250 1200 3300 1200
Wire Bus Line
	6100 3550 7850 3550
Wire Bus Line
	7850 1000 1500 1000
Wire Wire Line
	5750 3450 6000 3450
Wire Wire Line
	5750 3350 6000 3350
Wire Wire Line
	5750 3250 6000 3250
Wire Wire Line
	5750 3150 6000 3150
Wire Wire Line
	5750 3050 6000 3050
Wire Wire Line
	5750 2950 6000 2950
Wire Wire Line
	5750 3650 6000 3650
Wire Wire Line
	5750 3550 6000 3550
Entry Wire Line
	6100 2950 6000 3050
Entry Wire Line
	6100 3050 6000 3150
Entry Wire Line
	6100 3150 6000 3250
Entry Wire Line
	6100 3250 6000 3350
Entry Wire Line
	6100 3350 6000 3450
Entry Wire Line
	6100 3450 6000 3550
Text Label 5850 2950 0    50   ~ 0
A8
Text Label 5850 3050 0    50   ~ 0
A9
Text Label 5850 3150 0    50   ~ 0
A10
Text Label 5850 3250 0    50   ~ 0
A11
Text Label 5850 3350 0    50   ~ 0
A12
Text Label 5850 3450 0    50   ~ 0
A13
Text Label 5850 3550 0    50   ~ 0
A14
Text Label 5850 3650 0    50   ~ 0
A15
Entry Wire Line
	6150 1900 6250 1800
Entry Wire Line
	6150 2000 6250 1900
Entry Wire Line
	6150 2100 6250 2000
Entry Wire Line
	6150 2200 6250 2100
Entry Wire Line
	6150 2300 6250 2200
Entry Wire Line
	6150 2400 6250 2300
Entry Wire Line
	6150 2500 6250 2400
Entry Wire Line
	6150 2600 6250 2500
Text Label 5900 1900 0    50   ~ 0
D0
Text Label 5900 2000 0    50   ~ 0
D1
Text Label 5900 2100 0    50   ~ 0
D2
Text Label 5900 2200 0    50   ~ 0
D3
Text Label 5900 2300 0    50   ~ 0
D4
Text Label 5900 2400 0    50   ~ 0
D5
Text Label 5900 2500 0    50   ~ 0
D6
Text Label 5900 2600 0    50   ~ 0
D7
Wire Wire Line
	6350 1900 6550 1900
Entry Wire Line
	6250 1800 6350 1900
Entry Wire Line
	6250 1900 6350 2000
Entry Wire Line
	6250 2000 6350 2100
Entry Wire Line
	6250 2100 6350 2200
Entry Wire Line
	6250 2200 6350 2300
Entry Wire Line
	6250 2300 6350 2400
Entry Wire Line
	6250 2400 6350 2500
Entry Wire Line
	6250 2500 6350 2600
Wire Wire Line
	6350 2000 6550 2000
Wire Wire Line
	6350 2100 6550 2100
Wire Wire Line
	6350 2200 6550 2200
Wire Wire Line
	6350 2300 6550 2300
Wire Wire Line
	6350 2400 6550 2400
Wire Wire Line
	6350 2500 6550 2500
Wire Wire Line
	6350 2600 6550 2600
Text Label 6400 1900 0    50   ~ 0
D0
Text Label 6400 2000 0    50   ~ 0
D1
Text Label 6400 2100 0    50   ~ 0
D2
Text Label 6400 2200 0    50   ~ 0
D3
Text Label 6400 2300 0    50   ~ 0
D4
Text Label 6400 2400 0    50   ~ 0
D5
Text Label 6400 2500 0    50   ~ 0
D6
Text Label 6400 2600 0    50   ~ 0
D7
Wire Wire Line
	7550 1900 7750 1900
Entry Wire Line
	7850 1800 7750 1900
Entry Wire Line
	7850 1900 7750 2000
Entry Wire Line
	7850 2000 7750 2100
Entry Wire Line
	7850 2100 7750 2200
Entry Wire Line
	7850 2200 7750 2300
Entry Wire Line
	7850 2300 7750 2400
Entry Wire Line
	7850 2400 7750 2500
Entry Wire Line
	7850 2500 7750 2600
Wire Wire Line
	7750 2000 7550 2000
Wire Wire Line
	7550 2100 7750 2100
Wire Wire Line
	7550 2200 7750 2200
Wire Wire Line
	7550 2300 7750 2300
Wire Wire Line
	7550 2400 7750 2400
Wire Wire Line
	7550 2500 7750 2500
Wire Wire Line
	7550 2600 7750 2600
Text Label 7600 1900 0    50   ~ 0
A0
Text Label 7600 2000 0    50   ~ 0
A1
Text Label 7600 2100 0    50   ~ 0
A2
Text Label 7600 2200 0    50   ~ 0
A3
Text Label 7600 2300 0    50   ~ 0
A4
Text Label 7600 2400 0    50   ~ 0
A5
Text Label 7600 2500 0    50   ~ 0
A6
Text Label 7600 2600 0    50   ~ 0
A7
Text Label 7000 1000 0    50   ~ 0
A[0..14]
Text Label 5850 1200 0    50   ~ 0
D[0..7]
Entry Wire Line
	3300 1800 3200 1900
Entry Wire Line
	3300 1900 3200 2000
Entry Wire Line
	3300 2000 3200 2100
Entry Wire Line
	3300 2100 3200 2200
Entry Wire Line
	3300 2200 3200 2300
Entry Wire Line
	3300 2300 3200 2400
Entry Wire Line
	3300 2400 3200 2500
Entry Wire Line
	3300 2500 3200 2600
Entry Wire Line
	6000 2950 6100 2850
Wire Wire Line
	4700 3300 4750 3300
Wire Wire Line
	4700 3600 4750 3600
Wire Wire Line
	4700 3700 4750 3700
Wire Wire Line
	4700 3800 4750 3800
Wire Wire Line
	3500 4050 4750 4050
Wire Wire Line
	4700 4150 4750 4150
Wire Wire Line
	4700 4350 4750 4350
NoConn ~ 6000 3650
Wire Wire Line
	5250 4700 5250 4750
Wire Wire Line
	5800 4150 5750 4150
Wire Wire Line
	5800 4350 5750 4350
Wire Wire Line
	5800 4450 5750 4450
$Comp
L Device:C_Small C3
U 1 1 653BD83F
P 1800 4750
F 0 "C3" H 1892 4796 50  0000 L CNN
F 1 "0.1uF" H 1892 4705 50  0000 L CNN
F 2 "" H 1800 4750 50  0001 C CNN
F 3 "~" H 1800 4750 50  0001 C CNN
	1    1800 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 653BE16A
P 2200 4750
F 0 "C4" H 2292 4796 50  0000 L CNN
F 1 "0.1uF" H 2292 4705 50  0000 L CNN
F 2 "" H 2200 4750 50  0001 C CNN
F 3 "~" H 2200 4750 50  0001 C CNN
	1    2200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4950 1400 4900
Wire Wire Line
	1600 4600 1800 4600
Wire Wire Line
	2200 4600 2200 4650
Wire Wire Line
	1800 4650 1800 4600
Wire Wire Line
	1800 4850 1800 4900
Wire Wire Line
	2200 4850 2200 4900
Connection ~ 1400 4600
Connection ~ 1400 4900
Connection ~ 1800 4600
Connection ~ 1800 4900
Connection ~ 2200 4900
Wire Wire Line
	2200 4900 2500 4900
Wire Wire Line
	1400 4900 1800 4900
Wire Wire Line
	1800 4600 2200 4600
Wire Wire Line
	1800 4900 2200 4900
Wire Wire Line
	2500 4550 2500 4600
Wire Wire Line
	2500 4600 2200 4600
Connection ~ 2200 4600
Text Notes 1300 5350 0    50   ~ 0
Decoupling caps.  Place on on the\npower rail near the Vcc of each chip.
Text Label 3050 1900 0    50   ~ 0
D0
Text Label 3050 2000 0    50   ~ 0
D1
Text Label 3050 2100 0    50   ~ 0
D2
Text Label 3050 2200 0    50   ~ 0
D3
Text Label 3050 2300 0    50   ~ 0
D4
Text Label 3050 2400 0    50   ~ 0
D5
Text Label 3050 2500 0    50   ~ 0
D6
Text Label 3050 2600 0    50   ~ 0
D7
Wire Wire Line
	2950 1900 3200 1900
Wire Wire Line
	2950 2000 3200 2000
Wire Wire Line
	2950 2100 3200 2100
Wire Wire Line
	2950 2200 3200 2200
Wire Wire Line
	2950 2300 3200 2300
Wire Wire Line
	2950 2400 3200 2400
Wire Wire Line
	2950 2500 3200 2500
Wire Wire Line
	2950 2600 3200 2600
Entry Wire Line
	1500 1800 1600 1900
Entry Wire Line
	1500 1900 1600 2000
Entry Wire Line
	1500 2000 1600 2100
Entry Wire Line
	1500 2100 1600 2200
Entry Wire Line
	1500 2200 1600 2300
Entry Wire Line
	1500 2300 1600 2400
Entry Wire Line
	1500 2400 1600 2500
Entry Wire Line
	1500 2500 1600 2600
Entry Wire Line
	1500 2600 1600 2700
Entry Wire Line
	1500 2700 1600 2800
Entry Wire Line
	1500 2800 1600 2900
Entry Wire Line
	1500 2900 1600 3000
Entry Wire Line
	1500 3000 1600 3100
Entry Wire Line
	1500 3100 1600 3200
Entry Wire Line
	1500 3200 1600 3300
Wire Wire Line
	1600 1900 1950 1900
Text Label 1650 1900 0    50   ~ 0
A0
Wire Wire Line
	1950 2000 1600 2000
Wire Wire Line
	1600 2100 1950 2100
Wire Wire Line
	1600 2200 1950 2200
Wire Wire Line
	1600 2300 1950 2300
Wire Wire Line
	1600 2400 1950 2400
Wire Wire Line
	1600 2500 1950 2500
Wire Wire Line
	1600 2600 1950 2600
Text Label 1650 2000 0    50   ~ 0
A1
Text Label 1650 2100 0    50   ~ 0
A2
Text Label 1650 2200 0    50   ~ 0
A3
Text Label 1650 2300 0    50   ~ 0
A4
Text Label 1650 2400 0    50   ~ 0
A5
Text Label 1650 2500 0    50   ~ 0
A6
Text Label 1650 2600 0    50   ~ 0
A7
Wire Wire Line
	1600 2700 1950 2700
Wire Wire Line
	1600 2800 1950 2800
Wire Wire Line
	1950 2900 1600 2900
Wire Wire Line
	1950 3000 1600 3000
Wire Wire Line
	1600 3100 1950 3100
Wire Wire Line
	1600 3200 1950 3200
Wire Wire Line
	1600 3300 1950 3300
Text Label 1650 2700 0    50   ~ 0
A8
Text Label 1650 2800 0    50   ~ 0
A9
Text Label 1650 2900 0    50   ~ 0
A10
Text Label 1650 3000 0    50   ~ 0
A11
Text Label 1650 3100 0    50   ~ 0
A12
Text Label 1650 3200 0    50   ~ 0
A13
Text Label 1650 3300 0    50   ~ 0
A14
Text GLabel 5800 4450 2    50   Output ~ 0
~RD
Text GLabel 3000 3000 2    50   Input ~ 0
~RD
Wire Wire Line
	2950 3000 3000 3000
Wire Wire Line
	2950 3100 3350 3100
Wire Wire Line
	3350 3100 3350 3050
$Comp
L power:+5V #PWR014
U 1 1 654D774D
P 3350 3050
F 0 "#PWR014" H 3350 2900 50  0001 C CNN
F 1 "+5V" H 3365 3223 50  0000 C CNN
F 2 "" H 3350 3050 50  0001 C CNN
F 3 "" H 3350 3050 50  0001 C CNN
	1    3350 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 654D7CBE
P 3550 3000
F 0 "#PWR013" H 3550 2750 50  0001 C CNN
F 1 "GND" H 3555 2827 50  0000 C CNN
F 2 "" H 3550 3000 50  0001 C CNN
F 3 "" H 3550 3000 50  0001 C CNN
	1    3550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2800 2950 2800
Wire Wire Line
	3550 3000 3550 2800
Wire Wire Line
	4350 3350 4350 3300
Connection ~ 4350 3300
$Comp
L power:+5V #PWR011
U 1 1 654F2831
P 7050 1550
F 0 "#PWR011" H 7050 1400 50  0001 C CNN
F 1 "+5V" H 7065 1723 50  0000 C CNN
F 2 "" H 7050 1550 50  0001 C CNN
F 3 "" H 7050 1550 50  0001 C CNN
	1    7050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1550 7050 1600
$Comp
L power:+5V #PWR012
U 1 1 654FB7F8
P 2450 1650
F 0 "#PWR012" H 2450 1500 50  0001 C CNN
F 1 "+5V" H 2465 1823 50  0000 C CNN
F 2 "" H 2450 1650 50  0001 C CNN
F 3 "" H 2450 1650 50  0001 C CNN
	1    2450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1650 2450 1700
$Comp
L power:GND #PWR016
U 1 1 655058A8
P 2450 3550
F 0 "#PWR016" H 2450 3300 50  0001 C CNN
F 1 "GND" H 2455 3377 50  0000 C CNN
F 2 "" H 2450 3550 50  0001 C CNN
F 3 "" H 2450 3550 50  0001 C CNN
	1    2450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3500 2450 3550
$Comp
L power:GND #PWR015
U 1 1 6550F388
P 7050 3300
F 0 "#PWR015" H 7050 3050 50  0001 C CNN
F 1 "GND" H 7055 3127 50  0000 C CNN
F 2 "" H 7050 3300 50  0001 C CNN
F 3 "" H 7050 3300 50  0001 C CNN
	1    7050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3250 7050 3300
Connection ~ 7050 3250
NoConn ~ 5800 4350
$Comp
L Device:R_Small_US R1
U 1 1 655859C5
P 3900 5350
F 0 "R1" V 3850 5200 50  0000 C CNN
F 1 "1K" V 3850 5500 50  0000 C CNN
F 2 "" H 3900 5350 50  0001 C CNN
F 3 "~" H 3900 5350 50  0001 C CNN
	1    3900 5350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 65586A0A
P 4500 5500
F 0 "SW1" H 4500 5785 50  0000 C CNN
F 1 "Reset" H 4500 5694 50  0000 C CNN
F 2 "" H 4500 5700 50  0001 C CNN
F 3 "~" H 4500 5700 50  0001 C CNN
	1    4500 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6558F852
P 4750 5550
F 0 "#PWR05" H 4750 5300 50  0001 C CNN
F 1 "GND" H 4755 5377 50  0000 C CNN
F 2 "" H 4750 5550 50  0001 C CNN
F 3 "" H 4750 5550 50  0001 C CNN
	1    4750 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5200 4150 5350
Wire Wire Line
	4150 5350 4000 5350
Wire Wire Line
	4750 5550 4750 5500
Wire Wire Line
	4750 5500 4700 5500
Wire Wire Line
	3800 5350 3500 5350
Connection ~ 3500 5350
Wire Wire Line
	3500 5350 3500 5500
Wire Wire Line
	3500 5500 4300 5500
Text Notes 3850 5650 0    50   ~ 0
Reset Button
Text Notes 7200 3300 0    50   ~ 0
Address\nLatch
Text Notes 2200 1400 0    50   ~ 0
ROM 0000-7FFF\nand 8000-FFFF
Wire Wire Line
	3850 4350 3850 4450
Wire Wire Line
	4750 4450 3850 4450
Connection ~ 3850 4450
Wire Wire Line
	3850 4450 3850 4500
NoConn ~ 4700 3400
Wire Wire Line
	4700 3400 4750 3400
Wire Wire Line
	3500 4050 3500 5350
Wire Bus Line
	6100 2800 6100 3550
Wire Bus Line
	3300 1200 3300 2650
Wire Bus Line
	7850 1000 7850 3550
Wire Bus Line
	6250 1200 6250 2600
Wire Bus Line
	1500 1000 1500 3350
$EndSCHEMATC
