.model small
.stack 100h
.data

msg3 db "Same$"
msg4 db "Not Same$"

.code
main proc
    mov ax,@data
    mov ds,ax
             
    first:
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bl,bh
    je same
    jne nsame
    
    same:
    lea dx,msg3
    mov ah,09h
    int 21h  
    
    mov ah,2
    mov dl,010
    int 21h
    mov dl,013
    int 21h
    
    jmp first
    
    nsame:
    lea dx,msg4
    mov ah,09h
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main