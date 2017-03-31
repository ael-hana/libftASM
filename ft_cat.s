%define BUF		16

section .text
	global _ft_cat
	extern _fb

_ft_cat:
	push	rbp
	mov		rbp, rsp
	sub		rbp, BUF

loop:
	mov		rsi, rbp
	mov		rdx, BUF
	mov		rax, 0x2000003
	syscall
	jc		end
	mov		rdx, rax	
	mov		rsi, rbp
	mov		r8, rdi
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	mov		rdi, r8
	cmp		rax, 0
	jg		loop

end:
	pop		rbp
	ret
