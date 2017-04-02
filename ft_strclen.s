global _ft_strclen
extern _ft_strlen
;int	ft_strclen(char *, char c)
lret:
	inc		rax
	ret

_ft_strclen:
	call	_ft_strlen
	cmp		rsi, 0
	je		lret
	push	rax
	mov		rcx, rax
	mov		rdx, rsi
	mov		al, dl
	cld
	repne	scasb
	pop		rax
	sub		rax, rcx
	ret
