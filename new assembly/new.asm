.model small
.data
string db 'Hello word','$'
.stack
.code
main:
    mov ax,@data
    mov ds,ax
    lea dx,string
    mov ah,09h
    int 21h
    mov ah,4ch
    int 21h

end main