code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ax, a
xor bx, bx
mov cx, 16
cycle:
        shl ax, 1
        jc count
        loop cycle
count:
        inc bx
        loop cycle
hlt
code ends
data segment
a dw 25
data ends
end start
