	.file	"p.c"
	.section	.rodata
.LC0:
	.string	"Enter the first operand ::: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter the second operand ::: "
.LC3:
	.string	"Enter the operator ::: "
.LC4:
	.string	" %c"
	.align 8
.LC5:
	.string	"The sum of two numbers %d & %d is ::: \033[32m%d.\n \033[0m"
	.align 8
.LC6:
	.string	"The subtraction of two numbers %d & %d is ::: \033[32m%d.\n \033[0m"
	.align 8
.LC7:
	.string	"The multiplication of two numbers %d & %d is ::: \033[32m%d.\n \033[0m"
	.align 8
.LC8:
	.string	"The division of two numbers %d & %d is ::: \033[32m%d.\n \033[0m"
	.align 8
.LC9:
	.string	"Enter a operator amongst these : '+'  '-'  '*'  '/'"
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
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L3
	cmpl	$43, %eax
	jg	.L4
	cmpl	$42, %eax
	je	.L5
	jmp	.L2
.L4:
	cmpl	$45, %eax
	je	.L6
	cmpl	$47, %eax
	je	.L7
	jmp	.L2
.L3:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L6:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L5:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L7:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %esi
	cltd
	idivl	%esi
	movl	%eax, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L2:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
.L8:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
