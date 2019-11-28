.model small
.stack 100h
.data

arr db 10 dub(?)

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov di,0
    ha:
    mov ah,1
    int 21h
    cmp al,013
    je n
    mov arr[di],al
    inc di
    jmp ha
    
    
    
    n:
    mov di,0
    mov ah,2
    mov dl,010
    int 21h
    mov dl,013
    int 21h
    
    haa:
    cmp arr[di],0
    je exit
    mov ah,2
    mov dl,arr[di]
    int 21h
    inc di
    jmp haa
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main