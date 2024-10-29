code segment
assume cs:code, ds:data
sum proc
	push bp
	mov bp, sp
	mov ax, [bp + 4]
	mov bx, [bp + 6]
	mov cx, [bp + 8]
	add ax, bx
	add ax, cx
	pop bp
	ret
sum endp
start:
	mov ax, data
	mov ds, ax
	mov ax, a
	push ax
	mov ax, b
	push ax
	mov ax, c
	push ax
	call sum
	pop bx
	pop cx
	pop dx
	hlt
code ends
data segment
a dw 5
b dw 10
c dw 2
data ends
end start
