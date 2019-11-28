.model small
.stack 100h
.data

msg db " marjuk $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,'1'
    int 21h
    
    call p2
    
    call p1
    
    mov ah,4ch
    int 21h
    main endp

    p1 proc
        mov ah,2
        mov dl,'2'
        int 21h
        ret
        p1 endp
    
    p2 proc
        lea dx,msg
        mov ah,09h
        int 21h
        ret
        p2 endp