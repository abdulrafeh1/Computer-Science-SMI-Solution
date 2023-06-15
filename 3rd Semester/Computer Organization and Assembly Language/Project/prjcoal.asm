
;Assembly language Program > Name > Graphics VGA > Through Line

.model small 
.stack 100h
.data 
.code

start:

Mov ah, 0 		;set Graphics mode 
mov al,13h  	;mode=13(VGA High resolution)
int 10h			;cursor position & invoke the interrupt to change to video mode

;-----Ain-----
Mov ah,0ch 							;Write pixel function 
Mov al,14							;Pixel color
Mov cx,260							;column 
mov dx,55							;row

Ain: 
int 10h								
inc  cx								;to next column increment
cmp cx,270							;complete
jnz Ain

;-----Ain1-----
Mov ah,0ch 							
Mov al,14							
Mov cx,235							 
mov dx,65							

Ain1: 
int 10h								
inc  cx								
cmp cx,270							
jnz Ain1

;-----Ain2-----
Mov ah,0ch 							
Mov al,14							
Mov cx,260							
mov dx,65							

Ain2: 
int 10h								
dec  dx								
cmp dx,55							
jnz Ain2

;-----baa-----
Mov ah,0ch 							
Mov al,14							
Mov cx,250							 
mov dx,65							

baa: 
int 10h								
dec  dx								
cmp dx,61							
jnz baa

;----Dot Baa-----
Mov ah,0ch 							
Mov al,14							
Mov cx,248							
mov dx,70							

bd: 
int 10h								
inc  cx								
cmp cx,249							
jnz bd

;-----baa1-----
Mov ah,0ch 							
Mov al,14							
Mov cx,245							 
mov dx,65							

baa1: 
int 10h								
dec  dx								
cmp dx,61							
jnz baa1

;-----daal-----
Mov ah,0ch 							
Mov al,14							
Mov cx,235							
mov dx,71							

daal: 
int 10h								
dec  dx								
cmp dx,59							
jnz daal

;-----daal1-----
Mov ah,0ch 							
Mov al,14							
Mov cx,227							
mov dx,60							

daal1: 
int 10h								
inc  cx								
cmp cx,235							
jnz daal1

;-----daal2-----
Mov ah,0ch 							
Mov al,14							
Mov cx,227							 
mov dx,71							

daal2: 
int 10h								
inc  cx								
cmp cx,235							
jnz daal2

;-----After daal Alif-----
Mov ah,0ch 							
Mov al,14							
Mov cx,223							 
mov dx,67							

Alif: 
int 10h								
dec  dx								
cmp dx,50							
jnz Alif

;-----laam-----
Mov ah,0ch 							
Mov al,14							
Mov cx,220							
mov dx,63							

laam: 
int 10h								
dec  dx								
cmp dx,50							
jnz laam

;-----laam1-----
Mov ah,0ch 							
Mov al,14							
Mov cx,210							
mov dx,63							

laam1: 
int 10h								
inc  cx								
cmp cx,220							
jnz laam1

;-----Raa-----
Mov ah,0ch 							
Mov al,14							
Mov cx,210							
mov dx,73							

Raa: 
int 10h								
dec  dx								
cmp dx,63							
jnz Raa

;-----Raa1-----
Mov ah,0ch 							
Mov al,14							
Mov cx,203							
mov dx,73							

Raa1: 
int 10h								
inc  cx								
cmp cx,210							
jnz Raa1

;-----After Raa Alif1-----
Mov ah,0ch 							
Mov al,14							
Mov cx,205							
mov dx,67							

Alif1: 
int 10h								
dec  dx								
cmp dx,50							
jnz Alif1

;-----faa up-----
Mov ah,0ch 							
Mov al,14							
Mov cx,193							
mov dx,55							

faaup: 
int 10h								
inc  cx								
cmp cx,201							
jnz faaup

;-----faa down long-----
Mov ah,0ch 							
Mov al,14							
Mov cx,180							
mov dx,60							

faadn: 
int 10h								
inc  cx								
cmp cx,200							
jnz faadn

;-----faa left-----
Mov ah,0ch 							
Mov al,14							
Mov cx,193							
mov dx,60							

faal: 
int 10h								
dec  dx								
cmp dx,55							
jnz faal

;-----faa right-----
Mov ah,0ch 							
Mov al,14							
Mov cx,200							
mov dx,60							

faar: 
int 10h								
dec  dx								
cmp dx,55							
jnz faar

;----Dot faa-----
Mov ah,0ch 							
Mov al,14							
Mov cx,197							
mov dx,52							

fd: 
int 10h								
inc  cx								
cmp cx,198							
jnz fd

;----crass Ainn left-----
Mov ah,0ch 							
Mov al,14							
Mov cx,176							
mov dx,56							

cal: 
int 10h								
inc  cx	
inc  dx							
cmp cx,236
cmp dx,60							
jnz cal

;-----crass Ainn middle line-----
Mov ah,0ch 							
Mov al,14							
Mov cx,176							
mov dx,55							

caml: 
int 10h								
inc  cx								
cmp cx,185							
jnz caml

;----crass Ainn Right-----
Mov ah,0ch 							
Mov al,14							
Mov cx,184							 
mov dx,56							

cair: 
int 10h								
dec  cx	
inc  dx							
cmp dx,68							
jle cair

;-----crass Ainn down line-----
Mov ah,0ch 							
Mov al,14							
Mov cx,173							
mov dx,68							

cadl: 
int 10h								
inc  cx								
cmp cx,185							
jnz cadl

;-----bin for baa-----
Mov ah,0ch 							
Mov al,6							
Mov cx,150							 
mov dx,60							

bfb: 
int 10h								
inc  cx								
cmp cx,160							
jnz bfb

;-----bin for baa right-----
Mov ah,0ch 							
Mov al,6							
Mov cx,159							 
mov dx,60							

bfbr: 
int 10h								
dec  dx								
cmp dx,52							
jnz bfbr

;----Dot Bin for baa-----
Mov ah,0ch 							
Mov al,6							
Mov cx,154							
mov dx,63							

bfbd: 
int 10h								
inc  cx								
cmp cx,155							
jnz bfbd

;-----bin for baa left-----
Mov ah,0ch 							
Mov al,6							
Mov cx,150							 
mov dx,70							

bfbl: 
int 10h								
dec  dx								
cmp dx,52							
jnz bfbl

;-----bin for baa down-----
Mov ah,0ch 							
Mov al,6							
Mov cx,135	 
mov dx,70							

bfbdn: 
int 10h								
inc  cx								
cmp cx,150							
jnz bfbdn

;-----bin for baa right1-----
Mov ah,0ch 							
Mov al,6							
Mov cx,135							 
mov dx,70							

bfbrl: 
int 10h								
dec  dx								
cmp dx,52							
jnz bfbrl

;----Dot Bin for noon-----
Mov ah,0ch 							
Mov al,6							
Mov cx,143							
mov dx,60							

bfbn: 
int 10h								
inc  cx								
cmp cx,144							
jnz bfbn

;-----Ain f-----
Mov ah,0ch 							;Pixel function write
Mov al,3							;Pixel color
Mov cx,115							;column 
mov dx,55							;row

Ainf: 
int 10h								
inc  cx								;to next column increment
cmp cx,125							;complete
jnz Ainf

;-----Ainf1-----
Mov ah,0ch 							
Mov al,3							
Mov cx,90							 
mov dx,65							

Ainf1: 
int 10h								
inc  cx								
cmp cx,125							
jnz Ainf1

;-----Ainf2-----
Mov ah,0ch 							
Mov al,3							
Mov cx,115							
mov dx,65							

Ainf2: 
int 10h								
dec  dx								
cmp dx,55							
jnz Ainf2

;-----baa f right-----
Mov ah,0ch 							
Mov al,3							
Mov cx,105							 
mov dx,65							

baaf: 
int 10h								
dec  dx								
cmp dx,61							
jnz baaf

;----Dot Baa f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,102							
mov dx,70							

bdf: 
int 10h								
inc  cx								
cmp cx,103							
jnz bdf

;-----baa1 left-----
Mov ah,0ch 							
Mov al,3							
Mov cx,100							 
mov dx,65							

bal1: 
int 10h								
dec  dx								
cmp dx,61							
jnz bal1

;-----daal f -----
Mov ah,0ch 							
Mov al,3							
Mov cx,90							
mov dx,71							

daalf: 
int 10h								
dec  dx								
cmp dx,59							
jnz daalf

;-----daal1 f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,82							
mov dx,60							

daalf1: 
int 10h								
inc  cx								
cmp cx,90							
jnz daalf1

;-----daal2 f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,82							 
mov dx,71							

daalf2: 
int 10h								
inc  cx								
cmp cx,90							
jnz daalf2

;-----After daal Alif f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,78							 
mov dx,67							

Aliff: 
int 10h								
dec  dx								
cmp dx,50							
jnz Aliff

;-----laam f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,75							
mov dx,63							

laamf: 
int 10h								
dec  dx								
cmp dx,50							
jnz laamf

;-----laam1 f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,65							
mov dx,63							

laamf1: 
int 10h								
inc  cx								
cmp cx,75							
jnz laamf1

;-----Raa f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,65							
mov dx,73							

Raaf: 
int 10h								
dec  dx								
cmp dx,63							
jnz Raaf

;-----Raa1 f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,58							
mov dx,73							

Raaf1: 
int 10h								
inc  cx								
cmp cx,65							
jnz Raaf1

;-----sheen f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,35							 
mov dx,65							

sheenf: 
int 10h								
inc  cx								
cmp cx,55							
jnz sheenf

;-----sheen f right-----
Mov ah,0ch 							
Mov al,3							
Mov cx,55							 
mov dx,65							

sheenfr: 
int 10h								
dec  dx								
cmp dx,61							
jnz sheenfr

;-----sheen f middle-----
Mov ah,0ch 							
Mov al,3							
Mov cx,50							 
mov dx,65							

sheenfm: 
int 10h								
dec  dx								
cmp dx,61							
jnz sheenfm

;-----sheen f left-----
Mov ah,0ch 							
Mov al,3							
Mov cx,45							 
mov dx,65							

sheenfl: 
int 10h								
dec  dx								
cmp dx,61							
jnz sheenfl

;-----sheen daal f -----
Mov ah,0ch 							
Mov al,3							
Mov cx,35							
mov dx,71							

shdaalf: 
int 10h								
dec  dx								
cmp dx,59							
jnz shdaalf

;-----daal1 f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,27							
mov dx,60							

shdaalf1: 
int 10h								
inc  cx								
cmp cx,35							
jnz shdaalf1

;-----daal2 f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,27							 
mov dx,71							

shdaalf2: 
int 10h								
inc  cx								
cmp cx,35							
jnz shdaalf2

;----Dot for sheen-----
Mov ah,0ch 							
Mov al,3							
Mov cx,47							
mov dx,60							

dfsh: 
int 10h								
inc  cx								
cmp cx,48							
jnz dfsh

;----Dot for sheen1-----
Mov ah,0ch 							
Mov al,3							
Mov cx,51							
mov dx,60							

dfsh1: 
int 10h								
inc  cx								
cmp cx,52							
jnz dfsh1

;----Dot for sheen2-----
Mov ah,0ch 							
Mov al,3							
Mov cx,49							
mov dx,57							

dfsh2: 
int 10h								
inc  cx								
cmp cx,50							
jnz dfsh2

;----Dot yaa f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,39							
mov dx,70							

ydf: 
int 10h								
inc  cx								
cmp cx,40							
jnz ydf

;----Dot yaa1 f-----
Mov ah,0ch 							
Mov al,3							
Mov cx,42							
mov dx,70							

ydf1: 
int 10h								
inc  cx								
cmp cx,43				
jnz ydf1

Mov ah,0							;read keyboard 
int 16h								;int 16h will communicate with keyboard


Mov ax,3							;set text mode
int 10h

mov ah, 4ch 						;exit
int 21h 
end start