	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"pointer.c"
	.text
	.align	2
	.global	main
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	ldr	r2, .L4			@r2 load 什么
.LPIC0:
	add	r2, pc, r2
	ldr	r3, .L4+4
	ldr	r3, [r2, r3]	
	ldr	r3, [r3]		
	str	r3, [fp, #-8]
	mov	r3,#0
	mov	r3, #3
	str	r3, [fp, #-16]
	sub	r3, fp, #16
	str	r3, [fp, #-12]	@c的地址放在fp-12
	mov	r3, #0
	ldr	r1, .L4+8
.LPIC1:
	add	r1, pc, r1
	ldr	r2, .L4+4
	ldr	r2, [r1, r2]	@r2 load *(r1+r2)
	ldr	r1, [r2]		@r1 load *r2
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L3
	bl	__stack_chk_fail(PLT)
.L3:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L5:
	.align	2
.L4:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
