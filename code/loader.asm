; Simple loader to read Intel Hex records and write the data to RAM.
; Assemble with: asm85 -b8000:83ff loader.asm
;           or   asm85 -b0000:03ff loader.asm
;           to match the ROM start address

; Can be run with the simple addressing of ROM at 0000 and RAM at 8000 or
; will also work with the final Simple8085 addressing circuit if SYSROMST
; and SYSRAMST addresses are swapped.

; Note that the loader uses the last 256 bytes of RAM for the stack and
; local storage.  This must be moved if the loaded program will overwrite it.

SYSROMST    equ     8000H
SYSRAMST    equ     0000H

STACK       equ     SYSRAMST + 07FFFH
LDRAM       equ     SYSRAMST + 07FF0H

; Constants for serial communications at 9600 with a 6.144MHz crystal
; The connected terminal should be set for 9600,N,8,1
BITTIME     equ     0113H           ; 6.144MHz time delay for a single bit
HALFBIT     equ     010AH           ; 6.144MHz time after start bit detected to read the middle of a bit
;BITTIME     equ     0112H           ; 6.000MHz time delay for a single bit
;HALFBIT     equ     0109H           ; 6.000MHZ time after start bit detected to read the middle of a bit
BITSOUT     equ     11              ; Serial bits to send (start, 8 data, 2 stop)
BITSIN      equ     9               ; Serial bits to read + 1 (read 8 bits)

; Character constants
LF          equ     00AH
CR          equ     00Dh
ESC         equ     01Bh


; RAM variables - This is not initialized, so the values here are meaningless
            org     LDRAM
EXADDR      dw      0               ; Execute address
EXADFL      db      0               ; Execute address flag - nonzero if address provided

            org     SYSROMST
            jmp     START           ; jump over the ROM data definitions but also
                                    ; jump to a rom address to clear reset-mode Flip-flop

WELCOME:    db      '\r\nloader 1.0\r\n'
            db      'Send Intel Hex records or enter an execution address in the form\r\n'
            db      'GHHHH where HHHH is the starting address of the program.  ? for help\r\n',0

HELPMSG:    db      '\r\nIntel Hex record type 00 specifies data, an optional type 03 record\r\n'
            db      'can be used to specify the execution address in the IP field.  The file\r\n'
            db      'must be terminated with a type 01 EOF record.  If an execution address\r\n'
            db      'is provided then the loader will jump to that address after the EOF record,\r\n'
            db      'otherwise additional files may be sent.\r\n\r\n'
            db      'There is no flow control, so add a 1ms tx character delay and 10ms tx line delay\r\n'
            db      'to terminal settings so that the buffer does not overflow when sending files.\r\n'
            db      '\r\n',0

PROMPT:     db      '\r\nfeed me> ',0
PROMPTGO:   db      '\r\naddr> ',0
LDEMSG:     db      'err\r\n',0
EXMSG:      db      '\r\nload complete. executing...\r\n',0

START:
            mvi     a,0C0H          ; Set serial out to logic 1 (serial line idle)
            sim
            lxi     h,STACK         ; Initialize the stack pointer
            sphl

            xra     a               ; Clear the address flag
            sta     EXADFL

            lxi     h,WELCOME
            call    PUTS

LOADER:
            lxi     h,PROMPT
            call    PUTS
LDLINE:
            call    CIN
            cpi     ':'             ; All Intel Hex lines must start with ':'
            jz      LDHEXREC
            cpi     'G'             ; check for a Gxxx GO command
            jz      LDGOCMD
            cpi     '?'             ; check for a help command
            jnz     LDLINE          ; skip character if none of the above
            lxi     h,HELPMSG
            call    puts
            jmp     LOADER

LDHEXREC:
            call    GETBYTE         ; get count
            jc      LDERR
            mov     d,a
            call    GETBYTE         ; get high byte of address
            jc      LDERR
            mov     h,a
            call    GETBYTE         ; get low byte of address
            jc      LDERR
            mov     l,a
            call    GETBYTE         ; get record type
            jc      LDERR
            ora     a               ; DATA record if record type is 00H
            jz      LDDATA
            cpi     01H             ; END OF FILE record if type is 01H
            jz      LDEND
            cpi     03H             ; START SEG ADDR record type is 03H
            jnz     LDLINE          ; ignore the line if it is any other record type
            call    GETBYTE         ; verify and ignore the 2-byte CS address
            jc      LDERR
            call    GETBYTE
            jc      LDERR
            call    GETBYTE         ; execution address is in the 2-byte IP address
            jc      LDERR
            mov     h,a             ; get high byte of execution address
            call    GETBYTE
            jc      LDERR
            mov     l,a             ; get low byte of execution address
            shld    EXADDR          ; store address and flag that it has been stored
            mvi     a,1
            sta     EXADFL
            call    GETBYTE         ; get checksum
            jc      LDERR
            jmp     LDLINE          ; process another line

LDDATA:
            mov     a,d             ; make sure count is not zero
            ora     a
            jz      LDLINE
LDDATA1:
            call    GETBYTE         ; get the next data byte
            jc      LDERR
            mov     m,a             ; store the byte
            inx     h               ; point to the next location
            dcr     d               ; check if all bytes received
            jnz     LDDATA1
            call    GETBYTE         ; get the checksum
            jc      LDERR
            jmp     LDLINE          ; process another line

LDEND:
            call    GETBYTE         ; get the checksum
            jc      LDERR
            lda     EXADFL          ; file is complete - execute if address provided
            ora     a
            jz      LOADER          ; start again if no addr, might be more files or G cmd
            lxi     h,EXMSG
            call    puts
            lhld    EXADDR          ; get the stored address
            pchl                    ; Jump to execution address in HL

LDERR:
            lxi     h,LDEMSG
            call    PUTS
            jmp     LDLINE

LDGOCMD:
            lxi     h,PROMPTGO
            call    PUTS
            call    GETBYTE         ; Get a 2-byte execution address
            jc      LDERR
            mov     h,a             ; get high byte of execution address
            call    GETBYTE
            jc      LDERR
            mov     l,a             ; get low byte of execution address
            pchl                    ; Jump to execution address in HL


;*****************************************************************************
; GETNIB - Read a hex character from the console and return the 0..15 value.
;
; inputs:   none
; outputs:  A - value of hex character from the console, Carry set if error
; calls:    CI
; destroys: a,b,c,h,l
;*****************************************************************************
GETNIB:
            call    CIN             ; get a character from the console
            cpi     '0'             ; invalid char if less than '0'
            jc      GNERR
            cpi     'G'             ; invalid char if greater or equal to 'G'
            jnc     GNERR
            cpi     'A'             ; Between A-F, so hex char
            jnc     GNHEX
            cpi     '9'+1           ; error if greater than '9'
            jnc     GNERR
            sui     '0'             ; char is between 0..9, get value
            jmp     GNOK
GNHEX:
            sui     'A'-10          ; char is A..F, get value
GNOK:
            ora     a               ; clear carry for no error
            ret
GNERR:
            stc                     ; set carry for error
            ret


;*****************************************************************************
; GETHEX - Read a two hex characters from the console and return the 0..255 value.
;
; inputs:   none
; outputs:  A - value of hex byte from the console, Carry set if error
; calls:    CI
; destroys: a,b,c
;*****************************************************************************
GETBYTE:
            push    h
            push    d
            call    GETNIB          ; get the high nibble
            jc      GBEND
            rlc                     ; shift the 4 bit value to the upper bits; GETNIB
            rlc                     ;   returns 0..15 with the 4 bits are all zero
            rlc                     ;   so the lower 4 bits of A will all be zero after
            rlc                     ;   the shift
            mov     d,a             ; save high nibble
            call    GETNIB          ; get the low nibble
            jc      GBEND
            ora     d               ; combine both nibbles in A and reset carry to show OK
GBEND:
            pop     d
            pop     h
            ret


;*****************************************************************************
; CIN - Character in from serial console
;
; inputs:   none
; outputs:  A - character from the console
; calls:    DELAY
; destroys: a,f,b,c,h,l
;
; Data consists of a zero stop bit, followed by the data sent LSB first,
; followed by one or more ones as stop bits.  The stop bits are not actually
; read, they just provide a guaranteed delay before the next character needs
; to be read.  The line idles at logic level one, so when a zero is seen it
; is interpreted as the start bit of the next character.  A parity bit is not
; expected or checked.
;*****************************************************************************
CIN:
            di
            push    b
            mvi     b,BITSIN        ; Loop count is number of bits to be read minus one
CI1:                                ;   does not include stop bits
            rim                     ; Wait for a zero indicating a start bit
            ora     a
            jm      CI1
            lxi     h,HALFBIT       ; delay a half bit time to get to the middle of the start bit
CI2:
            dcr     l
            jnz     CI2
            dcr     h
            jnz     CI2
CI3:
            lxi     h,BITTIME       ; delay to the middle of the next data bit
CI4:
            dcr     l
            jnz     CI4
            dcr     h
            jnz     CI4

            rim                     ; read the next data bit
            ral                     ; shift the data bit into the carry flag
            dcr     b               ; exit if all of the bits have been read
            jz      CI5
            mov     a,c             ; character in progress into A
            rar                     ; shift the data bit from carry into the MSB
            mov     c,a             ; store the character back into C
            nop
            jmp     CI3             ; get the next bit

CI5:
            mov     a,c             ; return the character in A
            out     0AAH            ; DEBUG: output the char value for the logic analyzer
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
;
; Data consists of a zero stop bit, followed by the data sent LSB first,
; followed by one or more ones as stop bits.  No parity bit is calculated or
; sent.
;*****************************************************************************
COUT:
            di
            push    h
            push    b
            mvi     b,BITSOUT       ; Number of output bits
            xra     a               ; Clear carry for a zero start bit
CO1:
            mvi     a,080H          ; Set the MSB to shift into the SDE flag
            rar                     ; Shift one into SDE and carry into SOD flag
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
            pop     h
            ei
            ret

;*****************************************************************************
; PUTS - Print a zero-terminated string to the console

; inputs:   C - character to output
; inputs :  HL - points to zero-terminated string
; outputs:  none
; calls:    COUT
; destroys: a,f,c,h,l
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
; destroys: f,h,l
;*****************************************************************************
DELAY:
            dcr     l
            jnz     DELAY
            dcr     h
            jnz     DELAY
            ret
