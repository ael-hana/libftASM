_ft_strchr:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 0
	jmp		end

loop:
	cmp		byte [rdi], rsi
	inc		rdi
	
end:
	mov		rax, rdi
	ret
