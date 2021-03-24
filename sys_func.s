BITS 64

global _main


section .rodata

	egal db "Egal", 10, 0
	egal_len equ $-egal


	audesssus db "au dessus", 10, 0
	audesssus_len equ $-audesssus

	audessusouegal db "au dessus ou egal", 10, 0
	audessusouegal_len equ $-audessusouegal

	endessous db "en dessous", 10, 0
	endessous_len equ $-endessous

	endessousouegal db "en dessous ou egal", 10, 0
	endessousouegal_len equ $-endessousouegal


section .text


_main:
	
	mov rax, 1455
	cmp rax, 1337
	je _egal
	ja _above
	jae _dataaboveequal
	jb _databelow
	jbe _databellowor



_egal:
	mov rax, 1
	mov rdi, 1
	mov rsi, egal
	mov rdx, egal_len
	syscall
	jmp _exit


_audesssus:
	mov rax, 1
	mov rdi, 1
	mov rsi, audesssus
	mov rdx, audesssus_len
	syscall
	jmp _exit



_audesssusouegal:

	mov rax, 1
	mov rdi, 1
	mov rsi, audessusouegal
	mov rdx, audessusouegal_len
	syscall
	jmp _exit
	
_endessous:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, endessous
	mov rdx, endessous_len
	syscall
	jmp _exit

_endessousouegal:

	mov rax, 1
	mov rdi, 1
	mov rsi, endessousouegal
	mov rdx, endessousouegal_len
	syscall
	jmp _exit
	

_exit:
	mov rax, 0X3C
	mov rdi, 0
	syscall
