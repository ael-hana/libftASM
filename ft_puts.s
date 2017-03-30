section .data
string:
	.returnprompt db 10
	.nulltext db "(null)", 10
	.len equ $ - string.nulltext

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:	
	cmp		rdi, 0
	je		_IFNULL
	cmp		dword [rdi], 0
	je		_IFNULL
	mov		r8,	rdi
	call	_ft_strlen
	mov		rdx, rax
	mov		rsi, r8
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	mov		rdx, 1
	lea		rsi, [rel string.returnprompt]
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	ret

_IFNULL:
	mov		rdx, string.len
	lea		rsi, [rel string.nulltext]
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	ret
