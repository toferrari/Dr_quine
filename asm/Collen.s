;comment 1
section .data
hello:
	.string db ";comment 1%1$csection .data%1$chello:%1$c%2$c.string db %3$c %3$c, 0%1$c%2$c.len equ $ - hello.string%1$c%1$csection .text%1$c%2$cglobal start%1$c%2$cglobal _main%1$c%2$cextern _printf%1$c%1$cstart:%1$c%2$ccall _main%1$c%2$cret%1$c%1$c_main:%1$c%2$cpush rbp; comment2%1$c%2$ccall _useless%1$c%2$cmov rbp, rsp%1$c%2$csub rsp, 16%1$c%2$clea rdi, [rel hello.string]%1$c%2$clea rsi, [10]%1$c%2$clea rdx, [9]%1$c%2$clea rcx, [34]%1$c%2$ccall _printf%1$c%2$cleave%1$c%2$cret%1$c%1$c_useless:%1$c%2$cret%4$s", 10, 0
	.len equ $ - hello.string

section .text
	global start
	global _main
	extern _printf

start:
	call _main
	ret

_main:
	push rbp; comment2
	call _useless
	mov rbp, rsp
	sub rsp, 16
	lea rdi, [rel hello.string]
	lea rsi, [10]
	lea rdx, [9]
	lea rcx, [34]
	; mov r8, rdi
	lea r8, [10]
	call _printf
	leave
	ret

_useless:
	ret
