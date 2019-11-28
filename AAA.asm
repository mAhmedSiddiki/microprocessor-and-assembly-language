.model small
.stack 100h
.data

msg db "Enter two numbers: $"
msg1 db "Summation = $"
msg2 db 010,013,"$"

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
    int 21h
    
    mov ah,00h
    
    add ax,bx
    aaa
    
    add ax,3030h
    
    mov bx,ax
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main