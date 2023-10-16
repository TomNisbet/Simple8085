; Test program for 8085 SBC.  Blinks an LED on SOD forever.
; This program does not use any RAM or stack instructions, so it can be run
;   from a ROM-only system.

	    org 0000h

DLYTIM  equ 0ffffh      ; Delay loop for LED on and off times

START:
        mvi a, 0c0h     ; turn led on
        sim

		lxi h, DLYTIM	; pause
DELAY1:
        dcr l
		jnz DELAY1
        dcr h
        jnz DELAY1

        mvi a, 40h	    ; turn led off
        sim

        lxi h, DLYTIM   ; pause
DELAY2:
        dcr l
		jnz DELAY2
        dcr h
        jnz DELAY2

        jmp START	    ; Repeat forever
