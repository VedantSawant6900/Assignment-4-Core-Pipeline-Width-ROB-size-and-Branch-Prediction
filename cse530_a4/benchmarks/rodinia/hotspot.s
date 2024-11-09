	.file	"hotspot.cpp"
	.text
	.globl	_Z8get_timev
	.type	_Z8get_timev, @function
_Z8get_timev:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday
	movq	-16(%rbp), %rax
	imulq	$1000000, %rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	_Z8get_timev, .-_Z8get_timev
	.section	.rodata
	.align 4
	.type	_ZL6t_chip, @object
	.size	_ZL6t_chip, 4
_ZL6t_chip:
	.long	973279855
	.align 4
	.type	_ZL11chip_height, @object
	.size	_ZL11chip_height, 4
_ZL11chip_height:
	.long	1015222895
	.align 4
	.type	_ZL10chip_width, @object
	.size	_ZL10chip_width, 4
_ZL10chip_width:
	.long	1015222895
	.align 4
	.type	_ZL8amb_temp, @object
	.size	_ZL8amb_temp, 4
_ZL8amb_temp:
	.long	1117782016
	.globl	num_omp_threads
	.bss
	.align 4
	.type	num_omp_threads, @object
	.size	num_omp_threads, 4
num_omp_threads:
	.zero	4
	.text
	.globl	_Z16single_iterationPfS_S_iifffff
	.type	_Z16single_iterationPfS_S_iifffff, @function
_Z16single_iterationPfS_S_iifffff:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movss	%xmm0, -84(%rbp)
	movss	%xmm1, -88(%rbp)
	movss	%xmm2, -92(%rbp)
	movss	%xmm3, -96(%rbp)
	movss	%xmm4, -100(%rbp)
	movl	-76(%rbp), %eax
	imull	-80(%rbp), %eax
	leal	255(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$8, %eax
	movl	%eax, -20(%rbp)
	movl	-80(%rbp), %eax
	leal	15(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$4, %eax
	movl	%eax, -24(%rbp)
	movl	-76(%rbp), %eax
	leal	15(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$4, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -16(%rbp)
.L23:
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L24
	movl	-16(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	sall	$4, %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, %eax
	sall	$4, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	$16, %eax
	cmpl	%eax, -76(%rbp)
	cmovle	-76(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	addl	$16, %eax
	cmpl	%eax, -80(%rbp)
	cmovle	-80(%rbp), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L5
	cmpl	$0, -36(%rbp)
	je	.L5
	movl	-40(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.L5
	movl	-44(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jne	.L6
.L5:
	movl	-32(%rbp), %eax
	movl	%eax, -8(%rbp)
.L18:
	movl	-32(%rbp), %eax
	addl	$16, %eax
	cmpl	%eax, -8(%rbp)
	jge	.L25
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
.L17:
	movl	-36(%rbp), %eax
	addl	$16, %eax
	cmpl	%eax, -12(%rbp)
	jge	.L8
	cmpl	$0, -8(%rbp)
	jne	.L9
	cmpl	$0, -12(%rbp)
	jne	.L9
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	movq	-64(%rbp), %rax
	movss	(%rax), %xmm2
	subss	%xmm2, %xmm0
	mulss	-88(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-64(%rbp), %rax
	movss	(%rax), %xmm2
	subss	%xmm2, %xmm0
	mulss	-92(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movss	(%rax), %xmm2
	movss	.LC0(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	-96(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-84(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L10
.L9:
	cmpl	$0, -8(%rbp)
	jne	.L11
	movl	-80(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L11
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	subss	%xmm2, %xmm0
	mulss	-88(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-12(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	subss	%xmm2, %xmm0
	mulss	-92(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movss	.LC0(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	-96(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-84(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jne	.L12
	movl	-80(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L12
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	subss	%xmm2, %xmm0
	mulss	-88(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	subss	%xmm2, %xmm0
	mulss	-92(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movss	.LC0(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	-96(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-84(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L10
.L12:
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jne	.L13
	cmpl	$0, -12(%rbp)
	jne	.L13
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	subss	%xmm2, %xmm0
	mulss	-88(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	subss	%xmm2, %xmm0
	mulss	-92(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movss	.LC0(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	-96(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-84(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L10
.L13:
	cmpl	$0, -8(%rbp)
	jne	.L14
	movss	-84(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	cvtss2sd	-88(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm1
	movl	-80(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	subss	%xmm3, %xmm0
	mulss	-92(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	movss	.LC0(%rip), %xmm0
	subss	%xmm3, %xmm0
	mulss	-96(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -4(%rbp)
	jmp	.L10
.L14:
	movl	-80(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L15
	movss	-84(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	cvtss2sd	-92(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	subss	%xmm3, %xmm0
	mulss	-88(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	movss	.LC0(%rip), %xmm0
	subss	%xmm3, %xmm0
	mulss	-96(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm6
	movss	%xmm6, -4(%rbp)
	jmp	.L10
.L15:
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jne	.L16
	movss	-84(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	cvtss2sd	-88(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	subss	%xmm3, %xmm0
	mulss	-92(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	movss	.LC0(%rip), %xmm0
	subss	%xmm3, %xmm0
	mulss	-96(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm7
	movss	%xmm7, -4(%rbp)
	jmp	.L10
.L16:
	cmpl	$0, -12(%rbp)
	jne	.L10
	movss	-84(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	cvtss2sd	-92(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	subss	%xmm3, %xmm0
	mulss	-88(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	movss	.LC0(%rip), %xmm0
	subss	%xmm3, %xmm0
	mulss	-96(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -4(%rbp)
.L10:
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	addss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -12(%rbp)
	jmp	.L17
.L8:
	addl	$1, -8(%rbp)
	jmp	.L18
.L6:
	movl	-32(%rbp), %eax
	movl	%eax, -8(%rbp)
.L22:
	movl	-32(%rbp), %eax
	addl	$16, %eax
	cmpl	%eax, -8(%rbp)
	jge	.L19
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
.L21:
	movl	-36(%rbp), %eax
	addl	$16, %eax
	cmpl	%eax, -12(%rbp)
	jge	.L20
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm0, %xmm0
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	mulss	-92(%rbp), %xmm0
	addss	%xmm0, %xmm2
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm0, %xmm0
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	mulss	-88(%rbp), %xmm0
	addss	%xmm0, %xmm2
	movaps	%xmm2, %xmm1
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movss	.LC0(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	-96(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-84(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movl	-8(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm3, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -12(%rbp)
	jmp	.L21
.L20:
	addl	$1, -8(%rbp)
	jmp	.L22
.L25:
	nop
.L19:
	addl	$1, -16(%rbp)
	jmp	.L23
.L24:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	_Z16single_iterationPfS_S_iifffff, .-_Z16single_iterationPfS_S_iifffff
	.globl	_Z17compute_tran_tempPfiS_S_ii
	.type	_Z17compute_tran_tempPfiS_S_ii, @function
_Z17compute_tran_tempPfiS_S_ii:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$120, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, -96(%rbp)
	movl	%r9d, -116(%rbp)
	cvtsi2ss	-96(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	cvtsi2ss	-116(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	cvtss2sd	-24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -32(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	cvtss2sd	-24(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm6
	movss	%xmm6, -36(%rbp)
	cvtss2sd	-24(%rbp), %xmm0
	cvtss2sd	-28(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm7
	movss	%xmm7, -40(%rbp)
	movss	-24(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	mulss	%xmm1, %xmm0
	mulss	-28(%rbp), %xmm0
	movss	.LC5(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	cvtss2sd	-48(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -52(%rbp)
	movss	.LC9(%rip), %xmm0
	divss	-36(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC9(%rip), %xmm0
	divss	-40(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC9(%rip), %xmm0
	divss	-44(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-52(%rbp), %xmm0
	divss	-32(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.L28:
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.L29
	movss	-52(%rbp), %xmm3
	movss	-64(%rbp), %xmm2
	movss	-60(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	movl	-68(%rbp), %edi
	movl	-116(%rbp), %r8d
	movl	-96(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movl	%edi, -120(%rbp)
	movss	-120(%rbp), %xmm0
	movq	%rax, %rdi
	call	_Z16single_iterationPfS_S_iifffff
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	addl	$1, -20(%rbp)
	jmp	.L28
.L29:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_Z17compute_tran_tempPfiS_S_ii, .-_Z17compute_tran_tempPfiS_S_ii
	.section	.rodata
.LC10:
	.string	"error: %s\n"
	.text
	.globl	_Z5fatalPc
	.type	_Z5fatalPc, @function
_Z5fatalPc:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE14:
	.size	_Z5fatalPc, .-_Z5fatalPc
	.section	.rodata
.LC11:
	.string	"w"
.LC12:
	.string	"The file was not opened"
.LC13:
	.string	"%d\t%g\n"
	.text
	.globl	_Z11writeoutputPfiiPc
	.type	_Z11writeoutputPfiiPc, @function
_Z11writeoutputPfiiPc:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movl	%esi, -300(%rbp)
	movl	%edx, -304(%rbp)
	movq	%rcx, -312(%rbp)
	movl	$0, -12(%rbp)
	movq	-312(%rbp), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	sete	%al
	testb	%al, %al
	je	.L32
	movl	$.LC12, %edi
	call	puts
.L32:
	movl	$0, -4(%rbp)
.L36:
	movl	-4(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jge	.L33
	movl	$0, -8(%rbp)
.L35:
	movl	-8(%rbp), %eax
	cmpl	-304(%rbp), %eax
	jge	.L34
	movl	-4(%rbp), %eax
	imull	-304(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-12(%rbp), %edx
	leaq	-288(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	sprintf
	movq	-24(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	addl	$1, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L35
.L34:
	addl	$1, -4(%rbp)
	jmp	.L36
.L33:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_Z11writeoutputPfiiPc, .-_Z11writeoutputPfiiPc
	.section	.rodata
.LC14:
	.string	"r"
.LC15:
	.string	"%f"
	.text
	.globl	_Z10read_inputPfiiPc
	.type	_Z10read_inputPfiiPc, @function
_Z10read_inputPfiiPc:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movq	%rdi, -392(%rbp)
	movl	%esi, -396(%rbp)
	movl	%edx, -400(%rbp)
	movq	%rcx, -408(%rbp)
	movq	-408(%rbp), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L38
	movabsq	$8462091215644158310, %rax
	movabsq	$7070779436909487212, %rdx
	movq	%rax, -384(%rbp)
	movq	%rdx, -376(%rbp)
	movabsq	$7234309758397653093, %rax
	movabsq	$7018141078011209248, %rdx
	movq	%rax, -368(%rbp)
	movq	%rdx, -360(%rbp)
	movl	$1735289188, -352(%rbp)
	movb	$0, -348(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_Z5fatalPc
.L38:
	movl	$0, -4(%rbp)
.L42:
	movl	-396(%rbp), %eax
	imull	-400(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L39
	movq	-16(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	fgets
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L40
	movabsq	$8462103605467705198, %rax
	movabsq	$8315173686074173543, %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movabsq	$7308332182667159840, %rax
	movq	%rax, -288(%rbp)
	movb	$0, -280(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_Z5fatalPc
.L40:
	leaq	-276(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sscanf
	cmpl	$1, %eax
	setne	%al
	testb	%al, %al
	je	.L41
	movabsq	$2334106421097295465, %rax
	movabsq	$8245921732065257830, %rdx
	movq	%rax, -336(%rbp)
	movq	%rdx, -328(%rbp)
	movl	$7627117, -320(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_Z5fatalPc
.L41:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-392(%rbp), %rax
	addq	%rdx, %rax
	movss	-276(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L42
.L39:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_Z10read_inputPfiiPc, .-_Z10read_inputPfiiPc
	.section	.rodata
	.align 8
.LC16:
	.string	"Usage: %s <grid_rows> <grid_cols> <sim_time> <no. of threads><temp_file> <power_file>\n"
	.align 8
.LC17:
	.string	"\t<grid_rows>  - number of rows in the grid (positive integer)\n"
	.align 8
.LC18:
	.string	"\t<grid_cols>  - number of columns in the grid (positive integer)\n"
	.align 8
.LC19:
	.string	"\t<sim_time>   - number of iterations\n"
	.align 8
.LC20:
	.string	"\t<no. of threads>   - number of threads\n"
	.align 8
.LC21:
	.string	"\t<temp_file>  - name of the file containing the initial temperature values of each cell\n"
	.align 8
.LC22:
	.string	"\t<power_file> - name of the file containing the dissipated power values of each cell\n"
	.align 8
.LC23:
	.string	"\t<output_file> - name of the output file\n"
	.text
	.globl	_Z5usageiPPc
	.type	_Z5usageiPPc, @function
_Z5usageiPPc:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$62, %edx
	movl	$1, %esi
	movl	$.LC17, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	movl	$1, %esi
	movl	$.LC18, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	movl	$1, %esi
	movl	$.LC19, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC20, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$88, %edx
	movl	$1, %esi
	movl	$.LC21, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$85, %edx
	movl	$1, %esi
	movl	$.LC22, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	movl	$.LC23, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE17:
	.size	_Z5usageiPPc, .-_Z5usageiPPc
	.section	.rodata
	.align 8
.LC24:
	.string	"Start computing the transient temperature"
.LC25:
	.string	"Ending simulation"
.LC27:
	.string	"Total time: %.3f seconds\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	cmpl	$8, -116(%rbp)
	je	.L45
	movq	-128(%rbp), %rdx
	movl	-116(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_Z5usageiPPc
.L45:
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L46
	movq	-128(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L46
	movq	-128(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L46
	movq	-128(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, num_omp_threads(%rip)
	movl	num_omp_threads(%rip), %eax
	testl	%eax, %eax
	jg	.L47
.L46:
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	testb	%al, %al
	je	.L49
	movq	-128(%rbp), %rdx
	movl	-116(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_Z5usageiPPc
.L49:
	movl	-12(%rbp), %eax
	imull	-4(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %eax
	imull	-4(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	imull	-4(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L50
	cmpq	$0, -32(%rbp)
	jne	.L51
.L50:
	movabsq	$8367799623835807349, %rax
	movabsq	$7017575155838820463, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$8245929725128631668, %rax
	movq	%rax, -96(%rbp)
	movw	$121, -88(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_Z5fatalPc
.L51:
	movq	-128(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rcx
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10read_inputPfiiPc
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10read_inputPfiiPc
	movl	$.LC24, %edi
	call	puts
	call	_Z8get_timev
	movq	%rax, -72(%rbp)
	movl	-4(%rbp), %r8d
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	_Z17compute_tran_tempPfiS_S_ii
	call	_Z8get_timev
	movq	%rax, -80(%rbp)
	movl	$.LC25, %edi
	call	puts
	movq	-80(%rbp), %rax
	subq	-72(%rbp), %rax
	cvtsi2ssq	%rax, %xmm0
	movss	.LC26(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.LC27, %edi
	movl	$1, %eax
	call	printf
	movl	-8(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rax
	jmp	.L53
.L52:
	movq	-24(%rbp), %rax
.L53:
	movq	-64(%rbp), %rcx
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	call	_Z11writeoutputPfiiPc
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1117782016
	.align 4
.LC1:
	.long	1015222895
	.align 8
.LC2:
	.long	365568000
	.long	1081825280
	.align 8
.LC3:
	.long	2919235584
	.long	1069128089
	.align 4
.LC4:
	.long	1120403456
	.align 4
.LC5:
	.long	973279855
	.align 4
.LC6:
	.long	1171671332
	.align 8
.LC7:
	.long	3539053052
	.long	1062232653
	.align 8
.LC8:
	.long	0
	.long	1083129856
	.align 4
.LC9:
	.long	1065353216
	.align 4
.LC26:
	.long	1232348160
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
