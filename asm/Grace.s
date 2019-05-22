%define NO_MAIN _main
%define NL 10
%define TAB 9

%macro no_main 0
	SECTION .data
	text:
		.string db "%%define NO_MAIN _main%1$c%%define NL 10%1$c%%define TAB 9%1$c%1$c%%macro no_main 0%1$c%2$cSECTION .data%1$c%2$ctext:%1$c%2$c%2$c.string db %3$c%s%3$c, 0%1$c%2$cfile:%1$c%2$c%2$c.string db %3$cGrace_kid.s%3$c, 0%1$c%1$c%2$cSECTION .text%1$c%2$c%2$cglobal start%1$c%2$c%2$cglobal NO_MAIN%1$c%1$c%2$cstart:%1$c%2$c%2$ccall NO_MAIN%1$c%2$c%2$cextern _dprintf%1$c%1$c%2$c_main:%1$c%2$c%2$cpush rbp;comment%1$c%2$c%2$cmov rbp, rsp%1$c%2$c%2$clea rdi, [rel file]%1$c%2$c%2$cmov rsi, 1537%1$c%2$c%2$cmov rdx, 420%1$c%2$c%2$cmov rax, 0x2000005%1$c%2$c%2$csyscall%1$c%2$c%2$cmov rdi, rax%1$c%2$c%2$clea rsi, [rel text.string]%1$c%2$c%2$clea rdx, [NL]%1$c%2$c%2$clea rcx, [TAB]%1$c%2$c%2$clea r8, [34]%1$c%2$c%2$clea r9, [rel text.string]%1$c%2$c%2$ccall _dprintf%1$c%2$c%2$cmov esp, ebp%1$c%2$c%2$cleave%1$c%2$c%2$cret%1$c%1$c%%endmacro%1$c%1$cno_main%1$c", 0
	file:
		.string db "Grace_kid.s", 0

	SECTION .text
		global start
		global NO_MAIN

	start:
		call NO_MAIN
		extern _dprintf

	_main:
		push rbp;comment
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
