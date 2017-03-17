global _ft_bzero

fin:
	ret

_ft_bzero:
	cmp		rsi, 0
	jz		fin
	mov		[rdi], byte 0
	dec		rsi
	inc		rdi
