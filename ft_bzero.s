global _ft_bzero

fin:
	ret

_ft_bzero:
	cmp		rsi, 0
	jna		fin
	mov		[rdi], byte 0
	dec		rsi
	inc		rdi
	jmp		_ft_bzero
