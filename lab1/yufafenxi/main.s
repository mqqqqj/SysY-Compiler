	.text
	.file	"main.c"
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
	movl	$0, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -8(%rbp)
	movl	$1, -4(%rbp)
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -8(%rbp)
	movl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	n,@object               # @n
	.section	.rodata,"a",@progbits
	.globl	n
	.p2align	2
n:
	.long	20                      # 0x14
	.size	n, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
