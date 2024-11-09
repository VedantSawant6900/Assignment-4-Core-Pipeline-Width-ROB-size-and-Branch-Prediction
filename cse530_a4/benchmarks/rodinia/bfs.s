	.file	"bfs.cpp"
	.text
	.globl	fp
	.bss
	.align 8
	.type	fp, @object
	.size	fp, 8
fp:
	.zero	8
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s <num_threads> <input_file>\n"
	.text
	.globl	_Z5UsageiPPc
	.type	_Z5UsageiPPc, @function
_Z5UsageiPPc:
.LFB228:
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
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE228:
	.size	_Z5UsageiPPc, .-_Z5UsageiPPc
	.globl	main
	.type	main, @function
main:
.LFB229:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_Z8BFSGraphiPPc
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE229:
	.size	main, .-main
	.section	.rodata
.LC1:
	.string	"Reading File"
.LC2:
	.string	"r"
.LC3:
	.string	"Error Reading graph file"
.LC4:
	.string	"%d"
.LC5:
	.string	"%d %d"
.LC6:
	.string	"Start traversing the tree"
.LC7:
	.string	"w"
.LC8:
	.string	"result.txt"
.LC9:
	.string	"%d) cost:%d\n"
.LC10:
	.string	"Result stored in result.txt"
	.text
	.globl	_Z8BFSGraphiPPc
	.type	_Z8BFSGraphiPPc, @function
_Z8BFSGraphiPPc:
.LFB230:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -148(%rbp)
	movq	%rsi, -160(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	cmpl	$3, -148(%rbp)
	je	.L5
	movq	-160(%rbp), %rdx
	movl	-148(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_Z5UsageiPPc
	movl	$0, %edi
	call	exit
.L5:
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -40(%rbp)
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$.LC1, %edi
	call	puts
	movq	-48(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, fp(%rip)
	movq	fp(%rip), %rax
	testq	%rax, %rax
	jne	.L6
	movl	$.LC3, %edi
	call	puts
	jmp	.L4
.L6:
	movl	$0, -124(%rbp)
	movq	fp(%rip), %rax
	leaq	-116(%rbp), %rdx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fscanf
	movl	-116(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -56(%rbp)
	movl	-116(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -64(%rbp)
	movl	-116(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -72(%rbp)
	movl	-116(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -80(%rbp)
	movl	$0, -4(%rbp)
.L9:
	movl	-116(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jnb	.L8
	movq	fp(%rip), %rax
	leaq	-132(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fscanf
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-128(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-132(%rbp), %eax
	movl	%eax, 4(%rdx)
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L9
.L8:
	movq	fp(%rip), %rax
	leaq	-124(%rbp), %rdx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fscanf
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	fp(%rip), %rax
	leaq	-120(%rbp), %rdx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fscanf
	movl	-120(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -88(%rbp)
	movl	$0, -8(%rbp)
.L11:
	movl	-120(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L10
	movq	fp(%rip), %rax
	leaq	-136(%rbp), %rdx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fscanf
	movq	fp(%rip), %rax
	leaq	-140(%rbp), %rdx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fscanf
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-136(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -8(%rbp)
	jmp	.L11
.L10:
	movq	fp(%rip), %rax
	testq	%rax, %rax
	je	.L12
	movq	fp(%rip), %rax
	movq	%rax, %rdi
	call	fclose
.L12:
	movl	-116(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -96(%rbp)
	movl	$0, -12(%rbp)
.L14:
	movl	-116(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L13
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	$-1, (%rax)
	addl	$1, -12(%rbp)
	jmp	.L14
.L13:
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	$.LC6, %edi
	call	puts
	movl	$0, -16(%rbp)
.L25:
	movb	$0, -17(%rbp)
	movl	$0, -24(%rbp)
.L20:
	movl	-116(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	jge	.L15
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L16
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
.L19:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -28(%rbp)
	jge	.L16
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L18
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
.L18:
	addl	$1, -28(%rbp)
	jmp	.L19
.L16:
	addl	$1, -24(%rbp)
	jmp	.L20
.L15:
	movl	$0, -32(%rbp)
.L23:
	movl	-116(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jge	.L21
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L22
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	movb	$1, -17(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L22:
	addl	$1, -32(%rbp)
	jmp	.L23
.L21:
	addl	$1, -16(%rbp)
	cmpb	$0, -17(%rbp)
	je	.L24
	jmp	.L25
.L24:
	movl	$.LC7, %esi
	movl	$.LC8, %edi
	call	fopen
	movq	%rax, -112(%rbp)
	movl	$0, -36(%rbp)
.L27:
	movl	-116(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L26
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-36(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	addl	$1, -36(%rbp)
	jmp	.L27
.L26:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$.LC10, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE230:
	.size	_Z8BFSGraphiPPc, .-_Z8BFSGraphiPPc
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
