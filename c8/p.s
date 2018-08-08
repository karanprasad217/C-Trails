	.file	"p.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number you want enter :: "
.LC1:
	.string	"%d"
	.align 8
.LC3:
	.string	"Closest palindrome found for up :: %d\n"
	.align 8
.LC4:
	.string	"Closest palindrome found for down:: %d\n"
	.align 8
.LC5:
	.string	"The closest palindrome to %d is %d.\n"
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
	subq	$96, %rsp
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-80(%rbp), %eax
	movl	%eax, -36(%rbp)
.L7:
	movl	-80(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
.L2:
	addl	$1, -8(%rbp)
	movl	-80(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	jg	.L2
	movl	-32(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	-48(%rbp), %xmm0
	movq	.LC2(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	call	pow@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
.L3:
	movl	-80(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	-16(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-44(%rbp), %eax
	imull	-16(%rbp), %eax
	addl	%eax, -12(%rbp)
	movl	-80(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	jg	.L3
	movl	$0, -4(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L4
	movl	$0, -4(%rbp)
	jmp	.L5
.L6:
	movl	-4(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movl	%edx, -72(%rbp,%rax,4)
	addl	$1, -4(%rbp)
.L5:
	cmpl	$0, -4(%rbp)
	jle	.L6
.L4:
	movl	-32(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L7
	movl	-72(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-36(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	$0, -4(%rbp)
.L13:
	movl	-80(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
.L8:
	addl	$1, -20(%rbp)
	movl	-80(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	jg	.L8
	movl	-32(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	-60(%rbp), %xmm0
	movq	.LC2(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	call	pow@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
.L9:
	movl	-80(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-56(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	%eax, -24(%rbp)
	movl	-80(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	jg	.L9
	movl	$0, -4(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L10
	movl	$0, -4(%rbp)
	jmp	.L11
.L12:
	movl	-4(%rbp), %eax
	cltq
	movl	-24(%rbp), %edx
	movl	%edx, -76(%rbp,%rax,4)
	addl	$1, -4(%rbp)
.L11:
	cmpl	$0, -4(%rbp)
	jle	.L12
.L10:
	movl	-32(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L13
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-72(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-76(%rbp), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L14
	movl	-72(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L14:
	movl	-76(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L15:
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
