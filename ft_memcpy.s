global _ft_memcpy

_ft_memcpy:
	push	rdi
	mov		rcx, rdx
	repnz	movsb
	pop		rax
	ret