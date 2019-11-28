.model small
.stack 100h
.data

msg db "Hexadecimal to Decimal$"
msg1 db 010,013,"$"
msg2 db "Hexadecimal: $"
msg3 db "Decimal: $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    lea dx,msg3
    mov ah,09h
    int 21h 
    
    cmp bl,'9'
    jle n
    jne nn
    
    n:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    nn:
    mov cl,'1'
    
    mov ah,2
    mov dl,cl
    int 21h
    
    sub bl,17d
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main