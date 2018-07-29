	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number you want to find the factorial of ::: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Factorial of %d is ::: %llu \n"
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
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	$1, -8(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cltq
	movq	-8(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	$1, %eax
	jg	.L2
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
