	.file	"p1.c"
	.text
	.globl	stringcat
	.type	stringcat, @function
stringcat:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movb	$0, -21(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.L2:
	addl	$1, -4(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movzbl	-21(%rbp), %eax
	cmpb	%al, %dl
	jne	.L2
.L3:
	addl	$1, -8(%rbp)
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movzbl	-21(%rbp), %eax
	cmpb	%al, %dl
	jne	.L3
	movl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -8(%rbp)
	subl	$1, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rcx)
	addl	$1, -12(%rbp)
.L4:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L5
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	stringcat, .-stringcat
	.section	.rodata
.LC0:
	.string	"%s"
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
	movq	%rax, -32(%rbp)
	movabsq	$8026013105759284768, %rax
	movq	%rax, -24(%rbp)
	movw	$11897, -16(%rbp)
	movb	$0, -14(%rbp)
	movabsq	$7311153555273238560, %rax
	movq	%rax, -64(%rbp)
	movabsq	$8390880532164059251, %rax
	movq	%rax, -56(%rbp)
	movabsq	$7308620310548212065, %rax
	movq	%rax, -48(%rbp)
	movl	$778399343, -40(%rbp)
	movb	$0, -36(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stringcat
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
