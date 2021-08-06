EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:hoc
LIBS:hoc-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HoC Pacemaker Interface"
Date "2018-11-14"
Rev "1.0"
Comp "UFCG - Embedded"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X20 P2
U 1 1 5BEC7A9A
P 2150 4500
F 0 "P2" H 2150 5600 50  0000 C CNN
F 1 "CONN_02X20" V 2150 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 2150 3450 50  0000 C CNN
F 3 "" H 2150 3550 50  0000 C CNN
	1    2150 4500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P1
U 1 1 5BEC7E0A
P 2150 2000
F 0 "P1" H 2150 2350 50  0000 C CNN
F 1 "CONN_01X06" V 2250 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" V 2350 1950 50  0000 C CNN
F 3 "" H 2150 2000 50  0000 C CNN
	1    2150 2000
	0    -1   -1   0   
$EndComp
Text Notes 3100 3250 2    180  ~ 36
FPGA-GPIO \n
$Comp
L CONN_01X04 P5
U 1 1 5BEC917C
P 9450 5100
F 0 "P5" H 9450 5350 50  0000 C CNN
F 1 "CONN_01X04" V 9550 5100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 9450 4800 50  0000 C CNN
F 3 "" H 9450 5100 50  0000 C CNN
	1    9450 5100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P4
U 1 1 5BEC927C
P 5550 5150
F 0 "P4" H 5550 5400 50  0000 C CNN
F 1 "CONN_01X04" V 5650 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 5550 4800 50  0000 C CNN
F 3 "" H 5550 5150 50  0000 C CNN
	1    5550 5150
	1    0    0    -1  
$EndComp
Text Notes 8200 4600 0    180  ~ 36
POWER SUPPLY
$Comp
L GND #PWR01
U 1 1 5BEC9A4C
P 8800 5100
F 0 "#PWR01" H 8800 4850 50  0001 C CNN
F 1 "GND" H 8800 4950 50  0000 C CNN
F 2 "" H 8800 5100 50  0000 C CNN
F 3 "" H 8800 5100 50  0000 C CNN
	1    8800 5100
	1    0    0    -1  
$EndComp
Text Notes 4700 4550 0    180  ~ 36
PACEMAKER
Text Notes 1850 1650 0    180  ~ 36
FTDI
Text Notes 9050 850  2    180  ~ 36
INTERFACE DEVICES
Text Notes 1400 3550 0    30   ~ 6
GPIO_0[0]
Text GLabel 1900 3550 0    30   Input ~ 6
rx_fpga
Text GLabel 2400 3550 2    30   Output ~ 6
tx_fpga
Text GLabel 9100 4950 0    30   Input ~ 6
+9V
Text GLabel 9100 5250 0    30   Input ~ 6
-9V
$Comp
L LF347N L1
U 1 1 5BECCF65
P 8950 2650
F 0 "L1" H 8950 1800 60  0000 C CNN
F 1 "LF347N" H 8950 3200 60  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 8950 1700 60  0000 C CNN
F 3 "" H 8950 2650 180 0001 C CNN
	1    8950 2650
	1    0    0    -1  
$EndComp
Text GLabel 1900 4050 0    30   Output ~ 6
5V_FPGA
Text GLabel 2400 4050 2    30   Output ~ 6
GND_FPGA
Text GLabel 2400 4950 2    30   Output ~ 6
GND_FPGA
Text GLabel 1900 4950 0    30   Output ~ 6
3V3_FPGA
Text GLabel 1900 3750 0    30   Output ~ 6
SA_out
Text GLabel 1900 3850 0    30   Output ~ 6
RV_out
Text GLabel 1900 3950 0    30   Output ~ 6
NA5widened
Text GLabel 2400 3750 2    30   Output ~ 6
NA2widened
Text GLabel 2400 3850 2    30   Output ~ 6
NA4widened
Text GLabel 2400 3950 2    30   Output ~ 6
NA6widened
Text GLabel 1900 4150 0    30   Output ~ 6
NA7widened
Text GLabel 1900 4450 0    30   Output ~ 6
!normalLEDout
Text GLabel 1900 4550 0    30   Output ~ 6
!bradyLEDout
Text GLabel 1900 4650 0    30   Output ~ 6
!tachyLEDout
Text GLabel 1900 4750 0    30   Output ~ 6
tx_go
Text GLabel 1900 4850 0    30   Output ~ 6
CLOCK_1_5
Text GLabel 1900 5050 0    30   Output ~ 6
NA1out
Text GLabel 1900 5150 0    30   Output ~ 6
apace_latch
Text GLabel 1900 5250 0    30   Output ~ 6
NA3out
Text GLabel 1900 5350 0    30   Output ~ 6
vpace_latch
Text Notes 1350 4650 0    180  ~ 0
{
Text Notes 1350 4600 2    30   ~ 6
Warning Indicators
Text Notes 1300 5250 0    394  ~ 0
{
Text Notes 1350 5100 2    30   ~ 6
Debug Signals
Text Notes 1400 3900 2    30   ~ 6
Nodes pulses\n
Text Notes 2250 3500 2    39   ~ 8
Serial\n
Text GLabel 2400 4350 2    30   Input ~ 6
apace_in
Text GLabel 2400 4450 2    30   Input ~ 6
vpace_in
Text Notes 2750 4500 2    180  ~ 0
}\n
Text Notes 3150 4450 2    30   ~ 6
Pacemaker inputs\n
NoConn ~ 2400 4250
NoConn ~ 2400 4150
NoConn ~ 1900 4250
NoConn ~ 1900 4350
NoConn ~ 1900 3650
NoConn ~ 2400 3650
NoConn ~ 1900 5450
NoConn ~ 2400 5450
NoConn ~ 2400 5350
NoConn ~ 2400 5250
NoConn ~ 2400 5150
NoConn ~ 2400 5050
NoConn ~ 2400 4850
NoConn ~ 2400 4750
NoConn ~ 2400 4650
NoConn ~ 2400 4550
$Comp
L GND #PWR02
U 1 1 5BED25FD
P 1900 2450
F 0 "#PWR02" H 1900 2200 50  0001 C CNN
F 1 "GND" H 1900 2300 50  0000 C CNN
F 2 "" H 1900 2450 50  0000 C CNN
F 3 "" H 1900 2450 50  0000 C CNN
	1    1900 2450
	1    0    0    -1  
$EndComp
NoConn ~ 2000 2200
NoConn ~ 2100 2200
NoConn ~ 2400 2200
Text Notes 6500 1550 2    118  ~ 24
OPTO
Text Notes 9250 1550 2    118  ~ 24
AMPOP
Text Notes 2650 900  2    180  ~ 36
DIGITAL
Text GLabel 5350 5000 0    30   Input ~ 6
RA_pace
Text GLabel 5350 5100 0    30   Input ~ 6
RV_pace
$Comp
L GND #PWR03
U 1 1 5BEDBF38
P 5250 5300
F 0 "#PWR03" H 5250 5050 50  0001 C CNN
F 1 "GND" H 5250 5150 50  0000 C CNN
F 2 "" H 5250 5300 50  0000 C CNN
F 3 "" H 5250 5300 50  0000 C CNN
	1    5250 5300
	1    0    0    -1  
$EndComp
Text Notes 1450 3950 0    180  ~ 0
{
$Comp
L TLP624-4 O1
U 1 1 5BEE3C38
P 6350 2550
F 0 "O1" H 6350 1600 60  0000 C CNN
F 1 "TLP624-4" H 6350 3000 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 6350 1500 60  0000 C CNN
F 3 "" H 6400 3050 180 0001 C CNN
	1    6350 2550
	1    0    0    -1  
$EndComp
Text GLabel 5800 2250 0    30   Output ~ 6
SA_out
Text GLabel 5800 2650 0    30   Output ~ 6
RV_out
Text GLabel 5250 2750 0    30   Output ~ 6
GND_FPGA
$Comp
L R R2
U 1 1 5BEFD403
P 5700 1850
F 0 "R2" V 5780 1850 50  0000 C CNN
F 1 "330" V 5700 1850 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 5630 1850 50  0001 C CNN
F 3 "" H 5700 1850 50  0000 C CNN
	1    5700 1850
	0    1    1    0   
$EndComp
Text GLabel 7000 2550 2    30   Input ~ 6
apace_in
$Comp
L R R11
U 1 1 5BEFE408
P 9850 2250
F 0 "R11" V 9930 2250 50  0000 C CNN
F 1 "10k" V 9850 2250 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 9780 2250 50  0001 C CNN
F 3 "" H 9850 2250 50  0000 C CNN
	1    9850 2250
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5BEFE4F7
P 9850 2000
F 0 "R10" V 9930 2000 50  0000 C CNN
F 1 "10k" V 9850 2000 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 9780 2000 50  0001 C CNN
F 3 "" H 9850 2000 50  0000 C CNN
	1    9850 2000
	0    1    1    0   
$EndComp
Text GLabel 9550 1550 2    30   Input ~ 6
RA_pace
$Comp
L R R8
U 1 1 5BEFF1A2
P 8000 2250
F 0 "R8" V 8080 2250 50  0000 C CNN
F 1 "150" V 8000 2250 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 7930 2250 50  0001 C CNN
F 3 "" H 8000 2250 50  0000 C CNN
	1    8000 2250
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5BEFF308
P 7650 2350
F 0 "R6" V 7730 2350 50  0000 C CNN
F 1 "100k" V 7650 2350 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 7580 2350 50  0001 C CNN
F 3 "" H 7650 2350 50  0000 C CNN
	1    7650 2350
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5BEFF470
P 7450 2200
F 0 "R4" V 7530 2200 50  0000 C CNN
F 1 "330" V 7450 2200 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 7380 2200 50  0001 C CNN
F 3 "" H 7450 2200 50  0000 C CNN
	1    7450 2200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 5BEFF9E4
P 10300 3250
F 0 "#PWR04" H 10300 3000 50  0001 C CNN
F 1 "GND" H 10300 3100 50  0000 C CNN
F 2 "" H 10300 3250 50  0000 C CNN
F 3 "" H 10300 3250 50  0000 C CNN
	1    10300 3250
	1    0    0    -1  
$EndComp
Text GLabel 5800 2850 0    30   Input ~ 6
RV_pace
$Comp
L R R12
U 1 1 5BF00844
P 9850 2850
F 0 "R12" V 9930 2850 50  0000 C CNN
F 1 "10k" V 9850 2850 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 9780 2850 50  0001 C CNN
F 3 "" H 9850 2850 50  0000 C CNN
	1    9850 2850
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5BF0089C
P 9850 3050
F 0 "R13" V 9930 3050 50  0000 C CNN
F 1 "10k" V 9850 3050 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 9780 3050 50  0001 C CNN
F 3 "" H 9850 3050 50  0000 C CNN
	1    9850 3050
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5BF00AB0
P 8000 2850
F 0 "R9" V 8080 2850 50  0000 C CNN
F 1 "150" V 8000 2850 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 7930 2850 50  0001 C CNN
F 3 "" H 8000 2850 50  0000 C CNN
	1    8000 2850
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5BF00B5F
P 7650 2750
F 0 "R7" V 7730 2750 50  0000 C CNN
F 1 "100k" V 7650 2750 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 7580 2750 50  0001 C CNN
F 3 "" H 7650 2750 50  0000 C CNN
	1    7650 2750
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5BF010C2
P 7450 2950
F 0 "R5" V 7530 2950 50  0000 C CNN
F 1 "330" V 7450 2950 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 7380 2950 50  0001 C CNN
F 3 "" H 7450 2950 50  0000 C CNN
	1    7450 2950
	-1   0    0    1   
$EndComp
Text GLabel 7000 2250 2    30   Input ~ 6
+9V
Text GLabel 7000 2650 2    30   Input ~ 6
+9V
Text GLabel 7000 2850 2    30   Output ~ 6
5V_FPGA
Text GLabel 7000 2950 2    30   Input ~ 6
vpace_in
$Comp
L R R3
U 1 1 5BF096BD
P 5700 3450
F 0 "R3" V 5780 3450 50  0000 C CNN
F 1 "330" V 5700 3450 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 5630 3450 50  0001 C CNN
F 3 "" H 5700 3450 50  0000 C CNN
	1    5700 3450
	0    -1   -1   0   
$EndComp
Text Notes 1600 6150 0    180  ~ 36
DEBUG
Text GLabel 2250 6550 0    30   Output ~ 6
tx_go
Text GLabel 2750 6550 2    30   Output ~ 6
CLOCK_1_5
Text GLabel 2250 6650 0    30   Output ~ 6
NA1out
Text GLabel 2750 6650 2    30   Output ~ 6
apace_latch
Text GLabel 2250 6750 0    30   Output ~ 6
NA3out
Text GLabel 2750 6750 2    30   Output ~ 6
vpace_latch
$Comp
L CONN_02X03 P3
U 1 1 5BECE2BF
P 2500 6650
F 0 "P3" H 2500 6850 50  0000 C CNN
F 1 "CONN_02X03" H 2500 6450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 2500 6350 50  0000 C CNN
F 3 "" H 2500 5450 50  0000 C CNN
	1    2500 6650
	1    0    0    -1  
$EndComp
Text GLabel 1450 6350 0    30   Output ~ 6
3V3_FPGA
$Comp
L LED D1
U 1 1 5BECF021
P 1500 7000
F 0 "D1" H 1500 7100 50  0000 C CNN
F 1 "LED" H 1500 6900 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 1500 7000 50  0001 C CNN
F 3 "" H 1500 7000 50  0000 C CNN
	1    1500 7000
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5BECF914
P 1500 6600
F 0 "R1" V 1580 6600 50  0000 C CNN
F 1 "330" V 1500 6600 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 1430 6600 50  0001 C CNN
F 3 "" H 1500 6600 50  0000 C CNN
	1    1500 6600
	-1   0    0    1   
$EndComp
Text GLabel 1450 7400 0    30   Output ~ 6
GND_FPGA
Text GLabel 8300 2550 0    30   Input ~ 6
+9V
Text GLabel 9650 2550 2    30   Input ~ 6
-9V
Wire Wire Line
	9250 5050 9250 5150
Wire Wire Line
	9250 5100 8800 5100
Connection ~ 9250 5100
Wire Wire Line
	9100 4950 9250 4950
Wire Wire Line
	9100 5250 9250 5250
Wire Wire Line
	1900 2200 1900 2450
Wire Notes Line
	550  1050 10350 1050
Wire Notes Line
	3800 600  3800 7650
Wire Wire Line
	5250 5300 5350 5300
Wire Wire Line
	5250 5300 5250 5200
Wire Wire Line
	5250 5200 5350 5200
Wire Wire Line
	5800 2650 5850 2650
Wire Wire Line
	5800 2250 5850 2250
Wire Wire Line
	5850 2750 5250 2750
Wire Wire Line
	5850 2350 5300 2350
Wire Wire Line
	5300 1850 5300 3450
Connection ~ 5300 2750
Wire Wire Line
	5300 1850 5550 1850
Connection ~ 5300 2350
Wire Wire Line
	5850 1850 6950 1850
Wire Wire Line
	6950 1850 6950 2550
Connection ~ 6950 2550
Wire Wire Line
	5500 2450 5850 2450
Wire Wire Line
	5500 1650 5500 2450
Wire Wire Line
	5500 1650 9550 1650
Wire Wire Line
	9550 1550 9550 2250
Wire Wire Line
	9450 2250 9700 2250
Wire Wire Line
	10100 2350 9450 2350
Wire Wire Line
	10100 2000 10100 2350
Wire Wire Line
	10100 2250 10000 2250
Connection ~ 9550 2250
Wire Wire Line
	10100 2000 10000 2000
Connection ~ 10100 2250
Connection ~ 9550 1650
Wire Wire Line
	10200 2650 9450 2650
Wire Wire Line
	5850 2550 5500 2550
Wire Wire Line
	5500 2550 5500 3250
Wire Wire Line
	5500 3250 10300 3250
Wire Wire Line
	9450 2450 10300 2450
Wire Wire Line
	5850 2950 5500 2950
Connection ~ 5500 2950
Wire Wire Line
	5800 2850 5850 2850
Wire Wire Line
	5850 2850 5850 3150
Wire Wire Line
	5850 3150 9500 3150
Wire Wire Line
	9500 3150 9500 2850
Wire Wire Line
	9450 2850 9700 2850
Wire Wire Line
	9450 2750 10100 2750
Wire Wire Line
	7850 2850 7800 2850
Wire Wire Line
	7800 2850 7800 2750
Wire Wire Line
	7800 2750 8450 2750
Wire Wire Line
	6850 2750 7500 2750
Wire Wire Line
	6850 2350 7500 2350
Wire Wire Line
	6850 2650 7000 2650
Wire Wire Line
	7000 2250 6850 2250
Wire Wire Line
	6850 2450 6900 2450
Wire Wire Line
	6900 2450 6900 2850
Wire Wire Line
	6850 2850 7000 2850
Connection ~ 6900 2850
Wire Wire Line
	7450 2800 7450 2750
Connection ~ 7450 2750
Wire Wire Line
	7450 3100 7450 3250
Connection ~ 7450 3250
Wire Wire Line
	7000 2950 6850 2950
Wire Wire Line
	6850 2550 7000 2550
Wire Wire Line
	7800 2350 7800 2250
Wire Wire Line
	7800 2250 7850 2250
Wire Wire Line
	7800 2350 8450 2350
Connection ~ 7450 2350
Wire Wire Line
	7450 2050 7450 1900
Wire Wire Line
	7450 1900 10200 1900
Wire Wire Line
	10200 1900 10200 2650
Wire Wire Line
	10300 2450 10300 3250
Wire Wire Line
	10000 2850 10100 2850
Wire Wire Line
	10100 2750 10100 3050
Wire Wire Line
	10100 3050 10000 3050
Connection ~ 10100 2850
Connection ~ 9500 2850
Wire Wire Line
	6900 2950 6900 3450
Wire Wire Line
	6900 3450 5850 3450
Connection ~ 6900 2950
Wire Wire Line
	5300 3450 5550 3450
Wire Notes Line
	3800 3900 10400 3900
Wire Notes Line
	10400 3800 10400 3850
Wire Notes Line
	7400 3900 7400 6050
Wire Notes Line
	7400 6050 7450 6050
Wire Wire Line
	1450 6350 1500 6350
Wire Wire Line
	1450 7400 1500 7400
Wire Wire Line
	1500 7400 1500 7200
Wire Wire Line
	1500 6750 1500 6800
Wire Wire Line
	1500 6350 1500 6450
Wire Wire Line
	8150 2250 8450 2250
Wire Wire Line
	8450 2250 8450 2000
Wire Wire Line
	8450 2000 9700 2000
Wire Wire Line
	8450 2850 8450 3050
Wire Wire Line
	8450 3050 9700 3050
Wire Wire Line
	8150 2850 8450 2850
Wire Wire Line
	8450 2450 8350 2450
Wire Wire Line
	8350 1900 8350 2650
Connection ~ 8350 1900
Wire Wire Line
	8350 2650 8450 2650
Connection ~ 8350 2450
Wire Wire Line
	8300 2550 8450 2550
Wire Wire Line
	9650 2550 9450 2550
Text GLabel 2200 2200 3    30   Input ~ 6
rx_fpga
Text GLabel 2300 2200 3    30   Output ~ 6
tx_fpga
$EndSCHEMATC
