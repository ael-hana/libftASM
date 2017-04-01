global _ft_strrchr

_ft_strrchr:
	push	rbp
	mov		rbp, rsp
	mov		rax, 0
	cmp		rdi, 0
	je		eos
	mov 	rdx, rsi
	jmp		loop

atrib:
	mov		rax, rdi
	inc		rdi

loop:
	cmp		byte [rdi], dl
	je		atrib
	inc		rdi
	cmp		byte [rdi], 0
	je		end
	jmp		loop

end:
	cmp		byte [rdi], dl
	je		eos
	leave
	ret

eos:
	mov		rax, rdi
	leave
	ret
