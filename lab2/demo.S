@ comm section save global variable without initialization
3 .comm a, 4 @global variables
4 .comm b, 4
5 .text
6 .align 2
7 @ rodata section save constant
8 .section .rodata
9 .align 2
10 _str0:
11 .ascii "%d %d\0" @\000 is also one representation for `null character`
12 .align 2
13 _str1:
14 .ascii "max is: %d\n"
15 @ text section code
16 .text
17 .align 2
18
19 .global max
20 max: @ function int max(int a, int b)
21 str fp, [sp, #-4]! @ pre-index mode, sp = sp - 4, push fp
22 mov fp, sp
23 sub sp, sp, #12 @ allocate space for local variable
24 str r0, [fp, #-8] @ r0 = [fp, #-8] = a
25 str r1, [fp, #-12] @ r1 = [fp, #-12] = b
26 cmp r0, r1
27 blt .L2
28 ldr r0, [fp, #-8]
29 b .L3
30 .L2:
31 ldr r0, [fp, #-12]
32 .L3:
33 add sp, fp, #0
34 ldr fp, [sp], #4 @ post-index mode, pop fp, sp = sp + 4
35 bx lr @ recover sp fp pc
36 @ do you know the difference between `bx` and `bl`?
37 @ and if max function is non-leaf, what should we do with the `lr` register?
38 .global main
39 main:
40 push {fp, lr}
41 add fp, sp, #4
42 ldr r2, _bridge @ r2 = &b
43 ldr r1, _bridge+4 @ r1 = &a
44 ldr r0, _bridge+8 @ *r0 = "%d %d\000"
45 bl __isoc99_scanf @ scanf("%d %d", &a, &b)
46 ldr r3, _bridge+4 @ r3 = &a
47 ldr r0, [r3] @ r0 = a
48 ldr r3, _bridge @ r3 = &b
49 ldr r1, [r3] @ r1 = b
50 bl max
51 mov r1, r0 @ r1 = r0
52 ldr r0, _bridge+12 @ *r0 = "max is: %d\0"
53 bl printf @ printf("max is: %d", max(a, b));
54 mov r0, #0
6 of 8
编译原理实验指导 2.2 汇编编程
55 pop {fp, pc} @ return 0
56
57 _bridge:
58 .word b
59 .word a
60 .word _str0
61 .word _str1
62
63 .section .note.GNU-stack,"",%progbits @ do you know what's the use of this :-)