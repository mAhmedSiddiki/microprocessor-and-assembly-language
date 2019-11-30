.MODEL SMALL
.STACK 100H
.DATA    

FNAME DB 'FILE2.txt',0
HANDLE DW ?
MSG DB 'DAFFODIL INTERNATIONAL UNIVERSITY.'
TEXT_SIZE = $ - OFFSET MSG
BUFFER DB TEXT_SIZE DUP('$')
COUNT DB TEXT_SIZE

.CODE 
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    ;create file
    MOV AH,3CH
    MOV DX,OFFSET(FNAME)
    INT 21H

    ;input data
    ;open file
    MOV AH,3DH
    MOV DX,OFFSET(FNAME)
    MOV AL,1  
    INT 21H
    MOV HANDLE,AX

    ;insert file
    MOV AH,40H
    MOV BX,HANDLE
    mov cx,TEXT_SIZE
    MOV DX, OFFSET(MSG)
    INT 21H
   
    ;close file
    MOV AH,3EH
    MOV DX,HANDLE
    INT 21H
     
    ;show 
    ;open file
    MOV AH,3DH
    MOV DX,OFFSET(FNAME)
    MOV AL,0  
    INT 21H
    MOV HANDLE,AX

    MOV AH,3FH
    MOV BX,HANDLE
    MOV DX,OFFSET(BUFFER)
    MOV CX,TEXT_SIZE
    INT 21H

    ;display
    MOV SI,OFFSET(BUFFER)
    L1:
    MOV AH,2
    MOV DL,[SI]
    INT 21H
    INC SI
    DEC COUNT
    JNZ L1
    
    ;close file
    MOV AH,3EH
    MOV DX,HANDLE
    INT 21H

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN