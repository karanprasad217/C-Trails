	.file	"p.c"
	.section	.rodata
.LC0:
	.string	"Enter the integer : "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"You entered a negative integer so the program will terminate."
.LC3:
	.string	"WARNING!!! TOO MANY INPUTS!!!"
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
	movl	$0, -4(%rbp)
.L5:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jns	.L2
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L2:
	addl	$1, -4(%rbp)
	cmpl	$14, -4(%rbp)
	jne	.L4
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L4:
	cmpl	$14, -4(%rbp)
	jle	.L5
.L3:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
