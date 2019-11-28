.model small
.stack 100h
.data

msg1 db 'Enter a number: $'
msg2 db '     Greater.$'
msg3 db '     Smallest.$'

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,09h
    int 21h
           
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48      
           
    mov ah,2
    mov dl,010
    int 21h
    
    mov ah,2
    mov dl,013
    int 21h
    
    cmp bl,5
    jl l1
    
    lea dx,msg2
    mov ah,09h
    int 21h
    jmp exit
    
    l1:
    lea dx,msg3
    mov ah,09h
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main