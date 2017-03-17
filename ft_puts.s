global _ft_puts
extern _ft_strlen

_ft_puts:
	call	_ft_strlen
	mov		rdx, rax
	mov		rsi, rdi
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
