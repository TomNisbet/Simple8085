; Test program to illustrate serial character I/O using SID and SOD.
; Prompts the user for a character and then prints a repeated string of that char.
; Contains subroutines for character I/O and string output.

; Can be run with the simple addressing of ROM at zeo and RAM at 8000 or
; will also work with the final Simple8085 addressing circuit if SYSROMST 
; and SYSRAMST addresses are swapped.

SYSROMST    equ     0000H
SYSRAMST    equ     8000H

; The stack starts at a random-ish address that will show on the low eight
; address bits when monitoring with a logic analyzer.
STACK       equ     SYSRAMST + 8EEH 

            org     SYSROMST

; Constants for serial connunications at 9600 with a 6.144MHz crystal
BITTIME     equ     275             ; Time delay for a single bit
HALFBIT     equ     137             ; Time after start bit detected to read the middle of a bit
OUTBITS     equ     11

; Character constants
LF          equ     00AH
CR          equ     00Dh
ESC         equ     01Bh

                                  
            jmp     START           ; jump over the ROM data definitions but also
                                    ; jump to a rom address to clear reset-mode Flip-flop
PROMPT:     db      "Enter a character to be printed",CR,LF,0


START:
            lxi     h,STACK         ; Initialize the stack pointer
            sphl

DOTEST:
            lxi     h,PROMPT        ; print the prompt
            call    PUTS
TESTLOOP:
            call    CIN             ; get a character
            mov     d,c             ; save the char
            mvi     e,20            ; number of times to repeat char
CHARLOOP:
            call    COUT            ; print the inputted char
            mov     c,d             ; restore the char to print it again
            dcr     e
            jnz     CHARLOOP

            mvi     c,CR            ; terminate the line of chars
            call    COUT
            mvi     C,LF
            call    COUT
            lxi     h,10000         ; delay a short moment
            call    DELAY
            jmp     CHARLOOP        ; get another character to print  




;*****************************************************************************
; CI - Character in from serial console
;
; inputs:   none
; outputs:  A - character from the console
; calls:    DELAY
; destroys: a,b,c,h,l
;*****************************************************************************
CIN:
            di
            push    b
            mvi     b,9         ; Number of bits to be read
CI1:
            rim
            ora     a
            jm      CI1
            lxi     h,HALFBIT
CI2:
            dcr     l
            jnz     CI2
            dcr     h
            jnz     CI2
CI3:
            lxi     h,BITTIME
CI4:
            dcr     l
            jnz     CI4
            dcr     h
            jnz     CI4
            rim
            ral
            dcr     b
            jz      CI5
            mov     a,c
            rar
            mov     c,a
            nop
            jmp     CI3

CI5:
            mov     a,c
            pop     b
            ei
            ret


;*****************************************************************************
; COUT - Character out
;
; inputs:   C - character to output
; outputs:  none
; calls:    none
; destroys: a,f
;
; Sends a single character to the serial console.
;*****************************************************************************
COUT:
            di
            push    b
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
            pop     b
            ei
            ret

;*****************************************************************************
; PUTS - Print a zero-terminated string to the console

; inputs:   C - character to output
; outputs:  HL - points to zero-terminated string
; calls:    COUT
; destroys: a,b,c,h,l
;*****************************************************************************
PUTS:
            mov     a,m             ; Get char
            ora     a               ; quit if zero
            rz
            mov     c,a             ; output the char
            call    COUT
            inx     h               ; next char
            jmp     PUTS


;*****************************************************************************
; DELAY - Spin loop to delay an operation
;
; inputs:   HL - loop count
; outputs:  none
; calls:    none
; destroys: h,l
;*****************************************************************************
DELAY:
            dcr     l
            jnz     DELAY
            dcr     h
            jnz     DELAY
            ret