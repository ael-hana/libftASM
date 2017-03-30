%define BUF		16

section .text
	global _ft_cat

_ft_cat:
	push	rbx
	push	rbp
	sub		rbp, BUF
	jmp		loop

loop:
	mov		rsi, rbp
	mov		rdx, BUF
	mov		rax, 0x2000003
	syscall
	cmp		rax, 0
	jle		end
	mov		rdx, rax	
	mov		rsi, rbp
	mov		r8, rdi
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	mov		rdi, r8
	cmp		rax, 0
	je		end
	jmp		loop

end:
	pop		rbp
	pop		rbx
