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

H4sIAAAAAAAAAF1R23KiMAD9lR1eqRUv3DrTmUWxCgpYr+C6DyGJQAsBQxBtx3/fyNrtzOYt55w5l+RTSBOISYntpecKT8LnXihojirILLQXnvYCBUWCsoRg2ipZhZJ8Lzz802wwLZOclFz5ay+oj11xL/z+pkcoYZxufDAHwO0G0rsDhhhhAjGnNYkj9yJTfOEIqdKUYyUDlJmA3UQdRe+rPUVqDufwuUhoY/klULuK3Ot09Nv5NlyXmHKWLyMgw00ZI84A+mGEiKeApg7OQJI2HLhxLD/gY0fv/Yxu+CPMs6/ZBaYswbfFn9crhyCfzyhICCv/hvwHNKJ7E8tsEtS+hhBGqCWrQGr1ZU1p6aGKW7KO1IOkqKouKU0cICRnzcLy/iRX4UEok4gAVlHMv0tK5RmM+saLqcvd3gLPXz/8LZlPKkDCeC331dhSxV6+9PW6a4UmUGb+fNTW3V27iLV1N4wWnjm4FGF/Y65ssh0Zofl6qnNH2RRuUMflOSep98F8T09nw5fK8idjKhYbI0DTWcmC0PHhslCrbCEFI2Crk9yt6e4NG/Eb9ELZWBYRFu3qYMqDaR1k8/4pzqs6idINi9bDI6Pt5RCnUroYD447dzKqOtQTC2fiOEoaj7dAWyVO+7TCmcFM5+B6QbqEdm6Ygcd6/rZ9NmBs5N74aF92JRkX4gJNLVOHdvTi53QyHrVnytncvOHhOaMHKL7Td80+shm0MArWcOUOanN5qcSabg0t3O7OVm89Wi+i52fh+gf8GGoVGQMAAA==