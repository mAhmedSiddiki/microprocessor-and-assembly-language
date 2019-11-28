.model small
.stack 100h
.data

msg1 db "Enter first number: $"
msg2 db "Enter second number: $"
msg3 db "Summation: $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,010
    int 21h
    
    mov ah,2
    mov dl,013
    int 21h
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    add bl,cl
    sub bl,48
    
    mov ah,2
    mov dl,010
    int 21h
    
    mov ah,2
    mov dl,013
    int 21h
    
    lea dx,msg3
    mov ah,09h
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main