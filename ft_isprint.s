global _ft_isprint

FALSE:
	mov		rax, 0
	ret

_ft_isprint:
	cmp		rdi, 32
	jl		FALSE
	cmp		rdi, 126
	jg		FALSE
	mov		rax, 1
	ret
