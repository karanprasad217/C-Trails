	.file	"p1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"\033[44mFAHRANHEIT TO CELSIUS CONVERTER\n\033[0m"
	.align 8
.LC1:
	.string	"\033[33mThis program will take the lower bound temperature, upper bound temperature and a step constant from the user.\n\n\033[0m"
	.align 8
.LC2:
	.string	"Enter lower bound temperature(in Fahranheit) ::: "
.LC3:
	.string	"%f"
	.align 8
.LC4:
	.string	"Enter upper bound temperature(in Fahranheit) ::: "
.LC5:
	.string	"%d"
.LC6:
	.string	"Enter the steps ::: "
	.align 8
.LC10:
	.string	"\nFahranheit :: %0.4lf <==> Celsius :: %0.4f \n"
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
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L2
.L3:
	movss	-12(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC8(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm1
	movss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC10(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	movss	-12(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
.L2:
	movl	-8(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	-12(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L3
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC7:
	.long	1107296256
	.align 4
.LC8:
	.long	1084227584
	.align 4
.LC9:
	.long	1091567616
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
