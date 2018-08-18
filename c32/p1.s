	.file	"p1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Maximum profit when Bought on Day %d and sold on Day %d. Profit = %d. \n"
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
	subq	$40064, %rsp
	movl	$1000, -64(%rbp)
	movl	$140, -60(%rbp)
	movl	$160, -56(%rbp)
	movl	$80, -52(%rbp)
	movl	$90, -48(%rbp)
	movl	$200, -44(%rbp)
	movl	$250, -40(%rbp)
	movl	$220, -36(%rbp)
	movl	$300, -32(%rbp)
	movl	$440, -28(%rbp)
	movl	$10, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -24(%rbp)
	leaq	-40064(%rbp), %rax
	movl	$40000, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L5:
	movl	$0, -8(%rbp)
	jmp	.L2
.L4:
	movl	-8(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L3
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L3
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movl	-24(%rbp), %edx
	movl	%edx, -40064(%rbp,%rax,4)
.L3:
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L4
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L5
	movl	$0, -4(%rbp)
	movl	-40064(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L6
.L8:
	movl	-4(%rbp), %eax
	cltq
	movl	-40064(%rbp,%rax,4), %eax
	cmpl	-16(%rbp), %eax
	jle	.L7
	movl	-4(%rbp), %eax
	cltq
	movl	-40064(%rbp,%rax,4), %eax
	movl	%eax, -16(%rbp)
.L7:
	addl	$1, -4(%rbp)
.L6:
	cmpl	$9999, -4(%rbp)
	jle	.L8
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -24(%rbp)
.L12:
	movl	$0, -8(%rbp)
	jmp	.L9
.L11:
	movl	-8(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L10
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L10
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.L10
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	leal	1(%rax), %esi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movl	-24(%rbp), %edx
	movl	%edx, -40064(%rbp,%rax,4)
.L10:
	addl	$1, -8(%rbp)
.L9:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L11
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L12
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
