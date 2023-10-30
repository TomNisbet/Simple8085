EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Simple8085 ROM test serial"
Date "2023-10-29"
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
P 5750 3050
F 0 "U1" H 6050 4550 50  0000 C CNN
F 1 "8085" H 6050 4450 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 5750 1400 50  0001 C CNN
F 3 "http://datasheets.chipdb.org/Intel/MCS-85/intel-8085.pdf" H 5750 3350 50  0001 C CNN
	1    5750 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6523E815
P 850 7150
F 0 "C2" H 942 7196 50  0000 L CNN
F 1 "0.1uF" H 942 7105 50  0000 L CNN
F 2 "" H 850 7150 50  0001 C CNN
F 3 "~" H 850 7150 50  0001 C CNN
	1    850  7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6523FE89
P 4850 3200
F 0 "C1" H 4942 3246 50  0000 L CNN
F 1 "22pF" H 4942 3155 50  0000 L CNN
F 2 "" H 4850 3200 50  0001 C CNN
F 3 "~" H 4850 3200 50  0001 C CNN
	1    4850 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 652417E2
P 4950 4350
F 0 "D1" H 4850 4400 50  0000 C CNN
F 1 "LED" H 5050 4400 50  0000 C CNN
F 2 "" V 4950 4350 50  0001 C CNN
F 3 "~" V 4950 4350 50  0001 C CNN
	1    4950 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6524214B
P 5750 4800
F 0 "#PWR06" H 5750 4550 50  0001 C CNN
F 1 "GND" H 5755 4627 50  0000 C CNN
F 2 "" H 5750 4800 50  0001 C CNN
F 3 "" H 5750 4800 50  0001 C CNN
	1    5750 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 652423B5
P 5750 1550
F 0 "#PWR01" H 5750 1400 50  0001 C CNN
F 1 "+5V" H 5765 1723 50  0000 C CNN
F 2 "" H 5750 1550 50  0001 C CNN
F 3 "" H 5750 1550 50  0001 C CNN
	1    5750 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1550 5750 1600
Wire Wire Line
	5250 1900 5200 1900
Wire Wire Line
	5200 1900 5200 1600
Wire Wire Line
	5200 1600 5750 1600
Connection ~ 5750 1600
Wire Wire Line
	5750 1600 5750 1650
Wire Wire Line
	5250 2300 5150 2300
Wire Wire Line
	5150 2300 5150 2400
Wire Wire Line
	5150 2700 5250 2700
Wire Wire Line
	5250 2600 5150 2600
Connection ~ 5150 2600
Wire Wire Line
	5150 2600 5150 2700
Wire Wire Line
	5250 2500 5150 2500
Connection ~ 5150 2500
Wire Wire Line
	5150 2500 5150 2600
Wire Wire Line
	5250 2400 5150 2400
Connection ~ 5150 2400
Wire Wire Line
	5150 2400 5150 2500
$Comp
L power:GND #PWR02
U 1 1 65244B98
P 5000 2500
F 0 "#PWR02" H 5000 2250 50  0001 C CNN
F 1 "GND" H 5005 2327 50  0000 C CNN
F 2 "" H 5000 2500 50  0001 C CNN
F 3 "" H 5000 2500 50  0001 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2400 5000 2400
Wire Wire Line
	5000 2400 5000 2500
NoConn ~ 6300 4150
NoConn ~ 5200 3800
NoConn ~ 5200 3700
NoConn ~ 5200 3600
NoConn ~ 5200 3300
NoConn ~ 5200 4150
Wire Wire Line
	4800 2900 5100 2900
Wire Wire Line
	5100 2900 5100 2950
Wire Wire Line
	5100 2950 5250 2950
Wire Wire Line
	4800 3100 4850 3100
Wire Wire Line
	5100 3100 5100 3050
Wire Wire Line
	5100 3050 5250 3050
$Comp
L Device:Crystal_Small Y1
U 1 1 65249673
P 4800 3000
F 0 "Y1" V 4800 2700 50  0000 L CNN
F 1 "6.144MHz" V 4900 2550 50  0000 L CNN
F 2 "" H 4800 3000 50  0001 C CNN
F 3 "~" H 4800 3000 50  0001 C CNN
	1    4800 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6524BAF5
P 4850 3350
F 0 "#PWR03" H 4850 3100 50  0001 C CNN
F 1 "GND" H 4855 3177 50  0000 C CNN
F 2 "" H 4850 3350 50  0001 C CNN
F 3 "" H 4850 3350 50  0001 C CNN
	1    4850 3350
	1    0    0    -1  
$EndComp
Connection ~ 4850 3100
Wire Wire Line
	4850 3100 5100 3100
Wire Wire Line
	4850 3300 4850 3250
Wire Wire Line
	6250 1900 6650 1900
Wire Wire Line
	6250 2000 6650 2000
Wire Wire Line
	6250 2100 6650 2100
Wire Wire Line
	6250 2200 6650 2200
Wire Wire Line
	6250 2300 6650 2300
Wire Wire Line
	6250 2400 6650 2400
Wire Wire Line
	6250 2500 6650 2500
Wire Wire Line
	6250 2600 6650 2600
$Comp
L power:GND #PWR04
U 1 1 65258AB5
P 4200 4500
F 0 "#PWR04" H 4200 4250 50  0001 C CNN
F 1 "GND" H 4205 4327 50  0000 C CNN
F 2 "" H 4200 4500 50  0001 C CNN
F 3 "" H 4200 4500 50  0001 C CNN
	1    4200 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 4350 4550 4350
$Comp
L power:+5V #PWR07
U 1 1 6525F3C6
P 850 6950
F 0 "#PWR07" H 850 6800 50  0001 C CNN
F 1 "+5V" H 865 7123 50  0000 C CNN
F 2 "" H 850 6950 50  0001 C CNN
F 3 "" H 850 6950 50  0001 C CNN
	1    850  6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 652601FB
P 850 7350
F 0 "#PWR08" H 850 7100 50  0001 C CNN
F 1 "GND" H 855 7177 50  0000 C CNN
F 2 "" H 850 7350 50  0001 C CNN
F 3 "" H 850 7350 50  0001 C CNN
	1    850  7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7250 850  7300
$Comp
L power:+5V #PWR010
U 1 1 652694E6
P 8450 5700
F 0 "#PWR010" H 8450 5550 50  0001 C CNN
F 1 "+5V" H 8465 5873 50  0000 C CNN
F 2 "" H 8450 5700 50  0001 C CNN
F 3 "" H 8450 5700 50  0001 C CNN
	1    8450 5700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 6526D40F
P 4450 4350
F 0 "R2" V 4400 4200 50  0000 C CNN
F 1 "1K" V 4400 4500 50  0000 C CNN
F 2 "" H 4450 4350 50  0001 C CNN
F 3 "~" H 4450 4350 50  0001 C CNN
	1    4450 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4350 4200 4350
Wire Wire Line
	5250 2100 5150 2100
Wire Wire Line
	5150 2100 5150 2300
Connection ~ 5150 2300
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6527CC72
P 2750 6950
F 0 "#FLG0101" H 2750 7025 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 7050 50  0000 C CNN
F 2 "" H 2750 6950 50  0001 C CNN
F 3 "~" H 2750 6950 50  0001 C CNN
	1    2750 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7300 2750 7350
Wire Wire Line
	850  6950 850  7000
Wire Wire Line
	850  7000 850  7050
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6527D61C
P 2750 7350
F 0 "#FLG01" H 2750 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 7450 50  0000 C CNN
F 2 "" H 2750 7350 50  0001 C CNN
F 3 "~" H 2750 7350 50  0001 C CNN
	1    2750 7350
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS573 U2
U 1 1 652B7A39
P 7550 2400
F 0 "U2" H 7800 3200 50  0000 C CNN
F 1 "74LS573" H 7800 3100 50  0000 C CNN
F 2 "" H 7550 2400 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 7550 2400 50  0001 C CNN
	1    7550 2400
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
	7050 2800 6800 2800
Wire Wire Line
	6800 2800 6800 3900
Wire Wire Line
	6800 3900 6250 3900
Wire Wire Line
	7050 2900 7000 2900
Wire Wire Line
	7000 2900 7000 3250
Wire Wire Line
	7000 3250 7550 3250
Wire Wire Line
	7550 3250 7550 3200
Wire Bus Line
	6750 1200 3500 1200
Wire Bus Line
	6600 3550 8350 3550
Wire Bus Line
	8350 1000 1500 1000
Wire Wire Line
	6250 3450 6500 3450
Wire Wire Line
	6250 3350 6500 3350
Wire Wire Line
	6250 3250 6500 3250
Wire Wire Line
	6250 3150 6500 3150
Wire Wire Line
	6250 3050 6500 3050
Wire Wire Line
	6250 2950 6500 2950
Wire Wire Line
	6250 3650 6500 3650
Wire Wire Line
	6250 3550 6500 3550
Entry Wire Line
	6600 2950 6500 3050
Entry Wire Line
	6600 3050 6500 3150
Entry Wire Line
	6600 3150 6500 3250
Entry Wire Line
	6600 3250 6500 3350
Entry Wire Line
	6600 3350 6500 3450
Entry Wire Line
	6600 3450 6500 3550
Text Label 6350 2950 0    50   ~ 0
A8
Text Label 6350 3050 0    50   ~ 0
A9
Text Label 6350 3150 0    50   ~ 0
A10
Text Label 6350 3250 0    50   ~ 0
A11
Text Label 6350 3350 0    50   ~ 0
A12
Text Label 6350 3450 0    50   ~ 0
A13
Text Label 6350 3550 0    50   ~ 0
A14
Text Label 6350 3650 0    50   ~ 0
A15
Entry Wire Line
	6650 1900 6750 1800
Entry Wire Line
	6650 2000 6750 1900
Entry Wire Line
	6650 2100 6750 2000
Entry Wire Line
	6650 2200 6750 2100
Entry Wire Line
	6650 2300 6750 2200
Entry Wire Line
	6650 2400 6750 2300
Entry Wire Line
	6650 2500 6750 2400
Entry Wire Line
	6650 2600 6750 2500
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
	6850 1900 7050 1900
Entry Wire Line
	6750 1800 6850 1900
Entry Wire Line
	6750 1900 6850 2000
Entry Wire Line
	6750 2000 6850 2100
Entry Wire Line
	6750 2100 6850 2200
Entry Wire Line
	6750 2200 6850 2300
Entry Wire Line
	6750 2300 6850 2400
Entry Wire Line
	6750 2400 6850 2500
Entry Wire Line
	6750 2500 6850 2600
Wire Wire Line
	6850 2000 7050 2000
Wire Wire Line
	6850 2100 7050 2100
Wire Wire Line
	6850 2200 7050 2200
Wire Wire Line
	6850 2300 7050 2300
Wire Wire Line
	6850 2400 7050 2400
Wire Wire Line
	6850 2500 7050 2500
Wire Wire Line
	6850 2600 7050 2600
Text Label 6900 1900 0    50   ~ 0
D0
Text Label 6900 2000 0    50   ~ 0
D1
Text Label 6900 2100 0    50   ~ 0
D2
Text Label 6900 2200 0    50   ~ 0
D3
Text Label 6900 2300 0    50   ~ 0
D4
Text Label 6900 2400 0    50   ~ 0
D5
Text Label 6900 2500 0    50   ~ 0
D6
Text Label 6900 2600 0    50   ~ 0
D7
Wire Wire Line
	8050 1900 8250 1900
Entry Wire Line
	8350 1800 8250 1900
Entry Wire Line
	8350 1900 8250 2000
Entry Wire Line
	8350 2000 8250 2100
Entry Wire Line
	8350 2100 8250 2200
Entry Wire Line
	8350 2200 8250 2300
Entry Wire Line
	8350 2300 8250 2400
Entry Wire Line
	8350 2400 8250 2500
Entry Wire Line
	8350 2500 8250 2600
Wire Wire Line
	8250 2000 8050 2000
Wire Wire Line
	8050 2100 8250 2100
Wire Wire Line
	8050 2200 8250 2200
Wire Wire Line
	8050 2300 8250 2300
Wire Wire Line
	8050 2400 8250 2400
Wire Wire Line
	8050 2500 8250 2500
Wire Wire Line
	8050 2600 8250 2600
Text Label 8100 1900 0    50   ~ 0
A0
Text Label 8100 2000 0    50   ~ 0
A1
Text Label 8100 2100 0    50   ~ 0
A2
Text Label 8100 2200 0    50   ~ 0
A3
Text Label 8100 2300 0    50   ~ 0
A4
Text Label 8100 2400 0    50   ~ 0
A5
Text Label 8100 2500 0    50   ~ 0
A6
Text Label 8100 2600 0    50   ~ 0
A7
Text Label 7500 1000 0    50   ~ 0
A[0..14]
Text Label 6350 1200 0    50   ~ 0
D[0..7]
Entry Wire Line
	3500 1800 3400 1900
Entry Wire Line
	3500 1900 3400 2000
Entry Wire Line
	3500 2000 3400 2100
Entry Wire Line
	3500 2100 3400 2200
Entry Wire Line
	3500 2200 3400 2300
Entry Wire Line
	3500 2300 3400 2400
Entry Wire Line
	3500 2400 3400 2500
Entry Wire Line
	3500 2500 3400 2600
Entry Wire Line
	6500 2950 6600 2850
Wire Wire Line
	5200 3300 5250 3300
Wire Wire Line
	5200 3600 5250 3600
Wire Wire Line
	5200 3700 5250 3700
Wire Wire Line
	5200 3800 5250 3800
Wire Wire Line
	3850 4050 5250 4050
Wire Wire Line
	5200 4150 5250 4150
Wire Wire Line
	5050 4350 5100 4350
Wire Wire Line
	5750 4700 5750 4750
Wire Wire Line
	6300 4150 6250 4150
Wire Wire Line
	6300 4350 6250 4350
Wire Wire Line
	6300 4450 6250 4450
$Comp
L Device:C_Small C3
U 1 1 653BD83F
P 1250 7150
F 0 "C3" H 1342 7196 50  0000 L CNN
F 1 "0.1uF" H 1342 7105 50  0000 L CNN
F 2 "" H 1250 7150 50  0001 C CNN
F 3 "~" H 1250 7150 50  0001 C CNN
	1    1250 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 653BE16A
P 1650 7150
F 0 "C4" H 1742 7196 50  0000 L CNN
F 1 "0.1uF" H 1742 7105 50  0000 L CNN
F 2 "" H 1650 7150 50  0001 C CNN
F 3 "~" H 1650 7150 50  0001 C CNN
	1    1650 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7350 850  7300
Wire Wire Line
	1650 7000 1650 7050
Wire Wire Line
	1250 7050 1250 7000
Wire Wire Line
	1250 7250 1250 7300
Wire Wire Line
	1650 7250 1650 7300
Connection ~ 850  7000
Connection ~ 850  7300
Connection ~ 1250 7000
Connection ~ 1250 7300
Wire Wire Line
	2450 7300 2750 7300
Wire Wire Line
	850  7300 1250 7300
Wire Wire Line
	1250 7000 1650 7000
Wire Wire Line
	1250 7300 1650 7300
Wire Wire Line
	2750 6950 2750 7000
Wire Wire Line
	2750 7000 2450 7000
Text Notes 1150 7700 0    50   ~ 0
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
	2950 2600 3400 2600
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
Text GLabel 6300 4450 2    50   Output ~ 0
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
Wire Wire Line
	3000 2800 2950 2800
Wire Wire Line
	4850 3350 4850 3300
Connection ~ 4850 3300
$Comp
L power:+5V #PWR011
U 1 1 654F2831
P 7550 1550
F 0 "#PWR011" H 7550 1400 50  0001 C CNN
F 1 "+5V" H 7565 1723 50  0000 C CNN
F 2 "" H 7550 1550 50  0001 C CNN
F 3 "" H 7550 1550 50  0001 C CNN
	1    7550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1550 7550 1600
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
P 7550 3300
F 0 "#PWR015" H 7550 3050 50  0001 C CNN
F 1 "GND" H 7555 3127 50  0000 C CNN
F 2 "" H 7550 3300 50  0001 C CNN
F 3 "" H 7550 3300 50  0001 C CNN
	1    7550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3250 7550 3300
Connection ~ 7550 3250
$Comp
L Device:R_Small_US R1
U 1 1 655859C5
P 8450 5950
F 0 "R1" V 8400 5850 50  0000 C CNN
F 1 "10K" V 8400 6100 50  0000 C CNN
F 2 "" H 8450 5950 50  0001 C CNN
F 3 "~" H 8450 5950 50  0001 C CNN
	1    8450 5950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 65586A0A
P 9300 6100
F 0 "SW1" H 9300 6385 50  0000 C CNN
F 1 "Reset" H 9300 6294 50  0000 C CNN
F 2 "" H 9300 6300 50  0001 C CNN
F 3 "~" H 9300 6300 50  0001 C CNN
	1    9300 6100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6558F852
P 9550 6450
F 0 "#PWR05" H 9550 6200 50  0001 C CNN
F 1 "GND" H 9555 6277 50  0000 C CNN
F 2 "" H 9550 6450 50  0001 C CNN
F 3 "" H 9550 6450 50  0001 C CNN
	1    9550 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5700 8450 5850
Wire Wire Line
	9550 6100 9500 6100
Wire Wire Line
	8450 6050 8450 6100
Text Notes 7750 6600 0    50   ~ 0
Power-on reset and button
Text Notes 7700 3300 0    50   ~ 0
Address\nLatch
Text Notes 1700 1700 0    50   ~ 0
ROM 0000-7FFF
NoConn ~ 5200 3400
Wire Wire Line
	5200 3400 5250 3400
Wire Wire Line
	4200 4350 4200 4500
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 6540797A
P 6450 5100
F 0 "J1" H 6530 5092 50  0000 L CNN
F 1 "FTDI" H 6530 5001 50  0000 L CNN
F 2 "" H 6450 5100 50  0001 C CNN
F 3 "~" H 6450 5100 50  0001 C CNN
	1    6450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4450 5200 4450
Wire Wire Line
	5200 4450 5200 5200
Wire Wire Line
	5200 5200 6250 5200
Wire Wire Line
	5100 4350 5100 5300
Wire Wire Line
	5100 5300 6250 5300
Connection ~ 5100 4350
Wire Wire Line
	5100 4350 5250 4350
Text Label 5800 5300 0    50   ~ 0
FTDI-RX
Text Label 5800 5200 0    50   ~ 0
FTDI-TX
Wire Wire Line
	5750 4750 6150 4750
Wire Wire Line
	6150 4750 6150 4900
Wire Wire Line
	6150 4900 6250 4900
Connection ~ 5750 4750
Wire Wire Line
	5750 4750 5750 4800
NoConn ~ 6250 5000
NoConn ~ 6250 5100
NoConn ~ 6250 5400
Text Notes 5850 5650 0    50   ~ 0
Note: FTDI pin numbers\nmay differ from this
$Comp
L Memory_RAM:KM62256CLP U4
U 1 1 653F9C8F
P 2450 5000
F 0 "U4" H 2600 5950 50  0000 C CNN
F 1 "KM62256" H 2700 5850 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 2450 4900 50  0001 C CNN
F 3 "https://www.futurlec.com/Datasheet/Memory/62256.pdf" H 2450 4900 50  0001 C CNN
	1    2450 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 1 1 653FB0E4
P 9500 2250
F 0 "U5" H 9550 2400 50  0000 C CNN
F 1 "74LS14" H 9600 2100 50  0000 C CNN
F 2 "" H 9500 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 9500 2250 50  0001 C CNN
	1    9500 2250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 2 1 653FC840
P 8050 6100
F 0 "U5" H 8100 6250 50  0000 C CNN
F 1 "74LS14" H 8150 5950 50  0000 C CNN
F 2 "" H 8050 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 8050 6100 50  0001 C CNN
	2    8050 6100
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 3 1 653FE36D
P 7400 6100
F 0 "U5" H 7450 6250 50  0000 C CNN
F 1 "74LS14" H 7500 5950 50  0000 C CNN
F 2 "" H 7400 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 7400 6100 50  0001 C CNN
	3    7400 6100
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 4 1 653FF134
P 9500 2750
F 0 "U5" H 9550 2900 50  0000 C CNN
F 1 "74LS14" H 9600 2600 50  0000 C CNN
F 2 "" H 9500 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 9500 2750 50  0001 C CNN
	4    9500 2750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 5 1 65400927
P 7750 4200
F 0 "U5" H 7800 4350 50  0000 C CNN
F 1 "74LS14" H 7850 4050 50  0000 C CNN
F 2 "" H 7750 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 7750 4200 50  0001 C CNN
	5    7750 4200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 6 1 654022E9
P 9500 3250
F 0 "U5" H 9550 3400 50  0000 C CNN
F 1 "74LS14" H 9600 3100 50  0000 C CNN
F 2 "" H 9500 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 9500 3250 50  0001 C CNN
	6    9500 3250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 7 1 65403E15
P 3200 7150
F 0 "U5" H 3430 7196 50  0000 L CNN
F 1 "74LS14" H 3430 7105 50  0000 L CNN
F 2 "" H 3200 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 3200 7150 50  0001 C CNN
	7    3200 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7000 1250 7000
$Comp
L Device:C_Small C5
U 1 1 65417851
P 2050 7150
F 0 "C5" H 2142 7196 50  0000 L CNN
F 1 "0.1uF" H 2142 7105 50  0000 L CNN
F 2 "" H 2050 7150 50  0001 C CNN
F 3 "~" H 2050 7150 50  0001 C CNN
	1    2050 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 65417D5D
P 2450 7150
F 0 "C6" H 2542 7196 50  0000 L CNN
F 1 "0.1uF" H 2542 7105 50  0000 L CNN
F 2 "" H 2450 7150 50  0001 C CNN
F 3 "~" H 2450 7150 50  0001 C CNN
	1    2450 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7000 2450 7050
Wire Wire Line
	2050 7050 2050 7000
Wire Wire Line
	2050 7250 2050 7300
Wire Wire Line
	2450 7250 2450 7300
Connection ~ 2050 7000
Connection ~ 2050 7300
Wire Wire Line
	1650 7300 2050 7300
Wire Wire Line
	2050 7000 2450 7000
Wire Wire Line
	2050 7300 2450 7300
Wire Wire Line
	1650 7000 2050 7000
Connection ~ 1650 7000
Connection ~ 1650 7300
Connection ~ 2450 7000
Connection ~ 2450 7300
Wire Wire Line
	2750 7000 2900 7000
Wire Wire Line
	2900 7000 2900 6600
Wire Wire Line
	2900 6600 3200 6600
Wire Wire Line
	3200 6600 3200 6650
Connection ~ 2750 7000
Wire Wire Line
	3200 7650 3200 7700
Wire Wire Line
	3200 7700 2900 7700
Wire Wire Line
	2900 7700 2900 7300
Wire Wire Line
	2900 7300 2750 7300
Connection ~ 2750 7300
Wire Wire Line
	8100 4200 8050 4200
Text GLabel 8100 4200 2    50   Output ~ 0
~RAMEN
Text GLabel 8100 3900 2    50   Output ~ 0
~ROMEN
Wire Wire Line
	8100 3900 7350 3900
Wire Wire Line
	7350 3900 7350 4050
Wire Wire Line
	7350 4200 7450 4200
Text GLabel 3000 2800 2    50   Input ~ 0
~ROMEN
Wire Wire Line
	2950 2500 3400 2500
Wire Wire Line
	2950 2400 3400 2400
Wire Wire Line
	2950 2300 3400 2300
Wire Wire Line
	2950 2200 3400 2200
Wire Wire Line
	2950 2100 3400 2100
Wire Wire Line
	2950 2000 3400 2000
Wire Wire Line
	2950 1900 3400 1900
Wire Wire Line
	6500 4050 7350 4050
Wire Wire Line
	6500 3650 6500 4050
Connection ~ 7350 4050
Wire Wire Line
	7350 4050 7350 4200
Entry Wire Line
	3500 4200 3400 4300
Entry Wire Line
	3500 4300 3400 4400
Entry Wire Line
	3500 4400 3400 4500
Entry Wire Line
	3500 4500 3400 4600
Entry Wire Line
	3500 4600 3400 4700
Entry Wire Line
	3500 4700 3400 4800
Entry Wire Line
	3500 4800 3400 4900
Entry Wire Line
	3500 4900 3400 5000
Text Label 3050 4300 0    50   ~ 0
D0
Text Label 3050 4400 0    50   ~ 0
D1
Text Label 3050 4500 0    50   ~ 0
D2
Text Label 3050 4600 0    50   ~ 0
D3
Text Label 3050 4700 0    50   ~ 0
D4
Text Label 3050 4800 0    50   ~ 0
D5
Text Label 3050 4900 0    50   ~ 0
D6
Text Label 3050 5000 0    50   ~ 0
D7
Wire Wire Line
	2950 5000 3400 5000
Wire Wire Line
	2950 4900 3400 4900
Wire Wire Line
	2950 4800 3400 4800
Wire Wire Line
	2950 4700 3400 4700
Wire Wire Line
	2950 4600 3400 4600
Wire Wire Line
	2950 4500 3400 4500
Wire Wire Line
	2950 4400 3400 4400
Wire Wire Line
	2950 4300 3400 4300
Entry Wire Line
	1500 4200 1600 4300
Entry Wire Line
	1500 4300 1600 4400
Entry Wire Line
	1500 4400 1600 4500
Entry Wire Line
	1500 4500 1600 4600
Entry Wire Line
	1500 4600 1600 4700
Entry Wire Line
	1500 4700 1600 4800
Entry Wire Line
	1500 4800 1600 4900
Entry Wire Line
	1500 4900 1600 5000
Entry Wire Line
	1500 5000 1600 5100
Entry Wire Line
	1500 5100 1600 5200
Entry Wire Line
	1500 5200 1600 5300
Entry Wire Line
	1500 5300 1600 5400
Entry Wire Line
	1500 5400 1600 5500
Entry Wire Line
	1500 5500 1600 5600
Entry Wire Line
	1500 5600 1600 5700
Wire Wire Line
	1600 4300 1950 4300
Text Label 1650 4300 0    50   ~ 0
A0
Wire Wire Line
	1950 4400 1600 4400
Wire Wire Line
	1600 4500 1950 4500
Wire Wire Line
	1600 4600 1950 4600
Wire Wire Line
	1600 4700 1950 4700
Wire Wire Line
	1600 4800 1950 4800
Wire Wire Line
	1600 4900 1950 4900
Wire Wire Line
	1600 5000 1950 5000
Text Label 1650 4400 0    50   ~ 0
A1
Text Label 1650 4500 0    50   ~ 0
A2
Text Label 1650 4600 0    50   ~ 0
A3
Text Label 1650 4700 0    50   ~ 0
A4
Text Label 1650 4800 0    50   ~ 0
A5
Text Label 1650 4900 0    50   ~ 0
A6
Text Label 1650 5000 0    50   ~ 0
A7
Wire Wire Line
	1600 5100 1950 5100
Wire Wire Line
	1600 5200 1950 5200
Wire Wire Line
	1950 5300 1600 5300
Wire Wire Line
	1950 5400 1600 5400
Wire Wire Line
	1600 5500 1950 5500
Wire Wire Line
	1600 5600 1950 5600
Wire Wire Line
	1600 5700 1950 5700
Text Label 1650 5100 0    50   ~ 0
A8
Text Label 1650 5200 0    50   ~ 0
A9
Text Label 1650 5300 0    50   ~ 0
A10
Text Label 1650 5400 0    50   ~ 0
A11
Text Label 1650 5500 0    50   ~ 0
A12
Text Label 1650 5600 0    50   ~ 0
A13
Text Label 1650 5700 0    50   ~ 0
A14
$Comp
L power:GND #PWR013
U 1 1 6559A633
P 2450 5950
F 0 "#PWR013" H 2450 5700 50  0001 C CNN
F 1 "GND" H 2455 5777 50  0000 C CNN
F 2 "" H 2450 5950 50  0001 C CNN
F 3 "" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5900 2450 5950
$Comp
L power:+5V #PWR09
U 1 1 655A90DD
P 2450 4050
F 0 "#PWR09" H 2450 3900 50  0001 C CNN
F 1 "+5V" H 2465 4223 50  0000 C CNN
F 2 "" H 2450 4050 50  0001 C CNN
F 3 "" H 2450 4050 50  0001 C CNN
	1    2450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4050 2450 4100
Text Notes 1700 4100 0    50   ~ 0
RAM 8000-FFFF
Wire Wire Line
	3000 5200 2950 5200
Text GLabel 3000 5200 2    50   Input ~ 0
~RAMEN
Text GLabel 3000 5400 2    50   Input ~ 0
~RD
Wire Wire Line
	2950 5400 3000 5400
Text GLabel 3000 5500 2    50   Input ~ 0
~WR
Wire Wire Line
	2950 5500 3000 5500
Wire Wire Line
	7700 6100 7750 6100
$Comp
L Device:C_Small C7
U 1 1 65684E42
P 8600 6250
F 0 "C7" H 8692 6296 50  0000 L CNN
F 1 "47uF" H 8692 6205 50  0000 L CNN
F 2 "" H 8600 6250 50  0001 C CNN
F 3 "~" H 8600 6250 50  0001 C CNN
	1    8600 6250
	1    0    0    -1  
$EndComp
Connection ~ 8600 6100
Wire Wire Line
	8600 6100 9000 6100
$Comp
L Diode:1N4001 D2
U 1 1 656869D8
P 9000 6250
F 0 "D2" V 8954 6330 50  0000 L CNN
F 1 "1N4001" V 9045 6330 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9000 6075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9000 6250 50  0001 C CNN
	1    9000 6250
	0    1    1    0   
$EndComp
Connection ~ 9000 6100
Wire Wire Line
	9000 6100 9100 6100
Wire Wire Line
	9550 6450 9000 6450
Wire Wire Line
	9550 6100 9550 6450
Wire Wire Line
	9000 6400 9000 6450
Connection ~ 9000 6450
Wire Wire Line
	9000 6450 8600 6450
Wire Wire Line
	8350 6100 8450 6100
Connection ~ 8450 6100
Wire Wire Line
	8450 6100 8600 6100
Connection ~ 9550 6450
Wire Wire Line
	7100 6100 3850 6100
Wire Wire Line
	3850 4050 3850 6100
Wire Wire Line
	8600 6150 8600 6100
Wire Wire Line
	8600 6450 8600 6350
Wire Wire Line
	9200 3250 9200 2750
Connection ~ 9200 2250
Wire Wire Line
	9200 2250 9200 2100
Connection ~ 9200 2750
Wire Wire Line
	9200 2750 9200 2250
NoConn ~ 9800 2250
NoConn ~ 9800 2750
NoConn ~ 9800 3250
$Comp
L power:+5V #PWR0101
U 1 1 65794521
P 9200 2100
F 0 "#PWR0101" H 9200 1950 50  0001 C CNN
F 1 "+5V" H 9215 2273 50  0000 C CNN
F 2 "" H 9200 2100 50  0001 C CNN
F 3 "" H 9200 2100 50  0001 C CNN
	1    9200 2100
	1    0    0    -1  
$EndComp
Text GLabel 6300 4350 2    50   Output ~ 0
~WR
Wire Bus Line
	6600 2800 6600 3550
Wire Bus Line
	8350 1000 8350 3550
Wire Bus Line
	6750 1200 6750 2600
Wire Bus Line
	3500 1200 3500 5050
Wire Bus Line
	1500 1000 1500 5750
$EndSCHEMATC
