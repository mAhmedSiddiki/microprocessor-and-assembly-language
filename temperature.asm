.model small
.stack 100h
.data

fw db "Freezing Weather$"
vcw db "Very Cold Weather$"
cw db "Cold Weather$"
nit db "Normal in Temp$"
ih db "It's Hot$"
ivh db "It's Very Hot$"

.code
main proc
    mov ax,@data
    mov ds,ax

    mov bx,39
    
    cmp bx,0
    jge cheakten
    jl ffw
    
    ffw:
    lea dx,fw
    mov ah,09h
    int 21h
    jmp exit
    
    cheakten:
    cmp bx,10
    jl vvcw
    jge cheak20
    
    cheak20:
    cmp bx,20
    jl ccw
    jge cheak30
    
    cheak30:
    cmp bx,30
    jl nnit
    jge cheak40
    
    cheak40:
    cmp bx,40
    jl iih
    jge iivh
    
    iivh:
    lea dx,ivh
    mov ah,09h
    int 21h
    jmp exit
    
    iih:
    lea dx,ih
    mov ah,09h
    int 21h
    jmp exit
    
    nnit:
    lea dx,nit
    mov ah,09h
    int 21h
    jmp exit
    
    ccw:
    lea dx,cw
    mov ah,09h
    int 21h
    jmp exit
       
    vvcw:
    lea dx,vcw
    mov ah,09h
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main