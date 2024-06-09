;
; csp.asm
;
; alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]
; 10/5/2021 .revision = 6/17/2023
;
; nasm -f elf64 csp.asm
; bcc64 csp.o
;
global main
extern printf
section .text
main:sub rsp,28h
mov al,10
mov bl,95
z:lea r9,a
mov dx,492
r:cmp byte[r9],bl
je s
jmp u
s:mov byte[r9],al
u:inc r9
dec dx
cmp dx,0
jnz r
lea rdx,a
lea rcx,i
call printf
mov al,10
cmp bl,95
xchg al,bl
je z
lea rdx,x
lea rcx,i
call printf
add rsp,28h
ret
section .data
x:db 2Ch,32h,37h,68h,2Ch,30h,0
i:db 25h,73h,0
a:db ';_; csp.asm_;_; alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]_; 10/5/2021 .revision = 6/17/2023_;_; nasm -f elf64 csp.asm_; bcc64 csp.o_;_global main_extern printf_section .text_main:sub rsp,28h_mov al,10_mov bl,95_z:lea r9,a_mov dx,492_r:cmp byte[r9],bl_je s_jmp u_s:mov byte[r9],al_u:inc r9_dec dx_cmp dx,0_jnz r_lea rdx,a_lea rcx,i_call printf_mov al,10_cmp bl,95_xchg al,bl_je z_lea rdx,x_lea rcx,i_call printf_add rsp,28h_ret_section .data_x:db 2Ch,32h,37h,68h,2Ch,30h,0_i:db 25h,73h,0_a:db ',27h,0