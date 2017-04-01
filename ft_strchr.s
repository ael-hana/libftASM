global _ft_strchr

_ft_strchr:
	push	rbp
	mov		rbp, rsp
	mov 	rdx, rsi
	cmp		rdi, 0
	je		end

loop:
	cmp		byte [rdi], dl
	je		eos
	cmp		byte [rdi], 0
	je		end
	inc		rdi
	jmp		loop

end:
	mov		rax, 0
	leave
	ret

eos:
	mov		rax, rdi
	leave
	ret
