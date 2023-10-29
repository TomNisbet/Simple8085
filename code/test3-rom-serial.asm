; Test program to bit-bang a single character out SOD as serial async data
; assemble with: asm85 -b0000:00ff test3-rom-serial.asm
;
; This program does not use any RAM or stack instructions, so it can be run
; from a ROM-only system.
;
; The BITTIME is calculated for a 6.144MHz processor clock.

        org     00000H

BITTIME equ     0113h          ; Time delay for a single bit
OUTBITS equ	    00Bh

START:
        mvi     c,'T'           ; Send a test character
COUT:
        di
        mvi     b,OUTBITS       ; Number of output bits
        xra     a               ; Clear carry for start bit
CO1:
        mvi     a,080H          ; Set the SDE flag
        rar                     ; Shift carry into SOD flag
        cmc                     ;   and invert carry.  Why? (serial is inverted?)
        sim                     ; Output data bit
        lxi     h,BITTIME       ; Load the time delay for one bit width
CO2:
        dcr     l               ; Wait for bit time
        jnz     CO2
        dcr     h
        jnz     CO2
        stc                     ; Shift in stop bit(s)
        mov     a,c             ; Get char to send
        rar                     ; LSB into carry
        mov     c,a             ; Store rotated data
        dcr     b
        jnz     CO1             ; Send next bit
        ei

        lxi     h,03fffH        ; Wait a while before sending the character again
CHILL:
        dcr     l
        jnz     CHILL
        dcr     h
        jnz     CHILL

        jmp     START
