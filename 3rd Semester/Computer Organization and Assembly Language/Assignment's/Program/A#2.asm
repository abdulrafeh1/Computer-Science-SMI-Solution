.model small 
.stack 100h
.data
name1 db 'Enter Sales Man Name: $'
var1  db 'Enter Sales Man Point 0-9: $'
sale1 db 'Sale Target Not Achieved $'
sale2 db 'Sale Target Achieved $'
alp1  db 'Invalid Key $'
star1 db '||***ABDUL RAFEH***|| $'
.code
start:
Mov ax,@data
Mov ds,ax

mov ah,09
mov dx, offset star1
int 21h

mov ah,02
mov dl, 10
int 21h

mov ah,09
lea dx, name1
int 21h

mov ah,3fh
int 21h 

mov ah,09
lea dx, var1
int 21h 

mov ah, 01
int 21h

cmp al, 53
Jle Poor

cmp al, 57
Jle Brilliant

cmp al, 'A'
Jge Alphabet

jmp exit

Poor:
mov ah,02
mov dl, 10
int 21h

mov ah,09
Mov dx, offset sale1
int 21h 
jmp exit

Brilliant:
mov ah,02
mov dl, 10
int 21h

mov ah,09
lea dx, sale2
int 21h 
jmp exit

Alphabet:
mov ah,02
mov dl, 10
int 21h

mov ah,09
lea dx, alp1
int 21h 
jmp exit

exit:
mov ah, 4ch
int 21h

end start