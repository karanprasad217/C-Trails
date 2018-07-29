	.file	"p.c"
	.section	.rodata
	.align 8
.LC1:
	.string	"Enter the fahranheit temperature you want to convert into celsius ::: "
.LC2:
	.string	"%f"
	.align 8
.LC6:
	.string	"In Fahranheit :::\033[32m %.3f\n\033[0m"
.LC7:
	.string	"In Celsium :::\033[32m %.3f\n\033[0m"
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
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-8(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC4(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movss	.LC5(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cvtss2sd	-4(%rbp), %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC3:
	.long	1107296256
	.align 4
.LC4:
	.long	1084227584
	.align 4
.LC5:
	.long	1091567616
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
