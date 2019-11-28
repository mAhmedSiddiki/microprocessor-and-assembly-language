.model small
.stack 100

.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al  
    
    mov ah,2
    mov dl,010
    int 21h
    
    mov ah,2
    mov dl,013
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main