data segment
    a db 09h
    b db 02h
    c dw ?
    data ends
code segment
    assume cs:code, ds:data
    start:
    mov ax,data
    mov ds,ax
    mov ax,0000h
    mov bx,0000h
    mov al,a
    mov bl,a
    mul b
    mov c,ax
    int 3
    code ends
end start