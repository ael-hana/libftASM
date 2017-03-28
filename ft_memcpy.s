#void *memcpy(void *dest, const void *src, size_t n);
global _ft_memcpy

_ft_memcpy:
	push	RDI
	mov		RCX, RDX
	repnz	movs
	pop		rax
	ret