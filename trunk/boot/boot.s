;       booter								
;	by shindow(liuyu_200411@sina.com) 				
;	2010.1.13  setup		  												
org 0x7c00
mov ax,cs
mov es,ax
mov ax,0
mov ss,ax
mov ds,ax
mov esp,0x1000 ;设置寄存器

call ReadSector
mov cx,word [0x7c00+0x240+2]	;load.bin 多少扇区数

Load:		   ;加载load.bin
	push cx
	call IncSector
	call ReadSector
	pop cx
	dec cx
	cmp cx,0
	jnz Load
mov cx,word [0x7c00+0x280+2]	;kernel.bin 多少扇区数
push cx
mov cx,word [0x7c00+0x260+2]	;pic.bin 多少扇区数

mov ax,0
mov word [copy_off],ax
mov ax,0x1000
mov word [copy_ds],ax
Pic:		   ;加载pic.bin
	push cx
	call IncSector
	call ReadSector
	pop cx
	dec cx
	cmp cx,0
	jnz Pic
xor ax,ax
mov al,[sector]
push ax
mov al,[tracker]
push ax
mov al,[header]
push ax
mov ax,[start]
push ax
jmp 0x800:0
;********************increase a sector******************
IncSector:
	mov ax,[start]
	inc ax
	mov [start],ax
	div byte [secPer]
	inc ah
	mov [sector],ah
	mov ah,al
	and ah,1
	mov [header],ah
	shr al,1
	mov [tracker],al

	mov ax,word [copy_off]
	add ax,200h
	mov word [copy_off],ax
	ret
;********************read a sector*********************
ReadSector:
goon:					;write to es:bx
	mov ax,word [copy_ds]							
	mov es,ax
	mov bx,word [copy_off]
	mov ah,02h		;ah int 13 function number
	mov al,01h		;读取扇区数
	mov ch,[tracker]	;ch tracker	(从0开始)
	mov dl,[driver]		;dl driver		(从0开始)	
	mov dh,[header]	 ;dh header	(从0开始)
	mov cl,[sector]	;cl sector		(从1开始)
	int 13h
	jc goon
	ret
sector	db	2
header	db	0	
tracker	db	0
driver	db	0
start		dw	1
secPer	db	18
copy_off	dw  0x7e00
copy_ds	dw  0x0
times 510-($-$$) db 0
dw 0xaa55

