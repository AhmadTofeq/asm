.MODEL SMALL
.STACK 100H

.DATA
    msg_number DB 'Number: $'

.CODE
MAIN PROC
               MOV AX, @DATA
               MOV DS, AX

               MOV CX, 1             ; Set loop counter to 1

    loop_start:
    ; Display "Number: " message
               MOV AH, 09H
               LEA DX, msg_number
               INT 21H

    ; Display current number
               MOV DL, CL            ; Move loop counter value to DL
               ADD DL, '0'           ; Convert to ASCII
               MOV AH, 02H           ; Display character function
               INT 21H

    ; Move to the next line for better formatting
               MOV DL, 0DH           ; Carriage return
               MOV AH, 02H           ; Display character function
               INT 21H
               MOV DL, 0AH           ; Line feed
               MOV AH, 02H           ; Display character function
               INT 21H

               INC CL                ; Increment loop counter
               CMP CL, 10            ; Check if loop counter reached 10
               JBE loop_start        ; Jump if below or equal to 10

               MOV AH, 4CH
               INT 21H
MAIN ENDP
END MAIN
