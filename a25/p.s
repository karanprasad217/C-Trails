	.file	"p.c"
	.section	.rodata
.LC0:
	.string	"Original string is ::: %s\n"
	.text
	.globl	strcp
	.type	strcp, @function
strcp:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L2:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rcx)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	strcp, .-strcp
	.section	.rodata
	.align 8
.LC1:
	.string	"Copied string is :::\033[42m %s \n\033[0m"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movabsq	$8316213845369708875, %rax
	movq	%rax, -48(%rbp)
	movabsq	$7308620311706427680, %rax
	movq	%rax, -40(%rbp)
	movabsq	$8534158705284358190, %rax
	movq	%rax, -32(%rbp)
	movabsq	$2333266363858056037, %rax
	movq	%rax, -24(%rbp)
	movl	$1886090564, -16(%rbp)
	movw	$11873, -12(%rbp)
	movb	$0, -10(%rbp)
	movb	$0, -49(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-49(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcp
	leaq	-49(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
