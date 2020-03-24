.model small
.stack 100h
.data

.code
main proc 
    mov ax,0000100b
    shr ax,2 
    
    add ax,48
    
    mov ah,2
    mov dx,ax
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main