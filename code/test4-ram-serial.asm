; Test program to bit-bang characters out SOD as serial async data
; assemble with: asm85 -b0000:00ff test4-ram-serial.asm

; The character to be sent is stored in RAM.
; The BITTIME is calculated for a 6.144MHz processor clock.

; This can be run using the simple addressing hardware where ROM OE is connected to A15
; and RAM OE is inverted A15.  This puts ROM at 0000H and RAM at 8000H.

; This can also be run on the final hardware that has RAM at 0000H and ROM at 8000H.
; The SYSROMST and SYSRAMST must be changed to accommodate this.
; Note the first jump that seems to do nothing, but it clears the Reset-mode flip-flip.
; The ROM is normally at 8000 and the RAM at 0000.  At reset, the ROM maps to
; both 0000 and 8000.  This condition persists until the A15 line goes high.
; The first instruction is located at 8000, but the PC will actually be 0000
; when it executes.  The jump to 8003 will cause the reset-mode flip-flop to
; clear and the normal addressing scheme will be activated.  At this point,
; the RAM and ROM use their normal addressing.
; When the simple addressing is used, the initial JMP START instruction is not needed
; but there is no harm in leaving it in.

SYSROMST    equ     0000H
SYSRAMST    equ     8000H

CHRMEM      equ     SYSRAMST + 100H

            org     SYSROMST

BITTIME equ     0113H           ; 6.144 time delay for a single bit
;BITTIME equ     0112H           ; 6.000 time delay for a single bit
OUTBITS     equ     11

            jmp     START           ; jump to a rom address to clear reset-mode Flip-flop
START:
            mvi     a,'A'           ; Send a test character
            sta     CHRMEM
SEND:
            mov     c,a             ; Store the character to send in C
COUT:
            di
            mvi     b,OUTBITS       ; Number of output bits
            xra     a               ; Clear carry for start bit
CO1:
            mvi     a,080H          ; Set the SDE flag
            rar                     ; Shift carry into SOD flag
            cmc                     ; ??? This appears to be useless, carry is  set below
            sim                     ; Output start, data, or stop bit
            lxi     h,BITTIME       ; Load the time delay for one bit width
CO2:
            dcr     l               ; Wait for bit time
            jnz     CO2
            dcr     h
            jnz     CO2
            stc                     ; Shift in ones for stop bit(s)
            mov     a,c             ; Get char to send
            rar                     ; LSB of char into carry to send
            mov     c,a             ; Store rotated data
            dcr     b
            jnz     CO1             ; Send next bit
            ei

            lxi     h,1000H         ; Wait a while before sending the character again
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
            jmp     SEND            ; Print next char
