	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number of rows the structure should be composed of ::: "
.LC1:
	.string	"%d"
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
	subq	$16, %rsp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$1, -8(%rbp)
.L4:
	movl	$0, -12(%rbp)
.L2:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -12(%rbp)
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	addl	$1, %eax
	cmpl	-12(%rbp), %eax
	jg	.L2
	movl	$0, -4(%rbp)
.L3:
	movl	$42, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	cmpl	-4(%rbp), %eax
	jg	.L3
	addl	$1, -8(%rbp)
	movl	$10, %edi
	call	putchar@PLT
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cmpl	-8(%rbp), %eax
	jg	.L4
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
