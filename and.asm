.model small
.stack 100h
.data

.code
main proc
    mov bx,10101111b  
    and bx,10001011b
    
    mov ah,2
    mov dx,bx
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main