	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number of rows the structure should be of ::: "
.LC1:
	.string	"%d"
.LC2:
	.string	"+ "
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
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
.L2:
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L2
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -4(%rbp)
	addl	$1, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cmpl	-8(%rbp), %eax
	jg	.L2
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
