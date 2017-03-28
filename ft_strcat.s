global _ft_strcat

fin:
	ret

_ft_strcat:
	mov		rax, rdi
	cmp		rdi, 0
	jz		fin
	cmp		rsi, 0
	jz		fin

start:
	cmp		byte [rdi], 0
	jz		next
	inc		rdi
	jmp		start

next:
	mov		r8, [rsi]
	mov		[rdi], r8
	cmp		byte [rsi], 0
	jz		fin
	inc		rdi
	inc		rsi
	jmp		next
