.model small
.stack 100h
.data

msg db 100 dup('$')
msg1 db "Result: $"

.code
main proc
    
    mov cx,0
        
    mov ax,@data
    mov ds,ax
    
    mov si,offset msg
    
    nn:
    mov ah,1
    int 21h
    
    cmp al,013
    je n
    mov [si],al
    inc si
    inc cx
    jmp nn
    
    n:
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov si,0
    
    l1:
    mov dx,[si]
    mov ah,2
    int 21h
    inc si
    loop l1
    
    mov ah,4ch
    int 21h
    main endp
end main