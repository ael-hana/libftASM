global _ft_strcat

fin:
	ret

_ft_strcat
	mov		rax, rdi
	cmp		rdi, 0
	jz		fin
	cmp		rsi, 0
	jz		fin

start:
	cmp		[rdi], 0
	jz		next
	inc		rdi
	jmp		start

next:
	mov		[rdi], [rsi]
	cmp		[rsi], 0
	jz		fin
	inc		rdi
	inc		rsi
	jmp		next
