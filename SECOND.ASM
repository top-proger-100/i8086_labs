; a = b + c * d - e / d
code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ax, c
mov bx, d
imul bx  ; ax = ax * bx  c * d
mov bx, b
add bx, ax  ; bx = bx + ax  b + c * d
mov ax, e
mov cx, d
idiv cx    ; ax = ax / cx   e / d
sub bx, cx  ;  b + c * d - e / d
mov ax, bx
mov a, ax
hlt
code ends
data segment
a dw ?
b dw -4
c dw 5
d dw -2
e dw -3
data ends
end start
