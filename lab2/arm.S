	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"target.c"
	.global	N
	.section	.rodata
	.align	2
	.type	N, %object
	.size	N, 4
N:
	.word	20
	.global	__aeabi_idiv
	.global	__aeabi_dadd
	.align	2
.LC0:
	.ascii	"%d\012\000"
	.align	2
.LC1:
	.ascii	"%f\012\000"
	.text
	.align	2
	.global	func_a
	.type	func_a, %function
func_a:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	mov	r3, #10
	str	r3, [fp, #-48]
	mov	r3, #2
	str	r3, [fp, #-44]
	ldr	r0, [fp, #-48]
	ldr	r1, [fp, #-44]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-40]
	adr	r4, .L3
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	adr	r4, .L3+8
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	sub	r1, fp, #36
	ldmia	r1, {r0-r1}
	sub	r3, fp, #28
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	ldr	r3, .L3+16
	mov	r0, r3
	ldr	r1, [fp, #-40]
	bl	printf
	ldr	r3, .L3+20
	mov	r0, r3
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	bl	printf
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
.L4:
	.align	3
.L3:
	.word	1717986918
	.word	1076127334
	.word	-1717986918
	.word	1076074905
	.word	.LC0
	.word	.LC1
	.size	func_a, .-func_a
	.align	2
	.global	func_b
	.type	func_b, %function
func_b:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #1
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
.L7:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r3, r3, asr #2
	mov	r2, r3
	ldr	r3, .L11
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bge	.L10
.L6:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L7
.L10:
	mov	r0, r0	@ nop
.L9:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L12:
	.align	2
.L11:
	.word	N
	.size	func_b, .-func_b
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #20
	mov	r3, sp
	mov	r8, r3
	bl	func_a
	ldr	r3, .L17
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, .L17
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, #0
	mvn	r0, #0
	mov	r1, #15
	and	r2, r2, r0
	and	r3, r3, r1
	mov	r1, r2, lsr #27
	mov	r7, r3, asl #5
	orr	r7, r1, r7
	mov	r6, r2, asl #5
	mvn	r2, #0
	mov	r3, #15
	and	r6, r6, r2
	and	r7, r7, r3
	ldr	r3, .L17
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, #0
	mvn	r0, #0
	mov	r1, #15
	and	r2, r2, r0
	and	r3, r3, r1
	mov	r1, r2, lsr #27
	mov	r5, r3, asl #5
	orr	r5, r1, r5
	mov	r4, r2, asl #5
	mvn	r2, #0
	mov	r3, #15
	and	r4, r4, r2
	and	r5, r5, r3
	ldr	r3, .L17
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	mov	r3, sp
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	mov	r0, r3
	bl	func_b
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L14
.L15:
	ldr	r2, .L17+4
	ldr	r1, [fp, #-32]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, r1, asl #2]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L14:
	ldr	r3, .L17
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	blt	.L15
	mov	r3, #0
	mov	sp, r8
	mov	r0, r3
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	N
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (ctng-1.6.1) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
