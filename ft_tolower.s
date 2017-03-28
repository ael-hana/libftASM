global _ft_tolower

NotChange:
	mov		rax, rdi
	ret

_ft_tolower:
	cmp		rdi, 65
	jl		NotChange
	cmp		rdi, 90
	jg		NotChange
	mov		rax, rdi
	add		rax, 32
	ret