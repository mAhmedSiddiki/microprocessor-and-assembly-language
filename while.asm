.model small
.stack 100h

.code
main proc
    
    mov cx,0 
    
    mov ah,1
    int 21h
    
    while:
    cmp al,013
    je exit
    inc cx
    int 21h
    jmp while
    
    exit:
    mov ah,2
    mov dl,010
    int 21h
    mov dl,013
    int 21h
    
    mov ah,2
    add cx,48
    mov dx,cx
    int 21h  
    mov ah,4ch
    int 21h
    main endp
end main