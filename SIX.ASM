code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ax, 0
mov bx, 1
mov dx, 0
mov cx, n
cycle:
        mov dx, bx
        add bx, ax
        mov ax, dx
        loop cycle
hlt
code ends
data segment
n dw 14
data ends
end start
