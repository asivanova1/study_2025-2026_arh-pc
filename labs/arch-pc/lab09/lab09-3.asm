%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
SECTION .text
global _start
_start:
pop ecx
pop edx
sub ecx,1
mov esi, 1
cmp ecx,0
jz _end
next:
pop eax
call atoi
imul esi,eax
dec ecx
jnz next
_end:
mov eax, msg
call sprint
mov eax, esi
call iprintLF
call quit
