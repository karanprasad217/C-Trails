	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"The structure will support %d units of water.\n"
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
	movl	$6, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$5, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$2, -32(%rbp)
	movl	$9, -28(%rbp)
	movl	$10, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	addl	$1, -8(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	cmpl	$9, %eax
	jle	.L3
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	movl	-48(%rbp), %edx
	movl	-16(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L8:
	movl	-16(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jle	.L15
	movl	-16(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -12(%rbp)
	jmp	.L7
.L15:
	nop
.L7:
	subl	$1, -4(%rbp)
.L5:
	cmpl	$0, -4(%rbp)
	jns	.L8
	jmp	.L9
.L4:
	movl	-48(%rbp), %edx
	movl	-16(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jge	.L9
	movl	$0, -4(%rbp)
	jmp	.L10
.L13:
	movl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jle	.L16
	movl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -12(%rbp)
	jmp	.L12
.L16:
	nop
.L12:
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L13
.L9:
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
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
