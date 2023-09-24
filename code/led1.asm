; Test program for 8085 SBC.  Blinks an LED on SOD forever.
; Note the first jump that seems to do nothing.  This is for the power-on jump.
; The ROM is normally at 8000 and the RAM at 0000.  At reset, the ROM maps to
; both 0000 and 8000.  This condition persists until the A15 line goes high.
; The first instruction is located at 8000, but the PC will actually be 0000
; when it executes.  The jump to 8003 will cause the power-on flip flop to
; clear and the normal addressing scheme will be activated.  At this point,
; the RAM and ROM use their normal addressing.

	ORG 8000h
	
	JMP START	; Jump to ROM

START:  MVI A, 0C0h	; LED on
        SIM

        MVI A, 0FFh	; Delay
        MOV B, A
D1PT1:  DCR A
D1PT2:  DCR B
        JNZ D1PT2
        CPI 00h
        JNZ D1PT1

        MVI A, 40h	; LED off
        SIM

        MVI A, 0FFh	; Delay
        MOV B, A
D2PT1:  DCR A
D2PT2:  DCR B
        JNZ D2PT2
        CPI 00h
        JNZ D2PT1

        JMP START	; Loop forever
