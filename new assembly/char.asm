.model small
.data
srt db 'enter: $'
number db ?
.stack
.code
main:
	mov ax,@data
	mov ds,ax
	lea dx,[srt]
	mov ah,09h
	int 21h
	
	mov ah,01h
	int 21h
	mov [number],al
	mov dl,[number]
	mov ah,02h
	int 21h
	
	mov ah,4ch
	int 21h
end main