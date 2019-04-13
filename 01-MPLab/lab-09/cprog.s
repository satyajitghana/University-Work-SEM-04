	.file	"cprog.c"
	.comm	a,4,4
	.globl	b
	.data
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.long	1
	.globl	c
	.align 4
	.type	c, @object
	.size	c, 4
c:
	.long	2
	.globl	d
	.align 4
	.type	d, @object
	.size	d, 4
d:
	.long	3
	.section	.rodata
.LC0:
	.string	"\nDEBUG--#b : %d#\n"
.LC1:
	.string	"\nDEBUG--#c : %d#\n"
.LC2:
	.string	"\nDEBUG--#d : %d#\n"
.LC3:
	.string	"\nBefore Operation:"
.LC4:
	.string	"\nDEBUG--#a : %d#\n"
.LC5:
	.string	"\nAfter Operation:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	b(%rip), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	c(%rip), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	d(%rip), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC3, %edi
	call	puts
	movl	a(%rip), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	c(%rip), %edx
	movl	d(%rip), %eax
	imull	%eax, %edx
	movl	b(%rip), %eax
	addl	%edx, %eax
	movl	%eax, a(%rip)
	movl	$.LC5, %edi
	call	puts
	movl	a(%rip), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
