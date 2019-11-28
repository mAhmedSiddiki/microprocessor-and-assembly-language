.model small
.stack 100h
.data

msg1 db 010,013,"Yes$"
msg2 db 010,013,"No$"
arrin db 10 dub(?)


.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov di,0
    mov cx,0
    
    ha:
    mov ah,1
    int 21h
    cmp al,013
    je hi
    mov arrin[di],al
    inc cx
    inc di
    jmp ha
    
    hi:
    mov ah,2
    mov dl,010
    int 21h
    mov dl,013
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov di,0
    
    hu:
    cmp bl,arrin[di]
    je du
    inc di
    loop hu
    
    lea dx,msg2
    mov ah,09h
    int 21h
    jmp exit
    
    du:
    lea dx,msg1
    mov ah,09h
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main