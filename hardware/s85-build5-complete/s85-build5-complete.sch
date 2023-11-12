EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Simple8085"
Date "2023-11-11"
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
P 5100 2750
F 0 "U1" H 5400 4250 50  0000 C CNN
F 1 "8085" H 5400 4150 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 5100 1100 50  0001 C CNN
F 3 "http://datasheets.chipdb.org/Intel/MCS-85/intel-8085.pdf" H 5100 3050 50  0001 C CNN
	1    5100 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6523E815
P 800 7350
F 0 "C2" H 892 7396 50  0000 L CNN
F 1 "0.1uF" H 892 7305 50  0000 L CNN
F 2 "" H 800 7350 50  0001 C CNN
F 3 "~" H 800 7350 50  0001 C CNN
	1    800  7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6523FE89
P 4200 2900
F 0 "C1" H 4292 2946 50  0000 L CNN
F 1 "22pF" H 4292 2855 50  0000 L CNN
F 2 "" H 4200 2900 50  0001 C CNN
F 3 "~" H 4200 2900 50  0001 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 652417E2
P 4300 4050
F 0 "D1" H 4200 4100 50  0000 C CNN
F 1 "LED" H 4400 4100 50  0000 C CNN
F 2 "" V 4300 4050 50  0001 C CNN
F 3 "~" V 4300 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6524214B
P 5100 4500
F 0 "#PWR06" H 5100 4250 50  0001 C CNN
F 1 "GND" H 5105 4327 50  0000 C CNN
F 2 "" H 5100 4500 50  0001 C CNN
F 3 "" H 5100 4500 50  0001 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 652423B5
P 5100 1250
F 0 "#PWR01" H 5100 1100 50  0001 C CNN
F 1 "+5V" H 5115 1423 50  0000 C CNN
F 2 "" H 5100 1250 50  0001 C CNN
F 3 "" H 5100 1250 50  0001 C CNN
	1    5100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1250 5100 1300
Wire Wire Line
	4600 1600 4550 1600
Wire Wire Line
	4550 1600 4550 1300
Wire Wire Line
	4550 1300 5100 1300
Connection ~ 5100 1300
Wire Wire Line
	5100 1300 5100 1350
Wire Wire Line
	4600 2000 4500 2000
Wire Wire Line
	4500 2000 4500 2100
Wire Wire Line
	4500 2400 4600 2400
Wire Wire Line
	4600 2300 4500 2300
Connection ~ 4500 2300
Wire Wire Line
	4500 2300 4500 2400
Wire Wire Line
	4600 2200 4500 2200
Connection ~ 4500 2200
Wire Wire Line
	4500 2200 4500 2300
Wire Wire Line
	4600 2100 4500 2100
Connection ~ 4500 2100
Wire Wire Line
	4500 2100 4500 2200
$Comp
L power:GND #PWR02
U 1 1 65244B98
P 4350 2200
F 0 "#PWR02" H 4350 1950 50  0001 C CNN
F 1 "GND" H 4355 2027 50  0000 C CNN
F 2 "" H 4350 2200 50  0001 C CNN
F 3 "" H 4350 2200 50  0001 C CNN
	1    4350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2100 4350 2100
Wire Wire Line
	4350 2100 4350 2200
NoConn ~ 4550 3500
NoConn ~ 4550 3400
NoConn ~ 4550 3300
NoConn ~ 4550 3000
Wire Wire Line
	4150 2600 4450 2600
Wire Wire Line
	4450 2600 4450 2650
Wire Wire Line
	4450 2650 4600 2650
Wire Wire Line
	4150 2800 4200 2800
Wire Wire Line
	4450 2800 4450 2750
Wire Wire Line
	4450 2750 4600 2750
$Comp
L Device:Crystal_Small Y1
U 1 1 65249673
P 4150 2700
F 0 "Y1" V 4150 2400 50  0000 L CNN
F 1 "6.144MHz" V 4250 2250 50  0000 L CNN
F 2 "" H 4150 2700 50  0001 C CNN
F 3 "~" H 4150 2700 50  0001 C CNN
	1    4150 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6524BAF5
P 4200 3050
F 0 "#PWR03" H 4200 2800 50  0001 C CNN
F 1 "GND" H 4205 2877 50  0000 C CNN
F 2 "" H 4200 3050 50  0001 C CNN
F 3 "" H 4200 3050 50  0001 C CNN
	1    4200 3050
	1    0    0    -1  
$EndComp
Connection ~ 4200 2800
Wire Wire Line
	4200 2800 4450 2800
Wire Wire Line
	4200 3000 4200 2950
Wire Wire Line
	5600 1600 6000 1600
Wire Wire Line
	5600 1700 6000 1700
Wire Wire Line
	5600 1800 6000 1800
Wire Wire Line
	5600 1900 6000 1900
Wire Wire Line
	5600 2000 6000 2000
Wire Wire Line
	5600 2100 6000 2100
Wire Wire Line
	5600 2200 6000 2200
Wire Wire Line
	5600 2300 6000 2300
$Comp
L power:GND #PWR04
U 1 1 65258AB5
P 3550 4250
F 0 "#PWR04" H 3550 4000 50  0001 C CNN
F 1 "GND" H 3555 4077 50  0000 C CNN
F 2 "" H 3550 4250 50  0001 C CNN
F 3 "" H 3550 4250 50  0001 C CNN
	1    3550 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4200 4050 3900 4050
$Comp
L power:+5V #PWR07
U 1 1 6525F3C6
P 800 7150
F 0 "#PWR07" H 800 7000 50  0001 C CNN
F 1 "+5V" H 815 7323 50  0000 C CNN
F 2 "" H 800 7150 50  0001 C CNN
F 3 "" H 800 7150 50  0001 C CNN
	1    800  7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 652601FB
P 800 7550
F 0 "#PWR08" H 800 7300 50  0001 C CNN
F 1 "GND" H 805 7377 50  0000 C CNN
F 2 "" H 800 7550 50  0001 C CNN
F 3 "" H 800 7550 50  0001 C CNN
	1    800  7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7450 800  7500
$Comp
L power:+5V #PWR010
U 1 1 652694E6
P 5150 5550
F 0 "#PWR010" H 5150 5400 50  0001 C CNN
F 1 "+5V" H 5165 5723 50  0000 C CNN
F 2 "" H 5150 5550 50  0001 C CNN
F 3 "" H 5150 5550 50  0001 C CNN
	1    5150 5550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 6526D40F
P 3800 4050
F 0 "R2" V 3750 3900 50  0000 C CNN
F 1 "1K" V 3750 4200 50  0000 C CNN
F 2 "" H 3800 4050 50  0001 C CNN
F 3 "~" H 3800 4050 50  0001 C CNN
	1    3800 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 4050 3550 4050
Wire Wire Line
	4600 1800 4500 1800
Wire Wire Line
	4500 1800 4500 2000
Connection ~ 4500 2000
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6527CC72
P 3200 7150
F 0 "#FLG0101" H 3200 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 7250 50  0000 C CNN
F 2 "" H 3200 7150 50  0001 C CNN
F 3 "~" H 3200 7150 50  0001 C CNN
	1    3200 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7500 3200 7550
Wire Wire Line
	800  7150 800  7200
Wire Wire Line
	800  7200 800  7250
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6527D61C
P 3200 7550
F 0 "#FLG01" H 3200 7625 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 7650 50  0000 C CNN
F 2 "" H 3200 7550 50  0001 C CNN
F 3 "~" H 3200 7550 50  0001 C CNN
	1    3200 7550
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS573 U2
U 1 1 652B7A39
P 6900 2100
F 0 "U2" H 7150 2900 50  0000 C CNN
F 1 "74LS573" H 7150 2800 50  0000 C CNN
F 2 "" H 6900 2100 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 6900 2100 50  0001 C CNN
	1    6900 2100
	1    0    0    -1  
$EndComp
$Comp
L MyLibrary:AT28C256 U3
U 1 1 652BBA42
P 1800 2300
F 0 "U3" H 2050 3250 50  0000 C CNN
F 1 "AT28C256" H 2050 3150 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 1800 2200 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 1800 2200 50  0001 C CNN
	1    1800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2500 6150 2500
Wire Wire Line
	6150 2500 6150 3600
Wire Wire Line
	6150 3600 5600 3600
Wire Wire Line
	6400 2600 6350 2600
Wire Wire Line
	6350 2600 6350 2950
Wire Wire Line
	6350 2950 6900 2950
Wire Wire Line
	6900 2950 6900 2900
Wire Bus Line
	6100 900  2850 900 
Wire Bus Line
	5950 3250 7700 3250
Wire Bus Line
	7700 700  850  700 
Wire Wire Line
	5600 3150 5850 3150
Wire Wire Line
	5600 3050 5850 3050
Wire Wire Line
	5600 2950 5850 2950
Wire Wire Line
	5600 2850 5850 2850
Wire Wire Line
	5600 2750 5850 2750
Wire Wire Line
	5600 2650 5850 2650
Wire Wire Line
	5600 3350 5850 3350
Wire Wire Line
	5600 3250 5850 3250
Entry Wire Line
	5950 2650 5850 2750
Entry Wire Line
	5950 2750 5850 2850
Entry Wire Line
	5950 2850 5850 2950
Entry Wire Line
	5950 2950 5850 3050
Entry Wire Line
	5950 3050 5850 3150
Entry Wire Line
	5950 3150 5850 3250
Text Label 5700 2650 0    50   ~ 0
A8
Text Label 5700 2750 0    50   ~ 0
A9
Text Label 5700 2850 0    50   ~ 0
A10
Text Label 5700 2950 0    50   ~ 0
A11
Text Label 5700 3050 0    50   ~ 0
A12
Text Label 5700 3150 0    50   ~ 0
A13
Text Label 5700 3250 0    50   ~ 0
A14
Text Label 5700 3350 0    50   ~ 0
A15
Entry Wire Line
	6000 1600 6100 1500
Entry Wire Line
	6000 1700 6100 1600
Entry Wire Line
	6000 1800 6100 1700
Entry Wire Line
	6000 1900 6100 1800
Entry Wire Line
	6000 2000 6100 1900
Entry Wire Line
	6000 2100 6100 2000
Entry Wire Line
	6000 2200 6100 2100
Entry Wire Line
	6000 2300 6100 2200
Text Label 5750 1600 0    50   ~ 0
D0
Text Label 5750 1700 0    50   ~ 0
D1
Text Label 5750 1800 0    50   ~ 0
D2
Text Label 5750 1900 0    50   ~ 0
D3
Text Label 5750 2000 0    50   ~ 0
D4
Text Label 5750 2100 0    50   ~ 0
D5
Text Label 5750 2200 0    50   ~ 0
D6
Text Label 5750 2300 0    50   ~ 0
D7
Wire Wire Line
	6200 1600 6400 1600
Entry Wire Line
	6100 1500 6200 1600
Entry Wire Line
	6100 1600 6200 1700
Entry Wire Line
	6100 1700 6200 1800
Entry Wire Line
	6100 1800 6200 1900
Entry Wire Line
	6100 1900 6200 2000
Entry Wire Line
	6100 2000 6200 2100
Entry Wire Line
	6100 2100 6200 2200
Entry Wire Line
	6100 2200 6200 2300
Wire Wire Line
	6200 1700 6400 1700
Wire Wire Line
	6200 1800 6400 1800
Wire Wire Line
	6200 1900 6400 1900
Wire Wire Line
	6200 2000 6400 2000
Wire Wire Line
	6200 2100 6400 2100
Wire Wire Line
	6200 2200 6400 2200
Wire Wire Line
	6200 2300 6400 2300
Text Label 6250 1600 0    50   ~ 0
D0
Text Label 6250 1700 0    50   ~ 0
D1
Text Label 6250 1800 0    50   ~ 0
D2
Text Label 6250 1900 0    50   ~ 0
D3
Text Label 6250 2000 0    50   ~ 0
D4
Text Label 6250 2100 0    50   ~ 0
D5
Text Label 6250 2200 0    50   ~ 0
D6
Text Label 6250 2300 0    50   ~ 0
D7
Wire Wire Line
	7400 1600 7600 1600
Entry Wire Line
	7700 1500 7600 1600
Entry Wire Line
	7700 1600 7600 1700
Entry Wire Line
	7700 1700 7600 1800
Entry Wire Line
	7700 1800 7600 1900
Entry Wire Line
	7700 1900 7600 2000
Entry Wire Line
	7700 2000 7600 2100
Entry Wire Line
	7700 2100 7600 2200
Entry Wire Line
	7700 2200 7600 2300
Wire Wire Line
	7600 1700 7400 1700
Wire Wire Line
	7400 1800 7600 1800
Wire Wire Line
	7400 1900 7600 1900
Wire Wire Line
	7400 2000 7600 2000
Wire Wire Line
	7400 2100 7600 2100
Wire Wire Line
	7400 2200 7600 2200
Wire Wire Line
	7400 2300 7600 2300
Text Label 7450 1600 0    50   ~ 0
A0
Text Label 7450 1700 0    50   ~ 0
A1
Text Label 7450 1800 0    50   ~ 0
A2
Text Label 7450 1900 0    50   ~ 0
A3
Text Label 7450 2000 0    50   ~ 0
A4
Text Label 7450 2100 0    50   ~ 0
A5
Text Label 7450 2200 0    50   ~ 0
A6
Text Label 7450 2300 0    50   ~ 0
A7
Text Label 6850 700  0    50   ~ 0
A[0..14]
Text Label 5700 900  0    50   ~ 0
D[0..7]
Entry Wire Line
	2850 1500 2750 1600
Entry Wire Line
	2850 1600 2750 1700
Entry Wire Line
	2850 1700 2750 1800
Entry Wire Line
	2850 1800 2750 1900
Entry Wire Line
	2850 1900 2750 2000
Entry Wire Line
	2850 2000 2750 2100
Entry Wire Line
	2850 2100 2750 2200
Entry Wire Line
	2850 2200 2750 2300
Entry Wire Line
	5850 2650 5950 2550
Wire Wire Line
	4550 3000 4600 3000
Wire Wire Line
	4550 3300 4600 3300
Wire Wire Line
	4550 3400 4600 3400
Wire Wire Line
	4550 3500 4600 3500
Wire Wire Line
	3200 3750 4600 3750
Wire Wire Line
	4550 3850 4600 3850
Wire Wire Line
	4400 4050 4450 4050
Wire Wire Line
	5650 3850 5600 3850
$Comp
L Device:C_Small C3
U 1 1 653BD83F
P 1200 7350
F 0 "C3" H 1292 7396 50  0000 L CNN
F 1 "0.1uF" H 1292 7305 50  0000 L CNN
F 2 "" H 1200 7350 50  0001 C CNN
F 3 "~" H 1200 7350 50  0001 C CNN
	1    1200 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 653BE16A
P 1600 7350
F 0 "C4" H 1692 7396 50  0000 L CNN
F 1 "0.1uF" H 1692 7305 50  0000 L CNN
F 2 "" H 1600 7350 50  0001 C CNN
F 3 "~" H 1600 7350 50  0001 C CNN
	1    1600 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7550 800  7500
Wire Wire Line
	1600 7200 1600 7250
Wire Wire Line
	1200 7250 1200 7200
Wire Wire Line
	1200 7450 1200 7500
Wire Wire Line
	1600 7450 1600 7500
Connection ~ 800  7200
Connection ~ 800  7500
Connection ~ 1200 7200
Connection ~ 1200 7500
Wire Wire Line
	2400 7500 2800 7500
Wire Wire Line
	800  7500 1200 7500
Wire Wire Line
	1200 7200 1600 7200
Wire Wire Line
	1200 7500 1600 7500
Wire Wire Line
	3200 7150 3200 7200
Text Notes 1100 7900 0    50   ~ 0
Decoupling caps.  Place on on the\npower rail near the Vcc of each chip.
Text Label 2400 1600 0    50   ~ 0
D0
Text Label 2400 1700 0    50   ~ 0
D1
Text Label 2400 1800 0    50   ~ 0
D2
Text Label 2400 1900 0    50   ~ 0
D3
Text Label 2400 2000 0    50   ~ 0
D4
Text Label 2400 2100 0    50   ~ 0
D5
Text Label 2400 2200 0    50   ~ 0
D6
Text Label 2400 2300 0    50   ~ 0
D7
Wire Wire Line
	2300 2300 2750 2300
Entry Wire Line
	850  1500 950  1600
Entry Wire Line
	850  1600 950  1700
Entry Wire Line
	850  1700 950  1800
Entry Wire Line
	850  1800 950  1900
Entry Wire Line
	850  1900 950  2000
Entry Wire Line
	850  2000 950  2100
Entry Wire Line
	850  2100 950  2200
Entry Wire Line
	850  2200 950  2300
Entry Wire Line
	850  2300 950  2400
Entry Wire Line
	850  2400 950  2500
Entry Wire Line
	850  2500 950  2600
Entry Wire Line
	850  2600 950  2700
Entry Wire Line
	850  2700 950  2800
Entry Wire Line
	850  2800 950  2900
Entry Wire Line
	850  2900 950  3000
Wire Wire Line
	950  1600 1300 1600
Text Label 1000 1600 0    50   ~ 0
A0
Wire Wire Line
	1300 1700 950  1700
Wire Wire Line
	950  1800 1300 1800
Wire Wire Line
	950  1900 1300 1900
Wire Wire Line
	950  2000 1300 2000
Wire Wire Line
	950  2100 1300 2100
Wire Wire Line
	950  2200 1300 2200
Wire Wire Line
	950  2300 1300 2300
Text Label 1000 1700 0    50   ~ 0
A1
Text Label 1000 1800 0    50   ~ 0
A2
Text Label 1000 1900 0    50   ~ 0
A3
Text Label 1000 2000 0    50   ~ 0
A4
Text Label 1000 2100 0    50   ~ 0
A5
Text Label 1000 2200 0    50   ~ 0
A6
Text Label 1000 2300 0    50   ~ 0
A7
Wire Wire Line
	950  2400 1300 2400
Wire Wire Line
	950  2500 1300 2500
Wire Wire Line
	1300 2600 950  2600
Wire Wire Line
	1300 2700 950  2700
Wire Wire Line
	950  2800 1300 2800
Wire Wire Line
	950  2900 1300 2900
Wire Wire Line
	950  3000 1300 3000
Text Label 1000 2400 0    50   ~ 0
A8
Text Label 1000 2500 0    50   ~ 0
A9
Text Label 1000 2600 0    50   ~ 0
A10
Text Label 1000 2700 0    50   ~ 0
A11
Text Label 1000 2800 0    50   ~ 0
A12
Text Label 1000 2900 0    50   ~ 0
A13
Text Label 1000 3000 0    50   ~ 0
A14
Text GLabel 6300 4150 2    50   Output ~ 0
~RD
Text GLabel 2350 2700 2    50   Input ~ 0
~RD
Wire Wire Line
	2300 2700 2350 2700
Wire Wire Line
	2300 2800 2700 2800
Wire Wire Line
	2700 2800 2700 2750
$Comp
L power:+5V #PWR014
U 1 1 654D774D
P 2700 2750
F 0 "#PWR014" H 2700 2600 50  0001 C CNN
F 1 "+5V" H 2715 2923 50  0000 C CNN
F 2 "" H 2700 2750 50  0001 C CNN
F 3 "" H 2700 2750 50  0001 C CNN
	1    2700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2500 2300 2500
Wire Wire Line
	4200 3050 4200 3000
Connection ~ 4200 3000
$Comp
L power:+5V #PWR011
U 1 1 654F2831
P 6900 1250
F 0 "#PWR011" H 6900 1100 50  0001 C CNN
F 1 "+5V" H 6915 1423 50  0000 C CNN
F 2 "" H 6900 1250 50  0001 C CNN
F 3 "" H 6900 1250 50  0001 C CNN
	1    6900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1250 6900 1300
$Comp
L power:+5V #PWR012
U 1 1 654FB7F8
P 1800 1350
F 0 "#PWR012" H 1800 1200 50  0001 C CNN
F 1 "+5V" H 1815 1523 50  0000 C CNN
F 2 "" H 1800 1350 50  0001 C CNN
F 3 "" H 1800 1350 50  0001 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1350 1800 1400
$Comp
L power:GND #PWR016
U 1 1 655058A8
P 1800 3250
F 0 "#PWR016" H 1800 3000 50  0001 C CNN
F 1 "GND" H 1805 3077 50  0000 C CNN
F 2 "" H 1800 3250 50  0001 C CNN
F 3 "" H 1800 3250 50  0001 C CNN
	1    1800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3200 1800 3250
$Comp
L power:GND #PWR015
U 1 1 6550F388
P 6900 3000
F 0 "#PWR015" H 6900 2750 50  0001 C CNN
F 1 "GND" H 6905 2827 50  0000 C CNN
F 2 "" H 6900 3000 50  0001 C CNN
F 3 "" H 6900 3000 50  0001 C CNN
	1    6900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2950 6900 3000
Connection ~ 6900 2950
$Comp
L Device:R_Small_US R1
U 1 1 655859C5
P 5150 5800
F 0 "R1" V 5100 5700 50  0000 C CNN
F 1 "10K" V 5100 5950 50  0000 C CNN
F 2 "" H 5150 5800 50  0001 C CNN
F 3 "~" H 5150 5800 50  0001 C CNN
	1    5150 5800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 65586A0A
P 6000 5950
F 0 "SW1" H 6000 6235 50  0000 C CNN
F 1 "Reset" H 6000 6144 50  0000 C CNN
F 2 "" H 6000 6150 50  0001 C CNN
F 3 "~" H 6000 6150 50  0001 C CNN
	1    6000 5950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6558F852
P 6250 6300
F 0 "#PWR05" H 6250 6050 50  0001 C CNN
F 1 "GND" H 6255 6127 50  0000 C CNN
F 2 "" H 6250 6300 50  0001 C CNN
F 3 "" H 6250 6300 50  0001 C CNN
	1    6250 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5550 5150 5700
Wire Wire Line
	6250 5950 6200 5950
Wire Wire Line
	5150 5900 5150 5950
Text Notes 4450 6450 0    50   ~ 0
Power-on reset and button
Text Notes 7050 3000 0    50   ~ 0
Address\nLatch
Text Notes 1050 1400 0    50   ~ 0
ROM 0000-7FFF
NoConn ~ 4550 3100
Wire Wire Line
	4550 3100 4600 3100
Wire Wire Line
	3550 4050 3550 4200
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 6540797A
P 3900 4800
F 0 "J1" H 3980 4792 50  0000 L CNN
F 1 "FTDI" H 3980 4701 50  0000 L CNN
F 2 "" H 3900 4800 50  0001 C CNN
F 3 "~" H 3900 4800 50  0001 C CNN
	1    3900 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 4150 4550 4150
Wire Wire Line
	4550 4150 4550 4900
Wire Wire Line
	4450 4050 4450 5000
Connection ~ 4450 4050
Wire Wire Line
	4450 4050 4600 4050
Text Label 4100 5000 0    50   ~ 0
FTDI-RX
Text Label 4100 4900 0    50   ~ 0
FTDI-TX
Wire Wire Line
	4150 4600 4100 4600
NoConn ~ 4100 4700
NoConn ~ 4100 4800
NoConn ~ 4100 5100
Text Notes 3750 5350 0    50   ~ 0
Note: FTDI pin numbers\nmay differ from this
$Comp
L Memory_RAM:KM62256CLP U4
U 1 1 653F9C8F
P 1800 4700
F 0 "U4" H 1950 5650 50  0000 C CNN
F 1 "KM62256" H 2050 5550 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 1800 4600 50  0001 C CNN
F 3 "https://www.futurlec.com/Datasheet/Memory/62256.pdf" H 1800 4600 50  0001 C CNN
	1    1800 4700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 1 1 653FB0E4
P 9900 1950
F 0 "U5" H 9950 2100 50  0000 C CNN
F 1 "74LS14" H 10000 1800 50  0000 C CNN
F 2 "" H 9900 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 9900 1950 50  0001 C CNN
	1    9900 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 2 1 653FC840
P 4750 5950
F 0 "U5" H 4800 6100 50  0000 C CNN
F 1 "74LS14" H 4850 5800 50  0000 C CNN
F 2 "" H 4750 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 4750 5950 50  0001 C CNN
	2    4750 5950
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 3 1 653FE36D
P 4100 5950
F 0 "U5" H 4150 6100 50  0000 C CNN
F 1 "74LS14" H 4200 5800 50  0000 C CNN
F 2 "" H 4100 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 4100 5950 50  0001 C CNN
	3    4100 5950
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 6 1 654022E9
P 9900 2400
F 0 "U5" H 9950 2550 50  0000 C CNN
F 1 "74LS14" H 10000 2250 50  0000 C CNN
F 2 "" H 9900 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 9900 2400 50  0001 C CNN
	6    9900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7200 1200 7200
$Comp
L Device:C_Small C5
U 1 1 65417851
P 2000 7350
F 0 "C5" H 2092 7396 50  0000 L CNN
F 1 "0.1uF" H 2092 7305 50  0000 L CNN
F 2 "" H 2000 7350 50  0001 C CNN
F 3 "~" H 2000 7350 50  0001 C CNN
	1    2000 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 65417D5D
P 2400 7350
F 0 "C6" H 2492 7396 50  0000 L CNN
F 1 "0.1uF" H 2492 7305 50  0000 L CNN
F 2 "" H 2400 7350 50  0001 C CNN
F 3 "~" H 2400 7350 50  0001 C CNN
	1    2400 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7200 2400 7250
Wire Wire Line
	2000 7250 2000 7200
Wire Wire Line
	2000 7450 2000 7500
Wire Wire Line
	2400 7450 2400 7500
Connection ~ 2000 7200
Connection ~ 2000 7500
Wire Wire Line
	1600 7500 2000 7500
Wire Wire Line
	2000 7200 2400 7200
Wire Wire Line
	2000 7500 2400 7500
Wire Wire Line
	1600 7200 2000 7200
Connection ~ 1600 7200
Connection ~ 1600 7500
Connection ~ 2400 7200
Connection ~ 2400 7500
Wire Wire Line
	3500 7200 3500 6800
Text GLabel 2350 2500 2    50   Input ~ 0
~ROMEN
Wire Wire Line
	2300 2200 2750 2200
Wire Wire Line
	2300 2100 2750 2100
Wire Wire Line
	2300 2000 2750 2000
Wire Wire Line
	2300 1900 2750 1900
Wire Wire Line
	2300 1800 2750 1800
Wire Wire Line
	2300 1700 2750 1700
Wire Wire Line
	2300 1600 2750 1600
Entry Wire Line
	2850 3900 2750 4000
Entry Wire Line
	2850 4000 2750 4100
Entry Wire Line
	2850 4100 2750 4200
Entry Wire Line
	2850 4200 2750 4300
Entry Wire Line
	2850 4300 2750 4400
Entry Wire Line
	2850 4400 2750 4500
Entry Wire Line
	2850 4500 2750 4600
Entry Wire Line
	2850 4600 2750 4700
Text Label 2400 4000 0    50   ~ 0
D0
Text Label 2400 4100 0    50   ~ 0
D1
Text Label 2400 4200 0    50   ~ 0
D2
Text Label 2400 4300 0    50   ~ 0
D3
Text Label 2400 4400 0    50   ~ 0
D4
Text Label 2400 4500 0    50   ~ 0
D5
Text Label 2400 4600 0    50   ~ 0
D6
Text Label 2400 4700 0    50   ~ 0
D7
Wire Wire Line
	2300 4700 2750 4700
Wire Wire Line
	2300 4600 2750 4600
Wire Wire Line
	2300 4500 2750 4500
Wire Wire Line
	2300 4400 2750 4400
Wire Wire Line
	2300 4300 2750 4300
Wire Wire Line
	2300 4200 2750 4200
Wire Wire Line
	2300 4100 2750 4100
Wire Wire Line
	2300 4000 2750 4000
Entry Wire Line
	850  3900 950  4000
Entry Wire Line
	850  4000 950  4100
Entry Wire Line
	850  4100 950  4200
Entry Wire Line
	850  4200 950  4300
Entry Wire Line
	850  4300 950  4400
Entry Wire Line
	850  4400 950  4500
Entry Wire Line
	850  4500 950  4600
Entry Wire Line
	850  4600 950  4700
Entry Wire Line
	850  4700 950  4800
Entry Wire Line
	850  4800 950  4900
Entry Wire Line
	850  4900 950  5000
Entry Wire Line
	850  5000 950  5100
Entry Wire Line
	850  5100 950  5200
Entry Wire Line
	850  5200 950  5300
Entry Wire Line
	850  5300 950  5400
Wire Wire Line
	950  4000 1300 4000
Text Label 1000 4000 0    50   ~ 0
A0
Wire Wire Line
	1300 4100 950  4100
Wire Wire Line
	950  4200 1300 4200
Wire Wire Line
	950  4300 1300 4300
Wire Wire Line
	950  4400 1300 4400
Wire Wire Line
	950  4500 1300 4500
Wire Wire Line
	950  4600 1300 4600
Wire Wire Line
	950  4700 1300 4700
Text Label 1000 4100 0    50   ~ 0
A1
Text Label 1000 4200 0    50   ~ 0
A2
Text Label 1000 4300 0    50   ~ 0
A3
Text Label 1000 4400 0    50   ~ 0
A4
Text Label 1000 4500 0    50   ~ 0
A5
Text Label 1000 4600 0    50   ~ 0
A6
Text Label 1000 4700 0    50   ~ 0
A7
Wire Wire Line
	950  4800 1300 4800
Wire Wire Line
	950  4900 1300 4900
Wire Wire Line
	1300 5000 950  5000
Wire Wire Line
	1300 5100 950  5100
Wire Wire Line
	950  5200 1300 5200
Wire Wire Line
	950  5300 1300 5300
Wire Wire Line
	950  5400 1300 5400
Text Label 1000 4800 0    50   ~ 0
A8
Text Label 1000 4900 0    50   ~ 0
A9
Text Label 1000 5000 0    50   ~ 0
A10
Text Label 1000 5100 0    50   ~ 0
A11
Text Label 1000 5200 0    50   ~ 0
A12
Text Label 1000 5300 0    50   ~ 0
A13
Text Label 1000 5400 0    50   ~ 0
A14
$Comp
L power:GND #PWR013
U 1 1 6559A633
P 1800 5650
F 0 "#PWR013" H 1800 5400 50  0001 C CNN
F 1 "GND" H 1805 5477 50  0000 C CNN
F 2 "" H 1800 5650 50  0001 C CNN
F 3 "" H 1800 5650 50  0001 C CNN
	1    1800 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5600 1800 5650
$Comp
L power:+5V #PWR09
U 1 1 655A90DD
P 1800 3750
F 0 "#PWR09" H 1800 3600 50  0001 C CNN
F 1 "+5V" H 1815 3923 50  0000 C CNN
F 2 "" H 1800 3750 50  0001 C CNN
F 3 "" H 1800 3750 50  0001 C CNN
	1    1800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3750 1800 3800
Text Notes 1050 3800 0    50   ~ 0
RAM 8000-FFFF
Wire Wire Line
	2350 4900 2300 4900
Text GLabel 2350 4900 2    50   Input ~ 0
~RAMEN
Text GLabel 2350 5100 2    50   Input ~ 0
~RD
Wire Wire Line
	2300 5100 2350 5100
Text GLabel 2350 5200 2    50   Input ~ 0
~WR
Wire Wire Line
	2300 5200 2350 5200
Wire Wire Line
	4400 5950 4450 5950
$Comp
L Device:CP_Small C7
U 1 1 65684E42
P 5300 6100
F 0 "C7" H 5392 6146 50  0000 L CNN
F 1 "47uF" H 5392 6055 50  0000 L CNN
F 2 "" H 5300 6100 50  0001 C CNN
F 3 "~" H 5300 6100 50  0001 C CNN
	1    5300 6100
	1    0    0    -1  
$EndComp
Connection ~ 5300 5950
Wire Wire Line
	5300 5950 5700 5950
$Comp
L Diode:1N4001 D2
U 1 1 656869D8
P 5700 6100
F 0 "D2" V 5654 6180 50  0000 L CNN
F 1 "1N4001" V 5745 6180 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5700 5925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5700 6100 50  0001 C CNN
	1    5700 6100
	0    1    1    0   
$EndComp
Connection ~ 5700 5950
Wire Wire Line
	5700 5950 5800 5950
Wire Wire Line
	6250 6300 5700 6300
Wire Wire Line
	6250 5950 6250 6300
Wire Wire Line
	5700 6250 5700 6300
Connection ~ 5700 6300
Wire Wire Line
	5700 6300 5300 6300
Wire Wire Line
	5050 5950 5150 5950
Connection ~ 5150 5950
Wire Wire Line
	5150 5950 5300 5950
Connection ~ 6250 6300
Wire Wire Line
	3200 3750 3200 5950
Wire Wire Line
	5300 6000 5300 5950
Wire Wire Line
	5300 6300 5300 6200
NoConn ~ 10300 1450
NoConn ~ 10200 1950
NoConn ~ 10200 2400
$Comp
L power:+5V #PWR0101
U 1 1 65794521
P 9600 950
F 0 "#PWR0101" H 9600 800 50  0001 C CNN
F 1 "+5V" H 9615 1123 50  0000 C CNN
F 2 "" H 9600 950 50  0001 C CNN
F 3 "" H 9600 950 50  0001 C CNN
	1    9600 950 
	1    0    0    -1  
$EndComp
Text GLabel 6000 4050 2    50   Output ~ 0
~WR
$Comp
L 74xx:74LS32 U6
U 5 1 6551D7F2
P 3800 7350
F 0 "U6" H 3700 7400 50  0000 L CNN
F 1 "74LS32" H 3650 7300 50  0000 L CNN
F 2 "" H 3800 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3800 7350 50  0001 C CNN
	5    3800 7350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U7
U 1 1 6551EEBF
P 9950 1350
F 0 "U7" H 9950 1831 50  0000 C CNN
F 1 "74LS74" H 9950 1740 50  0000 C CNN
F 2 "" H 9950 1350 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 9950 1350 50  0001 C CNN
	1    9950 1350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U7
U 3 1 65520B00
P 4300 7350
F 0 "U7" H 4200 7400 50  0000 L CNN
F 1 "74LS74" H 4150 7300 50  0000 L CNN
F 2 "" H 4300 7350 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4300 7350 50  0001 C CNN
	3    4300 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 6552205E
P 2800 7350
F 0 "C8" H 2892 7396 50  0000 L CNN
F 1 "0.1uF" H 2892 7305 50  0000 L CNN
F 2 "" H 2800 7350 50  0001 C CNN
F 3 "~" H 2800 7350 50  0001 C CNN
	1    2800 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 655222E9
P 3200 7350
F 0 "C9" H 3292 7396 50  0000 L CNN
F 1 "0.1uF" H 3292 7305 50  0000 L CNN
F 2 "" H 3200 7350 50  0001 C CNN
F 3 "~" H 3200 7350 50  0001 C CNN
	1    3200 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 7900 3500 7500
Wire Wire Line
	3800 7900 3500 7900
Wire Wire Line
	3800 7850 3800 7900
Wire Wire Line
	3800 6800 3800 6850
Wire Wire Line
	3500 6800 3800 6800
$Comp
L 74xx:74LS14 U5
U 7 1 65403E15
P 4800 7350
F 0 "U5" H 4700 7400 50  0000 L CNN
F 1 "74LS14" H 4650 7300 50  0000 L CNN
F 2 "" H 4800 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 4800 7350 50  0001 C CNN
	7    4800 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7250 2800 7200
Connection ~ 2800 7200
Wire Wire Line
	2800 7200 2400 7200
Wire Wire Line
	3200 7250 3200 7200
Connection ~ 3200 7200
Wire Wire Line
	3200 7200 2800 7200
Wire Wire Line
	2800 7450 2800 7500
Connection ~ 2800 7500
Wire Wire Line
	2800 7500 3200 7500
Wire Wire Line
	3200 7450 3200 7500
Connection ~ 3200 7500
Wire Wire Line
	3200 7200 3500 7200
Wire Wire Line
	3200 7500 3500 7500
Wire Wire Line
	3800 6800 4300 6800
Wire Wire Line
	4800 6800 4800 6850
Connection ~ 3800 6800
Wire Wire Line
	3800 7900 4300 7900
Wire Wire Line
	4800 7900 4800 7850
Connection ~ 3800 7900
Wire Wire Line
	4300 7750 4300 7900
Connection ~ 4300 7900
Wire Wire Line
	4300 7900 4800 7900
Wire Wire Line
	4300 6950 4300 6800
Connection ~ 4300 6800
Wire Wire Line
	4300 6800 4800 6800
Wire Wire Line
	4450 5000 4100 5000
Wire Wire Line
	4550 4900 4100 4900
Text GLabel 5650 3850 2    50   Output ~ 0
IO_~M
Connection ~ 9600 1950
Wire Wire Line
	9600 1950 9600 2400
Wire Wire Line
	9600 950  9600 1000
Wire Wire Line
	9950 1050 9950 1000
Wire Wire Line
	9950 1000 9600 1000
Connection ~ 9600 1000
Wire Wire Line
	9600 1000 9600 1250
Wire Wire Line
	9650 1250 9600 1250
Connection ~ 9600 1250
Wire Wire Line
	9600 1250 9600 1350
Wire Wire Line
	9650 1350 9600 1350
Connection ~ 9600 1350
Wire Wire Line
	9600 1350 9600 1700
Wire Wire Line
	9950 1650 9950 1700
Wire Wire Line
	9950 1700 9600 1700
Connection ~ 9600 1700
Wire Wire Line
	9600 1700 9600 1950
Wire Wire Line
	10300 1450 10250 1450
Wire Wire Line
	10300 1250 10250 1250
NoConn ~ 10300 1250
Wire Wire Line
	9500 5350 9500 5300
Connection ~ 8200 4900
Wire Wire Line
	7500 4900 8200 4900
Wire Wire Line
	7500 5650 7550 5650
Connection ~ 9750 4000
$Comp
L power:+5V #PWR018
U 1 1 658B7231
P 9750 4000
F 0 "#PWR018" H 9750 3850 50  0001 C CNN
F 1 "+5V" H 9765 4173 50  0000 C CNN
F 2 "" H 9750 4000 50  0001 C CNN
F 3 "" H 9750 4000 50  0001 C CNN
	1    9750 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 4250 9700 4250
Wire Wire Line
	9750 4000 9750 4250
Wire Wire Line
	9400 4000 9750 4000
Wire Wire Line
	9400 4050 9400 4000
NoConn ~ 9050 4450
Wire Wire Line
	9050 4450 9100 4450
Wire Wire Line
	8900 4800 8850 4800
Wire Wire Line
	8900 4250 8900 4800
Wire Wire Line
	9100 4250 8900 4250
Wire Wire Line
	6850 5550 6900 5550
Wire Wire Line
	8200 5650 8200 4900
Wire Wire Line
	8150 5650 8200 5650
Wire Wire Line
	8250 4900 8200 4900
Wire Wire Line
	7550 5450 7500 5450
Wire Wire Line
	7550 5100 7550 5250
Wire Wire Line
	7500 5100 7550 5100
$Comp
L 74xx:74LS74 U7
U 2 1 6552017D
P 9400 4350
F 0 "U7" H 9400 4831 50  0000 C CNN
F 1 "74LS74" H 9400 4740 50  0000 C CNN
F 2 "" H 9400 4350 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 9400 4350 50  0001 C CNN
	2    9400 4350
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U6
U 4 1 6551AA8D
P 8550 4900
F 0 "U6" H 8500 5100 50  0000 C CNN
F 1 "74LS32" H 8550 4700 50  0000 C CNN
F 2 "" H 8550 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8550 4900 50  0001 C CNN
	4    8550 4900
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS32 U6
U 3 1 6551804C
P 7200 5000
F 0 "U6" H 7150 4800 50  0000 C CNN
F 1 "74LS32" H 7200 5200 50  0000 C CNN
F 2 "" H 7200 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7200 5000 50  0001 C CNN
	3    7200 5000
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS32 U6
U 2 1 65515BBA
P 9400 5000
F 0 "U6" H 9350 5200 50  0000 C CNN
F 1 "74LS32" H 9400 4800 50  0000 C CNN
F 2 "" H 9400 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9400 5000 50  0001 C CNN
	2    9400 5000
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS32 U6
U 1 1 655130F1
P 7200 5550
F 0 "U6" H 7150 5350 50  0000 C CNN
F 1 "74LS32" H 7200 5750 50  0000 C CNN
F 2 "" H 7200 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7200 5550 50  0001 C CNN
	1    7200 5550
	-1   0    0    1   
$EndComp
Text GLabel 6850 5550 0    50   Output ~ 0
~ROMEN
Text GLabel 6850 5000 0    50   Output ~ 0
~RAMEN
Wire Wire Line
	6850 5000 6900 5000
$Comp
L 74xx:74LS14 U5
U 5 1 65400927
P 9650 5650
F 0 "U5" H 9700 5800 50  0000 C CNN
F 1 "74LS14" H 9750 5500 50  0000 C CNN
F 2 "" H 9650 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 9650 5650 50  0001 C CNN
	5    9650 5650
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 4 1 653FF134
P 7850 5650
F 0 "U5" H 7900 5800 50  0000 C CNN
F 1 "74LS14" H 7950 5500 50  0000 C CNN
F 2 "" H 7850 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 7850 5650 50  0001 C CNN
	4    7850 5650
	-1   0    0    -1  
$EndComp
Text GLabel 5850 3350 2    50   Output ~ 0
A15
Text GLabel 4550 3850 0    50   Output ~ 0
RESET_OUT
Text GLabel 9850 4350 2    50   Input ~ 0
RESET_OUT
Text GLabel 7650 5250 2    50   Input ~ 0
IO_~M
Text GLabel 10150 5350 2    50   Input ~ 0
~RD
Text GLabel 10100 5900 2    50   Input ~ 0
A15
Wire Wire Line
	7650 5250 7550 5250
Connection ~ 7550 5250
Wire Wire Line
	7550 5250 7550 5450
Wire Wire Line
	9700 4350 9850 4350
$Comp
L Device:R_Small_US R3
U 1 1 65D5D9EC
P 6650 3850
F 0 "R3" V 6600 3750 50  0000 C CNN
F 1 "10K" V 6600 4000 50  0000 C CNN
F 2 "" H 6650 3850 50  0001 C CNN
F 3 "~" H 6650 3850 50  0001 C CNN
	1    6650 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 65D5E968
P 6650 4000
F 0 "R4" V 6600 3900 50  0000 C CNN
F 1 "10K" V 6600 4150 50  0000 C CNN
F 2 "" H 6650 4000 50  0001 C CNN
F 3 "~" H 6650 4000 50  0001 C CNN
	1    6650 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3850 7000 3850
Wire Wire Line
	7000 3850 7000 4000
Wire Wire Line
	7000 4000 6750 4000
$Comp
L power:+5V #PWR017
U 1 1 65E6A55B
P 7000 3850
F 0 "#PWR017" H 7000 3700 50  0001 C CNN
F 1 "+5V" H 7015 4023 50  0000 C CNN
F 2 "" H 7000 3850 50  0001 C CNN
F 3 "" H 7000 3850 50  0001 C CNN
	1    7000 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 4000 6550 4000
Connection ~ 7000 3850
Wire Wire Line
	5600 4050 5950 4050
Wire Wire Line
	5600 4150 6250 4150
Wire Wire Line
	5950 3850 5950 4050
Wire Wire Line
	5950 3850 6550 3850
Connection ~ 5950 4050
Wire Wire Line
	5950 4050 6000 4050
Wire Wire Line
	6250 4000 6250 4150
Connection ~ 6250 4150
Wire Wire Line
	6250 4150 6300 4150
Text Notes 7700 6050 0    50   ~ 0
Memory Addressing and Reset Condition Flip-flop\n
Wire Wire Line
	3200 5950 3800 5950
Wire Wire Line
	10150 5350 9500 5350
Wire Wire Line
	8850 5000 9000 5000
Wire Wire Line
	10100 5900 10000 5900
Wire Wire Line
	9000 5000 9000 5900
Wire Wire Line
	10000 5900 9000 5900
Wire Wire Line
	9300 5300 9300 5650
Wire Wire Line
	9300 5650 9350 5650
Wire Wire Line
	9950 5650 10000 5650
Wire Wire Line
	9400 4700 9400 4650
Connection ~ 10000 5900
Wire Wire Line
	10000 5650 10000 5900
Wire Wire Line
	5100 4400 5100 4500
Wire Wire Line
	3550 4200 4150 4200
Wire Wire Line
	4150 4200 4150 4600
Connection ~ 3550 4200
Wire Wire Line
	3550 4200 3550 4250
Text Notes 6700 6450 0    50   ~ 0
The flip-flop is set when the CPU is reset.  ROM is selected if the flip-flop is set or if A15\nis set.  RAM is selected when neither are set.  The IO signal disables both RAM and ROM.  \nThe Reset Condition flip-flop is cleared on a read operation with A15 High, which is a read\nof the ROM address space.
Wire Bus Line
	7700 700  7700 3250
Wire Bus Line
	6100 900  6100 2300
Wire Bus Line
	5950 2500 5950 3250
Wire Bus Line
	2850 900  2850 4750
Wire Bus Line
	850  700  850  5450
$EndSCHEMATC
