	.file	"p.c"
	.comm	head,8,8
	.comm	temp,8,8
	.comm	t1,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"1. Create a linked list first."
	.align 8
.LC1:
	.string	"2. Print the entire linked list. "
	.align 8
.LC2:
	.string	"3. Check and insert the number. "
.LC3:
	.string	"%d"
	.align 8
.LC4:
	.string	"Enter the data in the node :: "
	.align 8
.LC5:
	.string	"Do you wish to continue making nodes . y/n"
.LC6:
	.string	" %c"
.LC7:
	.string	"ONLY OPTION VALID IS 1."
.LC8:
	.string	"Your choice ::: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, head(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L8:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	je	.L3
	cmpl	$3, %eax
	je	.L4
	cmpl	$1, %eax
	jne	.L10
	movq	head(%rip), %rax
	movq	%rax, temp(%rip)
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	temp(%rip), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	-13(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-13(%rbp), %eax
	cmpb	$121, %al
	jne	.L11
	movq	temp(%rip), %rax
	movq	%rax, %rdi
	call	insertInto
	jmp	.L11
.L3:
	movq	head(%rip), %rax
	movq	%rax, %rdi
	call	print
	movl	$10, %edi
	call	putchar@PLT
	movq	head(%rip), %rax
	movq	%rax, temp(%rip)
	jmp	.L7
.L4:
	movq	head(%rip), %rax
	movq	%rax, %rdi
	call	checkIn
	jmp	.L7
.L10:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	jmp	.L7
.L11:
	nop
.L7:
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jg	.L8
	movl	-8(%rbp), %eax
	cmpl	$8, %eax
	jle	.L8
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC9:
	.string	"Do you wish to continue making node . y/n"
	.text
	.globl	insertInto
	.type	insertInto, @function
insertInto:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	-5(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-5(%rbp), %eax
	cmpb	$121, %al
	jne	.L13
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	insertInto
	movq	head(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L12
.L13:
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	insertInto, .-insertInto
	.section	.rodata
.LC10:
	.string	"%d "
	.text
	.globl	print
	.type	print, @function
print:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L16
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	jmp	.L15
.L16:
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	print, .-print
	.comm	scanl,4,4
	.section	.rodata
	.align 8
.LC11:
	.string	"Enter the data you want to insert :: "
	.text
	.globl	checkIn
	.type	checkIn, @function
checkIn:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, t1(%rip)
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	scanl(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	t1(%rip), %rax
	movl	scanl(%rip), %edx
	movl	%edx, (%rax)
	movq	t1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	nano
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	checkIn, .-checkIn
	.section	.rodata
.LC12:
	.string	"Done"
	.text
	.globl	nano
	.type	nano, @function
nano:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	nop
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L21
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L21
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L21:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nano
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L19
.L24:
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	nano, .-nano
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
