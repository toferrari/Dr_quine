
%define OUI _main
%define NL 10
%define TAB 9

%macro no_main
	SECTION .data
	text:
		.string db "test"
	file
		.string db 'Grace_kid.s', 0

	SECTION .text
		global start
		global OUI

	start:
		call _main
	extern _dprintf

	_main:
		push rbp
		mov rbp, rsp
		lea rdi, [rel file]
		mov rsi, 1537
		mov rdx, 420
		mov rax, 0x2000005
		syscall
		mov rdi, rax
		lea rsi, [rel text]
		lea rdx, [10]
		lea rcx, [9]
		lea r8, [34]
		call _dprintf
		mov esp, ebp
		leave
		ret

%endmacro

no_main
