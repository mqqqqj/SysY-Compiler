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
	.file	"main.c"
	.text
	.global	N
	.section	.rodata
	.align	2
	.type	N, %object
	.size	N, 4
N:
	.word	100
	.global	x
	.data
	.align	2
	.type	x, %object
	.size	x, 4
x:
	.word	2
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\012\000"
	.text
	.align	1
	.global	func_a
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	func_a, %function
func_a:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	mov	r1, r3
	ldr	r3, .L2
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	.LC0-(.LPIC0+4)
	.size	func_a, .-func_a
	.align	1
	.global	func_b
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	func_b, %function
func_b:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L5
.LPIC1:
	add	r3, pc
	ldr	r3, [r3]
	adds	r3, r3, #1
	movs	r2, #100
	add	r3, r3, r2
	mov	r1, r3
	ldr	r3, .L5+4
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	nop
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	x-(.LPIC1+4)
	.word	.LC0-(.LPIC2+4)
	.size	func_b, .-func_b
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #10
	bl	func_a(PLT)
	bl	func_b(PLT)
	movs	r3, #0
	mov	r0, r3
	pop	{r7, pc}
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
