.model small
.data
    ent1 db "Enter first number: $"
    ent2 db "Enter Second number: $"
    result_msg db "The result is: $"
    re1 db ?
    re2 db ?
    result1 db ?
.stack 
.code
main:
    mov ax, @data
    mov ds, ax
    
    ; Input first number
    mov ah, 09h
    lea dx, ent1
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h ; Convert ASCII character to numeric value
    mov [re1], al

    ; Input second number
    mov ah, 09h
    lea dx, ent2
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h ; Convert ASCII character to numeric value
    mov [re2], al

    ; Add numbers
    mov al, [re1]
    add al, [re2]
    mov [result1], al
    
    ; Display result message
    mov ah, 09h
    lea dx, result_msg
    int 21h

    ; Display result
    mov ah, 02h
    mov dl, [result1]
    add dl, 30h ; Convert numeric value to ASCII character
    int 21h

    mov ah, 4ch
    int 21h

end main
