.model small
.stack 100h
.data

msg1 db "Enter first number: $"
msg2 db "Enter sencond number: $"
msg3 db "Summation: $"
msg4 db "Even number. $"
msg5 db "Odd number. $"
msg6 db 010,013,"$"

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
    
    lea dx,msg6
    mov ah,09h
    int 21h
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    add bl,bh
    sub bl,48
    
    lea dx,msg6
    mov ah,09h
    int 21h
    
    lea dx,msg6
    mov ah,09h
    int 21h
    
    lea dx,msg3
    mov ah,09h
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    lea dx,msg6
    mov ah,09h
    int 21h
    
    cmp bl,'0'
    je even:
    cmp bl,'1'
    je odd:
    cmp bl,'2'
    je even:
    cmp bl,'3'
    je odd:
    cmp bl,'4'
    je even:
    cmp bl,'5'
    je odd:
    cmp bl,'6'
    je even:
    cmp bl,'7'
    je odd:
    cmp bl,'8'
    je even:
    cmp bl,'9'
    je odd: 
    
    odd:
    lea dx,msg5
    mov ah,09h
    int 21h
    jmp exit:
    
    even:
    lea dx,msg4
    mov ah,09h
    int 21h
    jmp exit:
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main