section .text
	global _ft_putstr
	extern _ft_strlen

_ft_putstr:	
	mov		r8,	rdi
	call	_ft_strlen
	mov		rdx, rax
	mov		rsi, r8
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	mov		rax, 0
	ret
