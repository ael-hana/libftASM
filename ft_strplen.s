global _ft_strplen
extern _ft_strclen
;int	ft_strplen(char *, char c)
error:
	mov		rax, -1
	ret

ret_stop:
	mov		rax, rdx
	ret

_ft_strplen:
	cmp		rsi, 0
	jz		error
	cmp		rdi, 0
	jz		error
	cmp		[rdi], byte 0
	jz		error
	mov		rdx, 0
	mov 	rax, rsi

loop:
	cmp		[rdi], al
	je		ret_stop
	inc		rdx
	inc		rdi
	cmp		byte [rdi], 0
	jz		error
	jmp		loop	
