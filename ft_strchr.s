global _ft_strchr

_ft_strchr:
	push	rbp
	mov		rbp, rsp
	mov 	rdx, rsi
	cmp		rdi, 0
	je		stop

loop:
	cmp		byte [rdi], dl
	je		end
	inc		rdi
	jmp		loop

end:
	cmp		byte [rdi], dl
	jne		stop
	cmp		byte [rdi], 0
	je		stop
	mov		rax, rdi
	leave
	ret

stop:
	mov		rax, 0
	leave
	ret
