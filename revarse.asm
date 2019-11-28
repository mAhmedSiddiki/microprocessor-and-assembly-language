.model small
.stack 100h

.code
main proc
    
    mov cx,0
    
    pushh:
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,013
    je n
    push bx
    inc cx
    jmp pushh
    
    n:
    mov ah,2
    mov dl,010
    int 21h
    mov dl,013
    int 21h
    
    popp:
    pop dx
    int 21h
    loop popp
    
    mov ah,4ch
    int 21h
    main endp
end main