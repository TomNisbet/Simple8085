; test2b-rom-address
; assemble with: asm85 -b0000:7fff test2b-rom-address.asm
;
; Test program for 8085 SBC.  Blinks an LED on SOD at different rates forever.
; This program does not use any RAM or stack instructions, so it can be run
; from a ROM-only system as describled in Step 2 of the build instructions.
;
; This is a convuluted version of the earlier ROM LED program that jumps around
; the address space to test that the address lines to the ROM are connected
; correctly.  It requires that all 15 ROM address lines are wired to the 8085.
; If any address lines are incorrectly connected, it is likely that code will
; jump to an uninitialized section of the EEPROM, causing a RST 7 instruction
; to exeute.  This can be observed by a fast blink of the LED at a continous
; rate;
;
; NOTE: the assembly command builds a 32K image, unlike the other small test
; programs.

SIMSOD  equ     80h
SIMSDE  equ     40h
LEDON   equ     SIMSOD | SIMSDE
LEDOFF  equ     SIMSDE

; Entry points to test when a single address bit is set.  This will catch
; the error where two bits are shorted.

; "Random" address in each block.  If two address lines are swapped, the
; Axxxx jumps will still work, but the code will fail when it tries to
;  jump to these addresses.
OFFSET  equ     33
A0100   equ     0100h | ((1 * OFFSET) & 0FFh)
A0200   equ     0200h | ((2 * OFFSET) & 0FFh)
A0400   equ     0400h | ((3 * OFFSET) & 0FFh)
A0800   equ     0800h | ((4 * OFFSET) & 0FFh)
A1000   equ     1000h | ((5 * OFFSET) & 0FFh)
A2000   equ     2000h | ((6 * OFFSET) & 0FFh)
A4000   equ     4000h | ((7 * OFFSET) & 0FFh)

; Delay for HL spin loop
DY10MS  equ     2391
DY100MS equ     21639

        org     0000h

START:

        jmp     A0000           ; jump over the rst/interupt handler code

RESET7:
        ; The FF opcode is a RST instruction that jumps to this location.  Put
        ; a forever loop with a fast blink here to catch any attempts to
        ; execute from unititialized EEPROM space.
        ;
        ; NOTE: multiple hardware and software interupts use this block of
        ; address space between 0000 and 003F and each one has as little as
        ; 4 bytes of unique address space.  In most applications, each
        ; interrupt handler would put a JMP instruction here and place its
        ; actual code elsewhere.
        org     0038H           ; RST 7 vector
        mvi     a,LEDON         ; turn led on
        sim
        lxi     h,DY100MS       ; pause
DRSTA:
        dcr     l
        jnz     DRSTA
        dcr     h
        jnz     DRSTA
        mvi     a,LEDOFF        ; turn led off
        sim
        lxi     h,DY100MS       ; pause
DRSTB:
        dcr     l
        jnz     DRSTB
        dcr     h
        jnz     DRSTB
        jmp     RESET7          ; loop forever


        ; test all upper address bits off
A0000:
        mvi     a,LEDON         ; Toggle the LED once to see the start of
        sim                     ;    the cycle on a scope
        mvi     a,LEDOFF
        sim

        mvi     a,LEDON         ; turn led on
        sim
        mvi     b,100           ; Number of 10ms to pause
D0000A:
        lxi     h,DY10MS        ; pause for 10ms
D0000B:
        dcr     l
        jnz     D0000B
        dcr     h
        jnz     D0000B
        dcr     b
        jnz     D0000A
        jmp     A0100


        ; test address bit 8
        org     A0100
        mvi     a,LEDOFF        ; turn led off
        sim
        mvi     b,100           ; Number of 10ms to pause
D0100A:
        lxi     h,DY10MS        ; pause for 10ms
D0100B:
        dcr     l
        jnz     D0100B
        dcr     h
        jnz     D0100B
        dcr     b
        jnz     D0100A
        jmp     A0200

        ; test address bit 9
        org     A0200
        mvi     a,LEDON         ; turn led on
        sim
        mvi     b,75            ; Number of 10ms to pause
D0200A:
        lxi     h,DY10MS        ; pause for 10ms
D0200B:
        dcr     l
        jnz     D0200B
        dcr     h
        jnz     D0200B
        dcr     b
        jnz     D0200A
        jmp     A0400


        ; test address bit 10
        org     A0400
        mvi     a,LEDOFF        ; turn led off
        sim
        mvi     b,100           ; Number of 10ms to pause
D0400A:
        lxi     h,DY10MS        ; pause for 10ms
D0400B:
        dcr     l
        jnz     D0400B
        dcr     h
        jnz     D0400B
        dcr     b
        jnz     D0400A
        jmp     A0800


        ; test address bit 11
        org     A0800
        mvi     a,LEDON         ; turn led on
        sim
        mvi     b,50            ; Number of 10ms to pause
D0800A:
        lxi     h,DY10MS        ; pause for 10ms
D0800B:
        dcr     l
        jnz     D0800B
        dcr     h
        jnz     D0800B
        dcr     b
        jnz     D0800A
        jmp     A1000


        ; test address bit 12
        org     A1000
        mvi     a,LEDOFF        ; turn led off
        sim
        mvi     b,100           ; Number of 10ms to pause
D1000A:
        lxi     h,DY10MS        ; pause for 10ms
D1000B:
        dcr     l
        jnz     D1000B
        dcr     h
        jnz     D1000B
        dcr     b
        jnz     D1000A
        jmp     A2000


        ; test address bit 13
        org     A2000
        mvi     a,LEDON         ; turn led on
        sim
        mvi     b,25            ; Number of 10ms to pause
D2000A:
        lxi     h,DY10MS        ; pause for 10ms
D2000B:
        dcr     l
        jnz     D2000B
        dcr     h
        jnz     D2000B
        dcr     b
        jnz     D2000A
        jmp     A4000


        ; test address bit 14
        org     A4000
        mvi     a,LEDOFF        ; turn led off
        sim
        mvi     b,100           ; Number of 10ms to pause
D4000A:
        lxi     h,DY10MS        ; pause for 10ms
D4000B:
        dcr     l
        jnz     D4000B
        dcr     h
        jnz     D4000B
        dcr     b
        jnz     D4000A

        jmp     START           ; Repeat forever
