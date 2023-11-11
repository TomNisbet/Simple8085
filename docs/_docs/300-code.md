---
title: "Sample Code for the Simple 8085 Computer"
permalink: /docs/code
excerpt: "Samples of 8085 assembly code for the Simple 8085 Computer"
---


The [code repo](https://github.com/TomNisbet/Simple8085/blob/master/code/) contains test programs and utilities to turn up the board and start development.

## test2a-rom-led.asm

The [ROM LED test program](https://github.com/TomNisbet/Simple8085/blob/master/code/test2a-rom-led.asm) is burned into the EEPROM at starting address 0000H.  This program blinks an LED connected to _SOD_ and verifies the basic wiring of the 8085, the address latch, and the EEPROM data and lower address lines.

Note that this program starts with a _JMP_ instruction to clear the reset flip-flop.  This isn't needed, but means that the program will also work if the final address decoding hardware is installed.

## test2b-rom-address.asm

The [ROM address test program](https://github.com/TomNisbet/Simple8085/blob/master/code/test2b-rom-address.asm) can be run to verify that all of the upper ROM address lines have been connected correctly.  It will flash the LED at different speeds for a successful test or do a continuous fast blink on failure.

## test3-rom-serial.asm

With an FTDI interface connected to the SOD, the [ROM serial test program](https://github.com/TomNisbet/Simple8085/blob/master/code/test3-rom-serial.asm) writes a continuous stream of the 'T' character to the serial port by bit-banging async data to the port.

Note that this program uses timing loops that are dependent on the frequency of the clock crystal.  A different crystal would require different delay loop values.  The connected termnal should be set for 9600bps.

## test4-ram-serial.asm

The [RAM serial test program](https://github.com/TomNisbet/Simple8085/blob/master/code/test4-ram-serial.asm) writes a continuous string of A to Z characters to the serial port.  This uses RAM to store the character to be sent, so it verifies that the RAM is wire correctly.

## loader.asm

Code development can be sped up with the use of the [Hex Loader](https://github.com/TomNisbet/Simple8085/blob/master/code/loader.asm). This can be burned into the ROM and will load and execute programs from RAM.  While not as powerful as a full monitor, it does remove the need to power down the system and remove the ROM for each code update.  It accepts Intel Hex files from [asm85](https://github.com/TomNisbet/asm85) or other tools that write in the standard format.


