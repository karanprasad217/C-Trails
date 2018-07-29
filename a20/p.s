	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number you want to check is a palindorme ::: "
.LC1:
	.string	"%d"
	.align 8
.LC3:
	.string	"Yes, the number %d is a palindrome.\n"
	.align 8
.LC4:
	.string	"No, the number %d is not a palindrome.\n"
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
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -4(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
.L2:
	movl	-24(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	addl	$1, -4(%rbp)
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jg	.L2
	movl	$0, -12(%rbp)
.L3:
	movl	-8(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
	subl	$1, -4(%rbp)
	pxor	%xmm2, %xmm2
	cvtsi2sd	-20(%rbp), %xmm2
	movsd	%xmm2, -40(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	-4(%rbp), %xmm0
	movq	.LC2(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	call	pow@PLT
	mulsd	-40(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sd	-12(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L3
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.L4
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L5
.L4:
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L5:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1076101120
	.ident	"GCC: (Debian 6.3.0-12) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
