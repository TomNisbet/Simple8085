; Test program to bit-bang a single character out SOD as serial async data
; This program does not use any RAM or stack instructions, so it can be run
;   from a ROM-only system.
; The BITTIME is calculated for a 6.144MHz processor clock.

; Note the first jump that seems to do nothing, but it clears the Reset-mode flip-flip.
; The ROM is normally at 8000 and the RAM at 0000.  At reset, the ROM maps to
; both 0000 and 8000.  This condition persists until the A15 line goes high.
; The first instruction is located at 8000, but the PC will actually be 0000
; when it executes.  The jump to 8003 will cause the reset-mode flip-flop to
; clear and the normal addressing scheme will be activated.  At this point,
; the RAM and ROM use their normal addressing.

SYSROMST    equ     0000H
SYSRAMST    equ     8000H

CHRMEM      equ     SYSRAMST + 100H

            org     SYSROMST

BITTIME     equ     275             ; Time delay for a single bit
OUTBITS     equ     11

            jmp     START           ; jump to a rom address to clear reset-mode Flip-flop
START:
            mvi     a,'A'           ; Send a test character
            sta     CHRMEM
COUT:
            di
            mov     a,c             ; Get the character to send
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

            lda     CHRMEM          ; Get the char that was just printed
            cpi     'Z'
            jz      START           ; Reset char back to A
            inr     a               ; Advance to next char to print A thru Z
            sta     CHRMEM
            jmp     COUT            ; Print next char
