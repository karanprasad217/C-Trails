	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number you want to check is prime : "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Other factors ::: \033[45m %d\n\033[0m"
	.align 8
.LC3:
	.string	"\033[45mNo,\033[0m the number %d is \033[45mnot a prime.\n\033[0m"
	.align 8
.LC4:
	.string	"\033[45mYes,\033[0m the number %d \033[45mis a prime.\n\033[0m"
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
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -16(%rbp)
	movl	$2, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
.L4:
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L2
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -8(%rbp)
	jmp	.L3
.L2:
	addl	$1, -12(%rbp)
.L3:
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L4
	cmpl	$0, -8(%rbp)
	je	.L5
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L6
.L5:
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L6:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
