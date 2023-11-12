---
title: "Simple 8085 Computer"
permalink: /
excerpt: "Simple 8085 Computer on a Breadboard"
---

This is a design for a simple 8085-based single-board computer.  It was started as a way to run the software from an old Netronics Explorer/85 board from the early 1980s.  The primary purpose of the design is software compatibility, rather than building a chip-for-chip clone of the Explorer.  Some chips in this design, such as the 32K EEPROM, were not available when the Explorer was being produced.

This project was inspired by the [Glitch Works 8085 SBC](http://www.glitchwrks.com/2011/10/29/sbc-rev-2) and the [Saundby MAG-85](http://saundby.com/electronics/8085/)

[![Simple 8085 Schematic](docs/images/step5-addressing-sch-800.png)](docs/images/step5-addressing-sch.png)

## Development and Additional Tools

To get the original Netronics software running on a new platform, several additional tools were developed.  The complete project consisted of the following:

* Create a software-compatible 8085 computer
* Extract the contents of the original ROMs by booting the Explorer, using the Monitor to dump the ROMs, and capturing the terminal output
* The ROM content, plus the symbol table from the Monitor Source Listing, was fed into the [DASMx disassembler](http://myweb.tiscali.co.uk/pclare/DASMx/) to create a Monitor ROM source that could be modified to account for some small hardware differences between the two systems
* The modified Monitor was re-assembled with a [new cross assembler](https://github.com/TomNisbet/asm85) that was written for this project
* The new Monitor binary image and the original Basic ROM image were burned into the EEPROM using [TommyPROM - an Arduino-based EEPROM reader/writer](https://github.com/TomNisbet/TommyPROM) that was created for this project

## Next Steps

Given that the system is functioning on a breadboard, it may not ever be spun into a real PCB.  After all, the point was about getting it all working.  There are additional software modifications that may still happen, such as:

* Replace the cassette interface code in the Monitor with XMODEM save and restore.  This would allow the state to be saved to a host computer.
* Support on-board writing to the EEPROM so that the chip does not need to be pried out and replaced for each change to the system software.
* Add additional languages and tools to the ROM.  Possibly Forth, Assembler, or an editor.
