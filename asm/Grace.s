%define NO_MAIN _main
%define NL 10
%define TAB 9

%macro no_main 0
	SECTION .data
	text:
		.string db "%%define OUI _main%1$c%%define NL 10%1$c%%define TAB 9%1$c%1$c%%macro no_main 0%1$c%2$cSECTION .data%1$c%2$ctext:%1$c%2$c%2$c.string db%3$c%s%2$c%1$c%2$cfile:%1$c%2$c%2$c.string db%3$cGrace_kid.s%3$c, 0%1$c%1$c%2$cSECTION .text%1$c%2$c%2$cglobal start%1$c%2$c%2$cglobal NO_MAIN%1$c%1$c%2$cstart:%1$c%2$c%2$ccall NO_MAIN%1$c%2$c%2$cextern _dprintf%1$c%1$c%2$c_main:",10,9,9,"push rbp",10,9,9,"mov rbp, rsp",10,9,9,"lea rdi, [rel file]",10,9,9,"mov rsi, 1537" ,0
	file:
		.string db "Grace_kid.s", 0

	SECTION .text
		global start
		global NO_MAIN

	start:
		call NO_MAIN
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
		lea rsi, [rel text.string]
		lea rdx, [NL]
		lea rcx, [TAB]
		lea r8, [34]
		lea r9, [rel text.string]
		call _dprintf
		mov esp, ebp
		leave
		ret

%endmacro

no_main
