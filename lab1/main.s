	.text
	.file	"main.c"
	.globl	func_a                  # -- Begin function func_a
	.p2align	4, 0x90
	.type	func_a,@function
func_a:                                 # @func_a
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	$1, -4(%rbp)
	movl	-4(%rbp), %esi
	addl	$1, %esi
	addl	-8(%rbp), %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	func_a, .Lfunc_end0-func_a
	.cfi_endproc
                                        # -- End function
	.globl	func_b                  # -- Begin function func_b
	.p2align	4, 0x90
	.type	func_b,@function
func_b:                                 # @func_b
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	x, %esi
	addl	$1, %esi
	addl	$100, %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	func_b, .Lfunc_end1-func_b
	.cfi_endproc
                                        # -- End function
	.globl	func_c                  # -- Begin function func_c
	.p2align	4, 0x90
	.type	func_c,@function
func_c:                                 # @func_c
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	-12(%rbp), %edx
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_1
.LBB2_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	func_c, .Lfunc_end2-func_c
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$10, %edi
	callq	func_a
	callq	func_b
	movl	$20, %edi
	callq	func_c
	movabsq	$.L.str.2, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	N,@object               # @N
	.section	.rodata,"a",@progbits
	.globl	N
	.p2align	2
N:
	.long	100                     # 0x64
	.size	N, 4

	.type	x,@object               # @x
	.data
	.globl	x
	.p2align	2
x:
	.long	2                       # 0x2
	.size	x, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d%d"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
