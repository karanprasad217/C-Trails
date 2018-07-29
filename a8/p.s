	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number corresponding to weekday ::: "
.LC1:
	.string	"%d"
.LC2:
	.string	"This day is Monday."
.LC3:
	.string	"This day is Tuesday."
.LC4:
	.string	"This day is Wednesday."
.LC5:
	.string	"This day is Thrusday."
.LC6:
	.string	"This day is Friday."
.LC7:
	.string	"This day is Saturday."
.LC8:
	.string	"This day is Sunday."
	.align 8
.LC9:
	.string	"Enter a number between 1 and 7."
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
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	ja	.L2
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L4(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L4(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L5-.L4
	.long	.L6-.L4
	.long	.L7-.L4
	.long	.L8-.L4
	.long	.L9-.L4
	.long	.L10-.L4
	.text
.L3:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L5:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L6:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L7:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L8:
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L9:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L10:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L2:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	nop
.L11:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
