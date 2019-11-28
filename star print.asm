.model small
.stack 100h
.data

msg1 db "Star Print"
msg2 db 010,013,"$"
msg3 db "How many print star: $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    lea dx,msg3
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
 
    sub al,48
    
    loop:
    mov cx,0
    mov cl,al
    
    lea dx,msg2
    mov ah,09h
    int 21h 
    
    mov ah,2
    mov dl,'*'
    
    top:
    int 21h
    loop top
    
    mov ah,4ch
    int 21h
    main endp
end main