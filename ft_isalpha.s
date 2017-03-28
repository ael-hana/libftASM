global _ft_isalpha

FALSE:
	mov		rax, 0
	ret

TRUE:
	mov		rax, 1
	ret

_ft_alpha:
	cmp		rdi, 65
	jl		FALSE
	cmp		rdi, 122
	jg		FALSE
	cmp		rdi, 90
	jle		TRUE
	cmp		rdi, 97
	jge		TRUE
	jmp		FALSE
