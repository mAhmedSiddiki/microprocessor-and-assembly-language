.model small
.stack 100h

.code
main proc
    
    call p1
    mov ah,2
    mov dl,'2'
    int 21h
    
    call p2
    
    mov ah,4ch
    int 21h
    main endp
    
    p1 proc
        mov ah,2
        mov dl,'1'
        int 21h
        ret
        p1 endp
    
    p2 proc
        mov ah,2
        mov dl,'3'
        int 21h
        ret
        p2 endp
    