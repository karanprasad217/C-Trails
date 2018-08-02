	.file	"p.c"
	.text
	.globl	rest
	.type	rest, @function
rest:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movb	%al, -44(%rbp)
	movb	$0, -17(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
.L2:
	addl	$1, -4(%rbp)
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movzbl	-17(%rbp), %eax
	cmpb	%al, %dl
	jne	.L2
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
.L6:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	-44(%rbp), %al
	jne	.L3
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
.L5:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	-44(%rbp), %al
	je	.L4
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -12(%rbp)
.L4:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	-16(%rbp), %eax
	jl	.L5
.L3:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	-16(%rbp), %eax
	jl	.L6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rest, .-rest
	.section	.rodata
	.align 8
.LC0:
	.string	"\033[46mEnter the paragraph you want to edit ::: \n\033[0m"
	.align 8
.LC1:
	.string	"\033[46mEnter the charater you want to replace ::: \n\033[0m"
.LC2:
	.string	"%c"
	.align 8
.LC3:
	.string	"\033[46mEdited parapraph ::: \n\033[0m"
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
	subq	$3024, %rsp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-3008(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	gets@PLT
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-3009(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-3009(%rbp), %eax
	movsbl	%al, %edx
	leaq	-3008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	rest
	leaq	-3008(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
