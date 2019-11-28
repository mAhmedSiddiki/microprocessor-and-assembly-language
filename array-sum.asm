.model small
.stack 100h
.data

array db 1,2,3,4,5

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,0
    mov cx,5
    
    mov di,0
    
    sum:
    mov al,array[di]
    add al,array[di+1]
    add al,48
    
    mov ah,2
    mov dl,al
    int 21h
    
    inc di
    loop sum
    
    mov ah,4ch
    int 21h
    main endp
end main