global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

isnum:
	call	_ft_isdigit
	cmp		rax, 1
	jl		FALSE
	jmp		TRUE

TRUE:
	mov		rax, 1
	ret

FALSE:
	mov		rax, 0
	ret

_ft_isalnum:
	call	_ft_isalpha
	cmp		rax, 1
	jl		isnum
	jmp		TRUE
