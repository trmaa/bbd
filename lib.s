	.text
	.globl	sys
sys:
	push	%ebx

	mov	8(%esp), %eax
	mov	12(%esp), %ebx
	mov	16(%esp), %ecx
	mov	20(%esp), %edx
	int	$0x80

	pop	%ebx
	ret

	.globl	write
write:
	push	%ebx

	mov	$4, %eax
	mov	8(%esp), %ebx
	mov	12(%esp), %ecx
	mov	16(%esp), %edx
	int	$0x80

	pop	%ebx
	ret

	.globl	read
read:
	push	%ebx

	mov	$3, %eax
	mov	8(%esp), %ebx
	mov	12(%esp), %ecx
	mov	16(%esp), %edx
	int	$0x80

	pop	%ebx
	ret

	.globl	exit
exit:
	mov	$1, %eax
	mov	4(%esp), %ebx
	int	$0x80
