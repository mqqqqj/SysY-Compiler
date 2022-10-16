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
	.file	"bitop.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d %d %d %d %d %d\012\000"
	.text
	.align	2
	.global	main
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	mov	r3, #12
	str	r3, [fp, #-36]
	mov	r3, #34
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	orr	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	and	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-36]
	mvn	r3, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-36]
	asr	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	str	r3, [sp, #8]
	ldr	r3, [fp, #-12]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-28]
	ldr	r0, .L3
.LPIC0:
	add	r0, pc, r0
	bl	printf(PLT)
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L4:
	.align	2
.L3:
	.word	.LC0-(.LPIC0+8)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
