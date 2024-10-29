code segment
assume cs:code, ds:data
start:
        mov ax, data
        mov ds, ax
        mov ax, 0
        mov bx, 1
        mov dx, a
        cycle:
                mov value, bx
                add bx, ax
                cmp bx, dx
                mov ax, value
                jge endd
                loop cycle
        endd:
        hlt
code ends
data segment
a dw 300
value dw 0
data ends
end start 
