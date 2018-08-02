	.file	"p.c"
	.text
	.globl	reve
	.type	reve, @function
reve:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movb	$0, -14(%rbp)
	movl	$0, -4(%rbp)
.L2:
	addl	$1, -8(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movzbl	-14(%rbp), %eax
	cmpb	%al, %dl
	jne	.L2
	movl	-8(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-13(%rbp), %eax
	movb	%al, (%rdx)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cmpl	-4(%rbp), %eax
	jg	.L3
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	reve, .-reve
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the string you want to reverse ::: "
.LC1:
	.string	"Your reverse string ::: \n%s\n"
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
	subq	$3008, %rsp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-3008(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	gets@PLT
	leaq	-3008(%rbp), %rax
	movq	%rax, %rdi
	call	reve
	leaq	-3008(%rbp), %rax
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
