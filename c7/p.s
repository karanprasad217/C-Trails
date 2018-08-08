	.file	"p.c"
	.section	.rodata
.LC0:
	.string	"Your array :: %s\n"
.LC1:
	.string	"Your reversed array :: %s\n"
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
	movl	$1634885995, -23(%rbp)
	movw	$110, -19(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	leaq	-23(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L2:
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	movzbl	-23(%rbp,%rax), %eax
	movsbq	%al, %rax
	testq	%rax, %rax
	jne	.L2
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -8(%rbp)
	movb	$0, -17(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-23(%rbp,%rax), %eax
	movb	%al, -17(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movzbl	-23(%rbp,%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	movb	%dl, -23(%rbp,%rax)
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movzbl	-17(%rbp), %edx
	movb	%dl, -23(%rbp,%rax)
	addl	$1, -8(%rbp)
.L3:
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	-8(%rbp), %eax
	jg	.L4
	leaq	-23(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
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
