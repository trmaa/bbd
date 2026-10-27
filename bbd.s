	.bss
byte:
	.space	8

	.text
	.globl	pbin
pbin:
	xor	%esi, %esi
.for0:
	lea	byte, %eax
	add	%esi, %eax

	movb	$'0', (%eax)

	mov	4(%esp), %edx

	mov	$7, %ecx
	sub	%esi, %ecx

	shr	%cl, %edx

	and	$1, %edx

	addb	%dl, (%eax)

	inc	%esi
	cmp	$8, %esi
	jl	.for0

	push	%ebx
	mov	$4, %eax
	mov	$1, %ebx
	lea	byte, %ecx
	mov	$8, %edx
	int	$0x80
	pop	%ebx

	ret
