code segment
start:
        mov     ax,word ptr cs:a
        add     ax,word ptr cs:b
        mov     word ptr cs:c,ax
        hlt
a dw 8
b dw 6 
c dw ?
code ends
     end start 
