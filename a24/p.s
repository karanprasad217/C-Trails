	.file	"p.c"
	.text
	.globl	common
	.type	common, @function
common:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L7:
	movl	$0, -8(%rbp)
	jmp	.L3
.L6:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L4
	movl	$1, %eax
	jmp	.L5
.L4:
	addl	$1, -8(%rbp)
.L3:
	movl	-8(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L6
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L7
	movl	$0, %eax
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	common, .-common
	.section	.rodata
	.align 8
.LC0:
	.string	"Yes, the array has something in common.\n"
	.align 8
.LC1:
	.string	"No, the array has nothing in common.\n"
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
	subq	$48, %rsp
	movabsq	$29104508263162465, %rax
	movq	%rax, -28(%rbp)
	movl	$1936879984, -34(%rbp)
	movw	$116, -30(%rbp)
	movb	$0, -35(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.L9:
	addl	$1, -4(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movzbl	-28(%rbp,%rax), %edx
	movzbl	-35(%rbp), %eax
	cmpb	%al, %dl
	jne	.L9
.L10:
	addl	$1, -8(%rbp)
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cltq
	movzbl	-34(%rbp,%rax), %edx
	movzbl	-35(%rbp), %eax
	cmpb	%al, %dl
	jne	.L10
	subl	$1, -4(%rbp)
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	leaq	-34(%rbp), %rsi
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	common
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L11
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L12
.L11:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L12:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
