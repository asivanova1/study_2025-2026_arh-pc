%include 'in_out.asm'
SECTION .data
func_msg db "Функция: f(x)=30x-11",0
result_msg db "Результат: ",0
SECTION .text
global _start
f:
mov ebx,30
mul ebx
sub eax,11
ret
_start:
pop ecx
pop edx
sub ecx,1
mov esi,0
next:
cmp ecx,0
jz _end
pop eax
call atoi
call f
add esi,eax
dec ecx
jmp next
_end:
mov eax,func_msg
call sprintLF
mov eax,result_msg
call sprint
mov eax,esi
call iprintLF
call quit
