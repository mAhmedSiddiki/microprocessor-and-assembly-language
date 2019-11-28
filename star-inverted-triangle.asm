.model small
.stack 100h
.data

msg db "How many lines you input: $"
msg1 db 010,013,"$"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov bh,bl
    
    k:
    cmp bh,0
    je exit
    
    mov cx,0
    mov cl,bh
    
    n:
    mov ah,2
    mov dl,042
    int 21h
    loop n
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    dec bh
    jmp k
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main