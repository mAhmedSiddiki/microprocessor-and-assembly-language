.model small
.stack 100h
.data

msg db "How many lines you input: $"
msg1 db 010,013,"$"
msg2 db " $"
a db ?
b db ?
c db ?

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov a,al
    sub a,48
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov bl,a
    sub bl,1
    
    mov c,1
    
    k:
    cmp bl,0
    je kk
    mov cx,0
    mov cl,bl
    
    space:
    lea dx,msg2
    mov ah,09h
    int 21h
    loop space
    
    dec bl
    
    kk:
    mov cx,0
    mov cl,c
    
    cmp a,000
    je exit
    star:
    mov ah,2
    mov dl,042
    int 21h
    loop star
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    inc c
    inc c
    dec a
    
    jmp k
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main