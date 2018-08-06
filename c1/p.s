	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number you want to multiply with the power of 5 ::: "
	.align 8
.LC1:
	.string	"Enter the power of 5 you want to use ::: "
.LC2:
	.string	"%lu"
.LC3:
	.string	"The number %s X 5^%lu is ::: "
.LC4:
	.string	"%llu\n"
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
	subq	$3120, %rsp
	movq	$0, -16(%rbp)
	movq	$1, -24(%rbp)
	movq	$0, -96(%rbp)
	movq	$2, -64(%rbp)
	movq	$0, -32(%rbp)
	movb	$0, -3105(%rbp)
	movb	$48, -65(%rbp)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-3104(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	gets@PLT
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movq	-24(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L3
	leaq	-3104(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -4(%rbp)
.L4:
	addq	$1, -32(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movzbl	-3105(%rbp), %eax
	cmpb	%al, %dl
	jne	.L4
	subq	$1, -32(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-3104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
.L5:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	-65(%rbp), %edx
	movb	%dl, -3104(%rbp,%rax)
	addq	$1, -48(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	movq	-96(%rbp), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jb	.L5
	movq	$0, -88(%rbp)
	movl	$0, -4(%rbp)
	subq	$1, -48(%rbp)
	movq	$1, -56(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L6
.L8:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-3104(%rbp,%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.L7:
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, -56(%rbp)
	subq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L7
	movq	-88(%rbp), %rax
	imulq	-56(%rbp), %rax
	addq	%rax, -16(%rbp)
	subq	$1, -48(%rbp)
	movq	$1, -56(%rbp)
	addl	$1, -4(%rbp)
.L6:
	cmpq	$0, -48(%rbp)
	jne	.L8
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
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
