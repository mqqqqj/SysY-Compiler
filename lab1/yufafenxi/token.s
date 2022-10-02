	.text
	.file	"token.c"
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
	subq	$336, %rsp              # imm = 0x150
	movl	$0, -4(%rbp)
	movl	$0, -452(%rbp)
	movl	$0, -456(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$110, -456(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-452(%rbp), %eax
	addl	-456(%rbp), %eax
	movl	%eax, -452(%rbp)
	movl	-452(%rbp), %eax
	imull	-456(%rbp), %eax
	movslq	-456(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-456(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -456(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	xorl	%eax, %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	N,@object               # @N
	.section	.rodata,"a",@progbits
	.globl	N
	.p2align	2
N:
	.long	110                     # 0x6e
	.size	N, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
