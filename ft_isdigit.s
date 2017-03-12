section .text
global _ft_isdigit

_ft_isdigit:
	cmp		rdi, 48
	jl		FALSE
	cmp		rdi, 57
	jg		FALSE
	mov		rax, 1
	ret

FALSE:
	mov		rax, 0
	ret
