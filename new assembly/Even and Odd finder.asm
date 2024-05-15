.MODEL SMALL
.STACK 100H

.DATA
    msg_prompt DB 'Please Enter a number: $'
    msg_even   DB 'Your number is even.$'
    msg_odd    DB 'Your number is odd.$'

.CODE
MAIN PROC
                MOV  AX, @DATA
                MOV  DS, AX

    ; Display prompt message
                MOV  AH, 09H
                LEA  DX, msg_prompt
                INT  21H

    ; Read input number
                MOV  AH, 01H
                INT  21H
                SUB  AL, 30H           ; Convert ASCII to numeric value

    ; Check if number is even or odd
                TEST AL, 1
                JZ   even_number       ; Jump if even
                JMP  odd_number        ; Jump if odd

    even_number:
    ; Show even message
                MOV  AH, 09H
                LEA  DX, msg_even
                INT  21H
                JMP  end_program

    odd_number: 
    ; Show odd message
                MOV  AH, 09H
                LEA  DX, msg_odd
                INT  21H

    end_program:
                MOV  AH, 4CH
                INT  21H
MAIN ENDP
END MAIN
