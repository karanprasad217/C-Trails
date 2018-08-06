	.file	"p.c"
	.comm	head,8,8
	.comm	t3,8,8
	.comm	t4,8,8
	.comm	t5,8,8
	.comm	t6,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number you want to insert into the beginning :::"
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Do you want to print the series ::: y/n\n "
.LC3:
	.string	" %c"
.LC4:
	.string	"%d "
	.text
	.globl	insertIntoBegin
	.type	insertIntoBegin, @function
insertIntoBegin:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, t4(%rip)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	t4(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	t4(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	t4(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	t4(%rip), %rax
	movq	%rax, head(%rip)
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-5(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movb	$121, -5(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L3
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	print
	nop
.L3:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	insertIntoBegin, .-insertIntoBegin
	.section	.rodata
	.align 8
.LC5:
	.string	"Enter the number you want to insert at the end :::"
.LC6:
	.string	" %d"
	.text
	.globl	insertToEnd
	.type	insertToEnd, @function
insertToEnd:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, t6(%rip)
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	t6(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	t6(%rip), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	increment
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	insertToEnd, .-insertToEnd
	.globl	increment
	.type	increment, @function
increment:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movq	t6(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	increment
.L7:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	increment, .-increment
	.section	.rodata
.LC7:
	.string	"1. Create a linked list."
	.align 8
.LC8:
	.string	"2. Enter an element to the first of linked list."
	.align 8
.LC9:
	.string	"3. Enter an element to the end of the linked list."
	.align 8
.LC10:
	.string	"4. Print the list of numbers you entered."
.LC11:
	.string	"Your Choice ::: "
	.align 8
.LC12:
	.string	"Enter the integer into data section ::: "
	.align 8
.LC13:
	.string	"The entered list of numbers is ::: "
	.align 8
.LC14:
	.string	"You should choose only 1 at the moment."
.LC15:
	.string	"\nYour choice ::: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -8(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, head(%rip)
.L17:
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	je	.L11
	cmpl	$2, %eax
	jg	.L12
	cmpl	$1, %eax
	je	.L13
	jmp	.L10
.L12:
	cmpl	$3, %eax
	je	.L14
	cmpl	$4, %eax
	je	.L15
	jmp	.L10
.L13:
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	head(%rip), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movq	head(%rip), %rax
	movq	%rax, %rdi
	call	insertInto
	jmp	.L16
.L11:
	movq	head(%rip), %rax
	movq	%rax, %rdi
	call	insertIntoBegin
	jmp	.L16
.L14:
	movq	head(%rip), %rax
	movq	%rax, %rdi
	call	insertToEnd
	jmp	.L16
.L15:
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	movq	head(%rip), %rax
	movq	%rax, %rdi
	call	print
	jmp	.L16
.L10:
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L16:
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L17
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jle	.L17
	movq	head(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	t3(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	t4(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	t5(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	t6(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC16:
	.string	"Do you wish to conitnue making node ::: y/n"
	.text
	.globl	insertInto
	.type	insertInto, @function
insertInto:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	leaq	-5(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-5(%rbp), %eax
	cmpb	$121, %al
	jne	.L20
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	insertInto
	jmp	.L21
.L20:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
.L21:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	insertInto, .-insertInto
	.globl	print
	.type	print, @function
print:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L23
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	print
	movq	-8(%rbp), %rax
	jmp	.L22
.L23:
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	print, .-print
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
