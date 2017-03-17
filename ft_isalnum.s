global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

FALSE:
	mov		rax, 0
	ret

TRUE:
	mov		rax, 1
	ret

_ft_isalnum:
	call	_ft_isalpha
	cmp		rax, 1
	jl		FALSE
	call	_ft_isdigit
	cmp		rax, 1
	jl		FALSE
	jmp		TRUE
