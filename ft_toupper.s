global _ft_toupper

NotChange:
	mov		rax, rdi
	ret

_ft_toupper:
	cmp		rdi, 97
	jl		NotChange
	cmp		rdi, 122
	jg		NotChange
	mov		rax, rdi
	sub		rax, 32
	ret
