	.file	"p.c"
	.section	.rodata
.LC0:
	.string	"w"
.LC1:
	.string	"kp.txt"
.LC2:
	.string	"The File Is Empty."
.LC3:
	.string	"r"
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
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L3
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L3
.L4:
	movsbl	-9(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc@PLT
.L3:
	call	getchar@PLT
	movb	%al, -9(%rbp)
	cmpb	$-1, -9(%rbp)
	jne	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	leaq	.LC3(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	jmp	.L5
.L6:
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movb	%al, -9(%rbp)
	cmpb	$-1, -9(%rbp)
	jne	.L6
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
