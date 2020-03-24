.model small
.stack 100h
.data

.code
main proc
    mov bx,10110001b  
    or bx,01001001b
    
    mov ah,2
    mov dx,bx
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main