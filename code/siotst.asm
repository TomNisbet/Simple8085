; Test program to illustrate serial character I/O using SID and SOD.
; Prompts for a character and then prints a repeated string of that character.
; Contains subroutines for character I/O and string output.

; Can be run with the simple addressing of ROM at 0000 and RAM at 8000 or
; will also work with the final Simple8085 addressing circuit if SYSROMST
; and SYSRAMST addresses are swapped.

;        6.144MHz    6.000MHz    Bit width   6.000MHz Explorer ROM
;19200                           52.29       0106  0103
;14400                           70.94us     010A  0105
; 9600  0113 010a   0103 0102                0112  0109
; 4800              010a 0105                0128  0114
; 2400              0119 010d    416us       0154  012A
; 1200              0137 011c    835.66us    01AE  0157
;  600              0172 0139   1.66932ms    0260  01B0
;  300              01e9 0175   3.33765ms    03C5  0263

SYSROMST    equ     8000H
SYSRAMST    equ     0000H

; The stack starts at a random-ish address that will show on the low eight
; address bits when monitoring with a logic analyzer.
STACK       equ     SYSRAMST + 2EEEH

            org     SYSROMST

            jmp     START           ; jump over the ROM data definitions but also
                                    ; jump to a rom address to clear reset-mode Flip-flop


START:
            lxi     h,STACK         ; Initialize the stack pointer
            sphl
            call    SIOTST
            jmp     START


;*****************************************************************************
; SIOTST - Wait for space character on SIO and compute the baud rate
;
; inputs:   none
; outputs:  BITTIME - time delay for a single bit
;           HALFBIT - time delay for a half bit
; calls:    none
; destroys: a,f,b,c,d,e,h,l
;
;*****************************************************************************
SIOTST:
        mvi     a,0C0H      ; Set serial out to logic 1
        sim
BRID:
        rim                 ; Wait for logic 1 on SID (idle)
        ora     a
        jp      BRID

BRI1:
        rim                 ; Wait for logic 0 on SID
        ora     a
        jm      BRI1

        lxi     h,0FFFAH    ; Init HL to -6
BRI3:
        mvi     e,004H
BRI4:
        dcr     e
        jnz     BRI4
        inx     h
        rim                 ; Wait for logic 1 on SID (start bit)
        ora     a
        jp      BRI3

        push    h
        inr     h
        inr     l
    ;    shld    BITTIME
        mov     a,h
        out     0b0h
        mov     a,l
        out     0b1h
        pop     h
        ora     a
        mov     a,h
        rar
        mov     h,a
        mov     a,l
        rar
        mov     l,a
        inr     h
        inr     l
        mov     a,h
        out     0b2h
        mov     a,l
        out     0b3h
    ;    shld    HALFBIT
        ret
