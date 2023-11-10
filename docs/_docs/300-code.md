---
title: "Sample Code for the Simple 8085 Computer"
permalink: /docs/code
excerpt: "Samples of 8085 assembly code for the Simple 8085 Computer"
---


The [code repo](https://github.com/TomNisbet/Simple8085/code/) contains test programs and utilities to turn up the board and start development.

## test2a-rom-led.asm

Burn the [ROM LED test program](https://github.com/TomNisbet/Simple8085/code/test2a-rom-led.asm) into the EEPROM at starting address 0000H.  Note that this program starts with a _JMP_ instruction to clear the reset flip-flop.  This isn't needed, but means that the program will also work if the final address decoding hardware is installed.

## test2b-rom-address.asm

If the test above suceedes, basic ROM wiring has been verified.  A [second test program](https://github.com/TomNisbet/Simple8085/code/test2b-rom-address.asm) can now be run to verify that all of the upper ROM address lines have been connected correctly.  It will flash the LED at different speeds for a successful test or do a continuous fast blink on failure.

## test3-rom-serial.asm

The next test, with the same basic hardware, was to wire in the FTDI chip to the SOD and bit-bang a character out as async serial data.  The [ROM serial test program](https://github.com/TomNisbet/Simple8085/code/test3-rom-serial.asm) writes a continuous stream of the 'T' character to the serial port.

Note that this program uses timing loops that are dependent on the frequency of the clock crystal.  A different crystal would require different delay loop values.  The connected termnal should be set for 9600bps.

## test4-ram-serial.asm

The next test was to wire in the RAM chip and modify the test program to write some characters to RAM and read them back before outputting them as serial data.  The reset circuit was also expanded to include the power-on reset in addition to the existing button.


The [RAM serial test program](https://github.com/TomNisbet/Simple8085/code/test4-ram-serial.asm) writes a continuous string of A to Z characters to the serial port.

## loader.asm

Code development can be sped up with the use of the [Hex Loader](https://github.com/TomNisbet/Simple8085/code/loader.asm). This can be burned into the ROM and will load and execute programs from RAM.  While not as powerful as a full monitor, it does remove the need to power down the system and remove the ROM for each code update.  It accepts Intel Hex files from [asm85](https://github.com/TomNisbet/asm85) or other tools that write in the standard format.


