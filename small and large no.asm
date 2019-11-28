.model small
.stack 100h
.data

msg db "Enter three numbers: $"
msg1 db "Result: $"
msg2 db 010,013,"$"
msg3 db "1. Smallest$"
msg4 db "2. Greatest$"
msg5 db "Choose....$"
                             
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    lea dx,msg3
    mov ah,09h
    int 21h
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    lea dx,msg4
    mov ah,09h
    int 21h
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    lea dx,msg5
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov ch,al 
    
    lea dx,msg2
    mov ah,09h
    int 21h
   
    lea dx,msg2
    mov ah,09h
    int 21h
    
    cmp ch,'1'
    je small
    cmp ch,'2'
    je large
    
    large:  
    lea dx,msg1
    mov ah,09h
    int 21h
    
    cmp bl,bh
    jg l         ;bl>bh
    jl j         ;bl<bh
    
    j:
    cmp bh,cl
    jg jj        ;bh>cl
    jl mmm
    
    jj:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    l:
    cmp bl,cl
    jg ll        ;bl>cl
    jl mmm
    
    ll:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    small:
    lea dx,msg1
    mov ah,09h
    int 21h
    
    cmp bl,bh
    jl n      ;bl<bh
    jg m      ;bl>bh
    
    m:
    cmp bh,cl
    jl mm      ;bh<cl
    jg mmm
    
    mm:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    n:
    cmp bl,cl  
    jl nn      ;bl<cl
    jg mmm
    
    mmm:
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    nn:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main