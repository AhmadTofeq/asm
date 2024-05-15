.model small
.data
wsha db 'kakm','$'
.stack
.code
main:
    mov ax, @data
    mov ds,ax
    lea dx,[wsha]
    mov ah,09h
    int 21h
    mov ah,4ch
    int 21h

end main