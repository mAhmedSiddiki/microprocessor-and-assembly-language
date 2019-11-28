.model small
.stack 100h

.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
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
    
    mov ah,2
    mov dl,083  ;S
    int 21h
    
    mov ah,2
    mov dl,117  ;u
    int 21h       
    
    mov ah,2
    mov dl,109   ;m
    int 21h
    
    mov ah,2
    mov dl,061
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main