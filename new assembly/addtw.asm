.model small
.data 
	enter db 'enter a num: $'
	number db ?
.stack
.code
main:	
	mov ax,@data
	mov ds,ax
	lea dx,enter
	mov ah,09h
	int 21h

	mov ah,01h
	int 21h
	
	mov number,al
	mov dl,number
	mov ah,02h
	int 21h

	mov dl,0dh
	mov ah,02h
	int 21h
	mov dl,0ah
	mov ah,02h
	int 21h

	mov ah,4ch
	int 21h

end main