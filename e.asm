code segment
        assume cs:code
start:
        mov ax, 0b800h
        mov es, ax
        mov ds, ax
        mov di, 1480
        mov si, 1480
        mov al, 0
        mov ah, 00001111b
        mov bh, 00000000b
        mov bl, 128
        cld
        m:
        cmp bl, 128
        je b2
        mov di, 1536
        mov si, 1536
        mov ah, 00001111b
        mov bh, 00000000b
        b2:
        mov cx, 16
        b:
        and ah, 00001111b
        or ah, bh
        stosw
        lodsw
        inc bh
        inc al
        loop b
        and di, 128
        and si, 128
        cmp al, bl
        jne b2
        cmp bl, 128
        mov bl, 0
        je m
        mov ah, 4ch
        int 21h
        hlt
code ends
end start
