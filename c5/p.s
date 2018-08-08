	.file	"p.c"
	.section	.rodata
.LC0:
	.string	"Your Numbers ::: "
.LC1:
	.string	"%d "
.LC2:
	.string	"st"
.LC3:
	.string	"th"
	.align 8
.LC4:
	.string	"Equillibrium Point reached at %d %s position from the first.\n"
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
	subq	$48, %rsp
	movl	$1, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$4, -40(%rbp)
	movl	$2, -36(%rbp)
	movl	$8, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L2:
	cmpl	$4, -4(%rbp)
	jle	.L3
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -4(%rbp)
	jmp	.L4
.L13:
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L5
.L6:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	addl	%eax, -8(%rbp)
.L5:
	cmpl	$0, -4(%rbp)
	jg	.L6
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	addl	%eax, -12(%rbp)
.L7:
	cmpl	$3, -4(%rbp)
	jle	.L8
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.L9
	cmpl	$1, -4(%rbp)
	jne	.L10
	leaq	.LC2(%rip), %rax
	movb	%al, -16(%rbp)
	jmp	.L11
.L10:
	leaq	.LC3(%rip), %rax
	movb	%al, -16(%rbp)
.L11:
	movzbl	-17(%rbp), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L12
.L9:
	addl	$1, -4(%rbp)
.L4:
	cmpl	$4, -4(%rbp)
	jle	.L13
.L12:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
