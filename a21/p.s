	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the first number of the fibonnaci sequence ::: "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Enter the second number of the fibonanci sequence ::: "
	.align 8
.LC3:
	.string	"How many numbers do you want in the fibonacci sequence including the two ?\n ANS ::: "
.LC4:
	.string	"%d %d "
.LC5:
	.string	"%d "
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
	subq	$32, %rsp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -4(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L2:
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	addl	$1, -4(%rbp)
	movl	-20(%rbp), %eax
	subl	$2, %eax
	cmpl	-4(%rbp), %eax
	jg	.L2
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
