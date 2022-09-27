.section .text
.syntax unified

.include "include/gba.inc"

/*
    D_080482e0 and D_08048314 are arrays of the following type
    struct ARMFuncDef {
        u16 stopCode;
        u16 dedicatedMemory;
        void *armFunction;
    };
*/

glabel D_080482e0   // struct ARMFuncDef []
    .short 0
    .short 0x174
    .word func_080487d8

    .short 0
    .short 0x90
    .word func_08048a68

    .short 0
    .short 0x124
    .word func_08048c20

    .short 0
    .short 0x194
    .word func_08048434

    .short 0
    .short 0xfc
    .word func_08048dd4

    .short 0
    .short 0x150
    .word func_08048fe4

glabel D_08048310
    .short 2

glabel D_08048312
    .short 0        // may just be alignment

glabel D_08048314   // struct ARMFuncDef []
    .short 0
    .short 0xb4
    .word func_0804894c

    .short 0
    .short 0x48
    .word func_08048af8

    .short 0
    .short 0
    .word func_08048d44

    .short 0
    .short 0x17c
    .word func_080485c8

    .short 0
    .short 0xdc
    .word func_08048ed0

glabel D_0804833c
    .short 2

unaligned_thumb_func_start func_0804833e
    push {lr}
    cmp r0, #0
    bne branch_08048348
    ldr r0, [pc, #16]	@ (0x8048358)
    b branch_0804834a
branch_08048348:
    ldr	r0, [pc, #16]	@ (0x804835c)
branch_0804834a:
    bl func_08048352
    pop {r0}
    bx r0

unaligned_thumb_func_start func_08048352
    ldr	r1, [pc, #12]	@ (0x8048360)
    adds	r1, #1
    bx	r1
    .word D_080482e0
    .word D_08048314
    .word func_08048364

unaligned_thumb_func_start func_08048364
    push	{r4, r5, r6, r7, lr}
    adds	r1, r0, #0
    ldr	r4, [pc, #64]	@ (0x80483ac)
    ldr	r6, [pc, #68]	@ (0x80483b0)
branch_0804836c:
    ldrh	r3, [r1, #0]
    cmp	r3, #2
    beq	 branch_0804837e
    ldrh	r7, [r1, #2]
    ldr	r5, [r1, #4]
    bl func_08048384
    adds	r1, #8
    b	 branch_0804836c
branch_0804837e:
    pop	{r4, r5, r6, r7}
    pop	{r0}
    bx	r0

thumb_func_start func_08048384
    adds	r0, r3, r6
    str	r0, [r4, #0]
    adds	r4, #4
    adds	r7, #3
    lsrs	r7, r7, #2
    bne	 branch_08048392
    bx	lr
branch_08048392:
	ldr	r0, [r5, #0]
    str	r0, [r6, #0]
    adds	r5, #4
    adds	r6, #4
    subs	r7, #1
    bne	 branch_08048392
    bx	lr
    push	{r1}
    lsls	r0, r0, #2
    ldr	r1, [pc, #12]	@ (0x80483b4)
    ldr	r0, [r0, r1]
    pop	{r1}
    bx	r0
    ldrh	r0, [r2, r5]
    lsls	r0, r0, #12
    ldrh	r0, [r4, r6]
    lsls	r0, r0, #12
    ldrh	r0, [r2, r5]
    lsls	r0, r0, #12
    orrs	r0, r0
    bne	 branch_080483be
    bx	lr
branch_080483be:
	push	{r4, r5, r6, r7, lr}
    mov	r4, r8
    mov	r5, r9
    mov	r6, sl
    mov	r7, fp
    push	{r4, r5, r6, r7}
    mov	r4, ip
    push	{r4}
    adds	r5, r0, #0
    push	{r1}
    ldr	r6, [pc, #888]	@ (0x804874c)
    ldr	r6, [r6, #0]
    ldr	r7, [r1, #4]
    ldr	r0, [r1, #20]
    mov	r8, r0
    movs	r0, #3
    ldrsb	r2, [r1, r0]
    movs	r0, #2
    ldrsb	r3, [r1, r0]
    ldrb	r0, [r1, #1]
    ldr	r4, [pc, #872]	@ (0x8048750)
    ldrh	r4, [r4, #0]
    adds	r0, r0, r4
    muls	r2, r0
    asrs	r2, r2, #7
    muls	r3, r0
    asrs	r3, r3, #7
    mov	r9, r2
    mov	sl, r3
    ldr	r0, [r1, #12]
    mov	fp, r0
    ldr	r0, [r1, #24]
    lsls	r0, r0, #10
    orrs	r0, r5
    mov	ip, r0
    mov	r0, r8
    ldr	r4, [r1, #16]
    subs	r4, r4, r0
    movs	r0, #3
    bl func_08048744
    pop	{r1}
    ldrb	r2, [r1, #0]
    movs	r3, #1
    bics	r2, r3
    orrs	r2, r0
    strb	r2, [r1, #0]
    mov	r0, fp
    str	r0, [r1, #12]
    pop	{r4}
    mov	ip, r4
    pop	{r4, r5, r6, r7}
    mov	r8, r4
    mov	r9, r5
    mov	sl, r6
    mov	fp, r7
    pop	{r4, r5, r6, r7}
    pop	{r0}
    bx	r0


arm_func_start func_08048434
    str	lr, [pc, #388]	@ 0x80485c0
    str	r4, [pc, #388]	@ 0x80485c4
branch_0804843c:
	add	r0, fp, ip, lsr #8
    cmp	r0, r8
    bcs	 branch_08048510
    ldm	r6, {r0, r1, r2, r3}
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r2, r4, r9, r2
    mla	r3, r4, sl, r3
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1, r2, r3}
    ldm	r6, {r0, r1, r2, r3}
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r2, r4, r9, r2
    mla	r3, r4, sl, r3
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1, r2, r3}
    sub	ip, ip, #1
    ands	r0, ip, #255	@ 0xff
    bne	 branch_0804843c
    mov	r0, #1
    ldr	lr, [pc, #176]	@ 0x80485c0
    bx	lr
branch_08048510:
	ldr	r2, [pc, #172]	@ 0x80485c4
    cmp	r2, #0
    beq	 branch_0804857c
    mov	r3, #4
branch_08048520:
	ldm	r6, {r0, r1}
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1}
branch_08048550:
	cmp	fp, r8
    addcs	fp, fp, r2
    bcs	 branch_08048550
    subs	r3, r3, #1
    bne	 branch_08048520
    sub	ip, ip, #1
    ands	r0, ip, #255	@ 0xff
    bne	 branch_0804843c
    mov	r0, #1
    ldr	lr, [pc, #68]	@ 0x80485c0
    bx	lr
branch_0804857c:
	ldm	r6, {r0, r1}
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1}
    cmp	fp, r8
    bcc	 branch_0804857c
    mov	r0, #0
    ldr	lr, [pc]	@ 0x80485c0
    bx	lr
    	.word 0
    .word 0

arm_func_start func_080485c8
    str	lr, [pc, #364]	@ 0x804873c
    str	r4, [pc, #364]	@ 0x8048740
branch_080485d0:
	add	r0, fp, ip, lsr #8
    cmp	r0, r8
    bcs	 branch_0804868c
    ldm	r6, {r0, r1, r2, r3}
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r0, r4, r9, r0
    add	fp, fp, ip, lsr #10
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r1, r4, r9, r1
    add	fp, fp, ip, lsr #10
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r2, r4, r9, r2
    add	fp, fp, ip, lsr #10
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r3, r4, r9, r3
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1, r2, r3}
    sub	ip, ip, #1
    ands	r0, ip, #255	@ 0xff
    bne	 branch_080485d0
    mov	r0, #1
    ldr	lr, [pc, #176]	@ 0x804873c
    bx	lr
branch_0804868c:
	ldr	r2, [pc, #172]	@ 0x8048740
    cmp	r2, #0
    beq	 branch_080486f8
    mov	r3, #4
branch_0804869c:
	ldr	r0, [r6]
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    str	r0, [r6], #4
branch_080486cc:
	cmp	fp, r8
    addcs	fp, fp, r2
    bcs	 branch_080486cc
    subs	r3, r3, #1
    bne	 branch_0804869c
    sub	ip, ip, #1
    ands	r0, ip, #255	@ 0xff
    bne	 branch_080485d0
    mov	r0, #1
    ldr	lr, [pc, #68]	@ 0x804873c
    bx	lr
branch_080486f8:
	ldr	r0, [r6]
    add	lr, r7, fp, lsr #14
    ldrsb	r4, [lr], #1
    ldrsb	r5, [lr]
    sub	r5, r5, r4
    and	lr, fp, #16320	@ 0x3fc0
    mul	r5, lr, r5
    add	r4, r4, r5, asr #14
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    str	r0, [r6], #4
    cmp	fp, r8
    bcc	 branch_080486f8
    mov	r0, #0
    ldr	lr, [pc]	@ 0x804873c
    bx	lr
    .word 0
    .word 0

unaligned_thumb_func_start func_08048744
    ldr	r1, [pc, #12]	@ (0x8048754)
    adds	r1, #1
    bx	r1
    movs	r0, r0
    str	r0, [r6, #72]	@ 0x48
    lsls	r0, r0, #12
    str	r4, [r5, #72]	@ 0x48
    lsls	r0, r0, #12
    strh	r0, [r4, #28]
    lsrs	r4, r0, #32
    orrs	r0, r0
    bne	 branch_0804875e
    bx	lr
branch_0804875e:
	push	{r4, r5, r6, r7, lr}
    mov	r4, r8
    mov	r5, r9
    mov	r6, sl
    mov	r7, fp
    push	{r4, r5, r6, r7}
    mov	r4, ip
    push	{r4}
    adds	r4, r0, #0
    ldr	r5, [pc, #980]	@ (0x8048b48)
    ldr	r5, [r5, #0]
    ldr	r0, [pc, #980]	@ (0x8048b4c)
    ldr	r0, [r0, #0]
    lsls	r0, r0, #2
    ldr	r6, [pc, #980]	@ (0x8048b50)
    ldr	r6, [r6, #0]
    ldr	r7, [pc, #980]	@ (0x8048b54)
    ldr	r7, [r7, #0]
    adds	r6, r6, r0
    ldr	r1, [pc, #976]	@ (0x8048b58)
    ldr	r1, [r1, #0]
    lsls	r1, r1, #2
    adds	r0, r0, r1
    ldr	r1, [pc, #972]	@ (0x8048b5c)
    ldr	r1, [r1, #0]
    lsls	r1, r1, #2
    cmp	r0, r1
    bcc	 branch_08048798
    subs	r0, r0, r1
branch_08048798:
	adds	r7, r7, r0
    ldr	r0, [pc, #964]	@ (0x8048b60)
    ldr	r0, [r0, #0]
    ldr	r2, [pc, #964]	@ (0x8048b64)
    ldr	r2, [r2, #0]
    ldr	r3, [pc, #964]	@ (0x8048b68)
    ldr	r3, [r3, #0]
    lsrs	r0, r3
    mov	r8, r0
    ldr	r0, [pc, #960]	@ (0x8048b6c)
    ldr	r0, [r0, #0]
    lsls	r0, r0, #2
    mov	r9, r0
    ldr	r1, [pc, #956]	@ (0x8048b70)
    ldr	r1, [r1, #0]
    mov	sl, r1
    ldr	r1, [pc, #952]	@ (0x8048b74)
    ldr	r1, [r1, #0]
    mov	fp, r1
    eors	r0, r0
    bl func_08048b40
    pop	{r4}
    mov	ip, r4
    pop	{r4, r5, r6, r7}
    mov	r8, r4
    mov	r9, r5
    mov	sl, r6
    mov	fp, r7
    pop	{r4, r5, r6, r7}
    pop	{r0}
    bx	r0

arm_func_start func_080487d8
    str	lr, [pc, #344]	@ 0x8048938
    str	sl, [pc, #344]	@ 0x804893c
    str	fp, [pc, #344]	@ 0x8048940
    add	sl, r9, sl
    add	fp, r9, fp
    mov	r9, r2
    mov	lr, r3
    mov	r1, r4
    ldr	r0, [pc, #324]	@ 0x8048944
    ldr	r2, [r0], #4
    ldr	r3, [r0], #4
    ldr	ip, [r0], #4
    ldr	r4, [r0]
branch_0804880c:
	str	r1, [pc, #308]	@ 0x8048948
    ldrsb	r0, [r6], #1
    sub	r2, r2, r2, asr r9
    add	r2, r0, r2
    sub	r0, r0, r2, asr r9
    sub	r3, r3, r3, asr lr
    add	r3, r0, r3
    mul	r0, r8, r3
    ldrsb	r1, [r7], #1
    sub	ip, ip, ip, asr r9
    add	ip, r1, ip
    sub	r1, r1, ip, asr r9
    sub	r4, r4, r4, asr lr
    add	r4, r1, r4
    mul	r1, r8, r4
    stmia	r5!, {r0, r1}
    ldrsb	r0, [r6], #1
    sub	r2, r2, r2, asr r9
    add	r2, r0, r2
    sub	r0, r0, r2, asr r9
    sub	r3, r3, r3, asr lr
    add	r3, r0, r3
    mul	r0, r8, r3
    ldrsb	r1, [r7], #1
    sub	ip, ip, ip, asr r9
    add	ip, r1, ip
    sub	r1, r1, ip, asr r9
    sub	r4, r4, r4, asr lr
    add	r4, r1, r4
    mul	r1, r8, r4
    stmia	r5!, {r0, r1}
    ldrsb	r0, [r6], #1
    sub	r2, r2, r2, asr r9
    add	r2, r0, r2
    sub	r0, r0, r2, asr r9
    sub	r3, r3, r3, asr lr
    add	r3, r0, r3
    mul	r0, r8, r3
    ldrsb	r1, [r7], #1
    sub	ip, ip, ip, asr r9
    add	ip, r1, ip
    sub	r1, r1, ip, asr r9
    sub	r4, r4, r4, asr lr
    add	r4, r1, r4
    mul	r1, r8, r4
    stmia	r5!, {r0, r1}
    ldrsb	r0, [r6], #1
    sub	r2, r2, r2, asr r9
    add	r2, r0, r2
    sub	r0, r0, r2, asr r9
    sub	r3, r3, r3, asr lr
    add	r3, r0, r3
    mul	r0, r8, r3
    ldrsb	r1, [r7], #1
    sub	ip, ip, ip, asr r9
    add	ip, r1, ip
    sub	r1, r1, ip, asr r9
    sub	r4, r4, r4, asr lr
    add	r4, r1, r4
    mul	r1, r8, r4
    stmia	r5!, {r0, r1}
    cmp	r6, sl
    ldrcs	r6, [pc, #48]	@ 0x804893c
    cmp	r7, fp
    ldrcs	r7, [pc, #44]	@ 0x8048940
    ldr	r1, [pc, #48]	@ 0x8048948
    subs	r1, r1, #1
    bne	 branch_0804880c
    ldr	r0, [pc, #32]	@ 0x8048944
    str	r2, [r0], #4
    str	r3, [r0], #4
    str	ip, [r0], #4
    str	r4, [r0]
    ldr	lr, [pc]	@ 0x8048938
    bx	lr
    .word 0
    .word 0
    .word 0
    .word 0x03005600
    andeq	r0, r0, r0

arm_func_start func_0804894c
    mov	r7, r2
    mov	fp, r3
    ldr	r0, [pc, #160]	@ 0x80489fc
    ldr	r2, [r0], #4
    ldr	r3, [r0], #4
    add	sl, r9, sl
branch_08048964:
	ldrsb	r0, [r6], #1
    sub	r2, r2, r2, asr r7
    add	r2, r0, r2
    sub	r0, r0, r2, asr r7
    sub	r3, r3, r3, asr fp
    add	r3, r0, r3
    mul	r0, r8, r3
    ldrsb	r1, [r6], #1
    sub	r2, r2, r2, asr r7
    add	r2, r1, r2
    sub	r1, r1, r2, asr r7
    sub	r3, r3, r3, asr fp
    add	r3, r1, r3
    mul	r1, r8, r3
    stmia	r5!, {r0, r1}
    ldrsb	r0, [r6], #1
    sub	r2, r2, r2, asr r7
    add	r2, r0, r2
    sub	r0, r0, r2, asr r7
    sub	r3, r3, r3, asr fp
    add	r3, r0, r3
    mul	r0, r8, r3
    ldrsb	r1, [r6], #1
    sub	r2, r2, r2, asr r7
    add	r2, r1, r2
    sub	r1, r1, r2, asr r7
    sub	r3, r3, r3, asr fp
    add	r3, r1, r3
    mul	r1, r8, r3
    stmia	r5!, {r0, r1}
    cmp	r6, sl
    subcs	r6, r6, r9
    subs	r4, r4, #1
    bne	 branch_08048964
    ldr	r0, [pc, #8]	@ 0x80489fc
    str	r2, [r0], #4
    str	r3, [r0], #4
    bx	lr
    .word 0x03005600

.thumb
    orrs	r0, r0
    bne	 branch_08048a06
    bx	lr
branch_08048a06:
	push	{r4, r5, r6, r7, lr}
    mov	r4, r8
    mov	r5, r9
    mov	r6, sl
    mov	r7, fp
    push	{r4, r5, r6, r7}
    mov	r4, ip
    push	{r4}
    adds	r6, r0, #0
    ldr	r7, [pc, #348]	@ (0x8048b78)
    ldr	r7, [r7, #0]
    ldr	r0, [pc, #348]	@ (0x8048b7c)
    ldr	r0, [r0, #0]
    lsls	r0, r0, #2
    ldr	r1, [pc, #348]	@ (0x8048b80)
    ldr	r1, [r1, #0]
    adds	r4, r1, #0
    ldr	r2, [pc, #344]	@ (0x8048b84)
    ldr	r2, [r2, #0]
    adds	r5, r2, #0
    adds	r1, r1, r0
    adds	r2, r2, r0
    mov	r8, r1
    mov	r9, r2
    ldr	r0, [pc, #336]	@ (0x8048b88)
    ldr	r0, [r0, #0]
    lsls	r0, r0, #2
    ldr	r1, [pc, #332]	@ (0x8048b8c)
    ldr	r1, [r1, #0]
    adds	r0, r0, r1
    mov	sl, r0
    ldr	r0, [pc, #328]	@ (0x8048b90)
    mov	fp, r0
    ldr	r0, [pc, #328]	@ (0x8048b94)
    mov	ip, r0
    movs	r0, #1
    bl func_08048b40
    pop	{r4}
    mov	ip, r4
    pop	{r4, r5, r6, r7}
    mov	r8, r4
    mov	r9, r5
    mov	sl, r6
    mov	fp, r7
    pop	{r4, r5, r6, r7}
    pop	{r0}
    bx	r0
    movs	r0, r0

arm_func_start func_08048a68
    str	r4, [pc, #128]	@ 0x8048af0
    str	r5, [pc, #128]	@ 0x8048af4
branch_08048a70:
	ldm	r7!, {r0, r1, r2, r3}
    and	r0, ip, r0, lsr #7
    and	r1, ip, r1, lsr #7
    and	r2, ip, r2, lsr #7
    and	r3, ip, r3, lsr #7
    ldrb	r0, [fp, r0]
    ldrb	r1, [fp, r1]
    ldrb	r2, [fp, r2]
    ldrb	r3, [fp, r3]
    orr	r4, r0, r2, lsl #8
    orr	r5, r1, r3, lsl #8
    ldm	r7!, {r0, r1, r2, r3}
    and	r0, ip, r0, lsr #7
    and	r1, ip, r1, lsr #7
    and	r2, ip, r2, lsr #7
    and	r3, ip, r3, lsr #7
    ldrb	r0, [fp, r0]
    ldrb	r1, [fp, r1]
    ldrb	r2, [fp, r2]
    ldrb	r3, [fp, r3]
    orr	r4, r4, r0, lsl #16
    orr	r4, r4, r2, lsl #24
    orr	r5, r5, r1, lsl #16
    orr	r5, r5, r3, lsl #24
    str	r4, [r8], #4
    str	r5, [r9], #4
    cmp	r8, sl
    ldrcs	r8, [pc, #12]	@ 0x8048af0
    ldrcs	r9, [pc, #12]	@ 0x8048af4
    subs	r6, r6, #1
    bne	 branch_08048a70
    bx	lr
    .word 0
    .word 0

arm_func_start func_08048af8
	ldm	r7!, {r0, r1, r2, r3}
    and	r0, ip, r0, lsr #7
    and	r1, ip, r1, lsr #7
    and	r2, ip, r2, lsr #7
    and	r3, ip, r3, lsr #7
    ldrb	r0, [fp, r0]
    ldrb	r1, [fp, r1]
    ldrb	r2, [fp, r2]
    ldrb	r3, [fp, r3]
    orr	r0, r0, r1, lsl #8
    orr	r0, r0, r2, lsl #16
    orr	r0, r0, r3, lsl #24
    str	r0, [r8], #4
    cmp	r8, sl
    movcs	r8, r4
    subs	r6, r6, #1
    bne	 func_08048af8
    bx	lr

.thumb
thumb_func_start func_08048b40
    ldr	r1, [pc, #84]	@ (0x8048b98)
    adds	r1, #1
    bx	r1
    movs	r0, r0
    str	r0, [r6, #72]	@ 0x48
    lsls	r0, r0, #12
    ldrh	r0, [r0, r5]
    lsls	r0, r0, #12
    ldrsb	r4, [r7, r0]
    lsls	r0, r0, #12
    str	r0, [r7, #72]	@ 0x48
    lsls	r0, r0, #12
    ldrsb	r0, [r6, r0]
    lsls	r0, r0, #12
    ldrh	r4, [r4, r4]
    lsls	r0, r0, #12
    str	r4, [r4, #72]	@ 0x48
    lsls	r0, r0, #12
    ldrsb	r4, [r6, r0]
    lsls	r0, r0, #12
    ldrh	r0, [r1, r5]
    lsls	r0, r0, #12
    ldrh	r4, [r4, r4]
    lsls	r0, r0, #12
    ldrsb	r4, [r7, r0]
    lsls	r0, r0, #12
    str	r0, [r7, #72]	@ 0x48
    lsls	r0, r0, #12
    str	r0, [r6, #72]	@ 0x48
    lsls	r0, r0, #12
    ldrh	r0, [r0, r5]
    lsls	r0, r0, #12
    ldrsb	r4, [r7, r0]
    lsls	r0, r0, #12
    str	r0, [r7, #72]	@ 0x48
    lsls	r0, r0, #12
    ldrh	r4, [r4, r4]
    lsls	r0, r0, #12
    ldrsb	r4, [r7, r0]
    lsls	r0, r0, #12
    ldrsb	r0, [r4, r4]
    lsls	r0, r0, #12
    lsls	r7, r7, #15
    movs	r0, r0
    strh	r0, [r4, #28]
    lsrs	r4, r0, #32
    orrs	r0, r0
    bne	 branch_08048ba2
    bx	lr
branch_08048ba2:
	push	{r4, r5, r6, r7, lr}
    mov	r4, r8
    mov	r5, r9
    mov	r6, sl
    mov	r7, fp
    push	{r4, r5, r6, r7}
    mov	r4, ip
    push	{r4}
    adds	r5, r0, #0
    lsls	r5, r5, #2
    ldr	r6, [pc, #404]	@ (0x8048d4c)
    ldr	r6, [r6, #0]
    ldr	r0, [r1, #4]
    ldr	r7, [r1, #12]
    lsrs	r7, r7, #14
    adds	r7, r7, r0
    ldr	r3, [r1, #16]
    lsrs	r3, r3, #14
    ldr	r2, [r1, #20]
    lsrs	r2, r2, #14
    subs	r3, r3, r2
    adds	r2, r2, r0
    mov	sl, r2
    mov	fp, r3
    movs	r0, #3
    ldrsb	r2, [r1, r0]
    movs	r0, #2
    ldrsb	r3, [r1, r0]
    ldrb	r0, [r1, #1]
    ldr	r4, [pc, #368]	@ (0x8048d50)
    ldrh	r4, [r4, #0]
    adds	r0, r0, r4
    muls	r2, r0
    asrs	r2, r2, #7
    muls	r3, r0
    asrs	r3, r3, #7
    mov	r8, r2
    mov	r9, r3
    push	{r1}
    movs	r0, #2
    bl func_08048d44
    pop	{r1}
    ldrb	r2, [r1, #0]
    movs	r3, #1
    bics	r2, r3
    orrs	r2, r0
    strb	r2, [r1, #0]
    ldr	r0, [r1, #4]
    subs	r7, r7, r0
    lsls	r7, r7, #14
    str	r7, [r1, #12]
    pop	{r4}
    mov	ip, r4
    pop	{r4, r5, r6, r7}
    mov	r8, r4
    mov	r9, r5
    mov	sl, r6
    mov	fp, r7
    pop	{r4, r5, r6, r7}
    pop	{r0}
    bx	r0
    movs	r0, r0

arm_func_start func_08048c20
    str	lr, [pc, #280]	@ 0x8048d40
branch_08048c24:
	ands	r0, r7, #3
    bne	 branch_08048cfc
    sub	r4, sl, r7
    cmp	r4, r5
    movcs	r4, r5
    lsrs	r4, r4, #2
    beq	 branch_08048cfc
    sub	r5, r5, r4, lsl #2
    tst	r4, #1
    addne	r4, r4, #1
    bne	 branch_08048ca0
branch_08048c50:
	ldr	ip, [r7], #4
    ldm	r6, {r0, r1, r2, r3}
    lsl	lr, ip, #24
    asr	lr, lr, #24
    mla	r0, r8, lr, r0
    mla	r1, r9, lr, r1
    lsl	lr, ip, #16
    asr	lr, lr, #24
    mla	r2, r8, lr, r2
    mla	r3, r9, lr, r3
    stmia	r6!, {r0, r1, r2, r3}
    ldm	r6, {r0, r1, r2, r3}
    lsl	lr, ip, #8
    asr	lr, lr, #24
    mla	r0, r8, lr, r0
    mla	r1, r9, lr, r1
    asr	lr, ip, #24
    mla	r2, r8, lr, r2
    mla	r3, r9, lr, r3
    stmia	r6!, {r0, r1, r2, r3}
branch_08048ca0:
	ldr	ip, [r7], #4
    ldm	r6, {r0, r1, r2, r3}
    lsl	lr, ip, #24
    asr	lr, lr, #24
    mla	r0, r8, lr, r0
    mla	r1, r9, lr, r1
    lsl	lr, ip, #16
    asr	lr, lr, #24
    mla	r2, r8, lr, r2
    mla	r3, r9, lr, r3
    stmia	r6!, {r0, r1, r2, r3}
    ldm	r6, {r0, r1, r2, r3}
    lsl	lr, ip, #8
    asr	lr, lr, #24
    mla	r0, r8, lr, r0
    mla	r1, r9, lr, r1
    asr	lr, ip, #24
    mla	r2, r8, lr, r2
    mla	r3, r9, lr, r3
    stmia	r6!, {r0, r1, r2, r3}
    subs	r4, r4, #2
    bne	 branch_08048c50
    b  branch_08048d14
branch_08048cfc:
	ldrsb	ip, [r7], #1
    ldm	r6, {r0, r1}
    mla	r0, r8, ip, r0
    mla	r1, r9, ip, r1
    stmia	r6!, {r0, r1}
    sub	r5, r5, #1
branch_08048d14:
	cmp	r7, sl
    bcc	 branch_08048d2c
    mov	r0, #0
    cmp	fp, #0
    beq	 branch_08048d38
    add	r7, r7, fp
branch_08048d2c:
	cmp	r5, #0
    bne	 branch_08048c24
    mov	r0, #1
branch_08048d38:
	ldr	lr, [pc]	@ 0x8048d40
    bx	lr
    andeq	r0, r0, r0

.thumb
thumb_func_start func_08048d44
    ldr	r1, [pc, #12]	@ (0x8048d54)
    adds	r1, #1
    bx	r1
    movs	r0, r0
    str	r0, [r6, #72]	@ 0x48
    lsls	r0, r0, #12
    str	r4, [r5, #72]	@ 0x48
    lsls	r0, r0, #12
    strh	r0, [r4, #28]
    lsrs	r4, r0, #32
    orrs	r0, r0
    bne	 branch_08048d5e
    bx	lr
branch_08048d5e:
	push	{r4, r5, r6, r7, lr}
    mov	r4, r8
    mov	r5, r9
    mov	r6, sl
    mov	r7, fp
    push	{r4, r5, r6, r7}
    mov	r4, ip
    push	{r4}
    adds	r5, r0, #0
    push	{r1}
    ldr	r6, [pc, #576]	@ (0x8048fb4)
    ldr	r6, [r6, #0]
    ldr	r7, [r1, #4]
    ldr	r0, [r1, #20]
    mov	r8, r0
    movs	r0, #3
    ldrsb	r2, [r1, r0]
    movs	r0, #2
    ldrsb	r3, [r1, r0]
    ldrb	r0, [r1, #1]
    ldr	r4, [pc, #560]	@ (0x8048fb8)
    ldrh	r4, [r4, #0]
    adds	r0, r0, r4
    muls	r2, r0
    asrs	r2, r2, #7
    muls	r3, r0
    asrs	r3, r3, #7
    mov	r9, r2
    mov	sl, r3
    ldr	r0, [r1, #12]
    mov	fp, r0
    ldr	r0, [r1, #24]
    lsls	r0, r0, #10
    orrs	r0, r5
    mov	ip, r0
    mov	r0, r8
    ldr	r5, [r1, #16]
    subs	r5, r5, r0
    movs	r0, #4
    bl	func_08048fac
    pop	{r1}
    ldrb	r2, [r1, #0]
    movs	r3, #1
    bics	r2, r3
    orrs	r2, r0
    strb	r2, [r1, #0]
    mov	r0, fp
    str	r0, [r1, #12]
    pop	{r4}
    mov	ip, r4
    pop	{r4, r5, r6, r7}
    mov	r8, r4
    mov	r9, r5
    mov	sl, r6
    mov	fp, r7
    pop	{r4, r5, r6, r7}
    pop	{r0}
    bx	r0

arm_func_start func_08048dd4
	add	r0, fp, ip, lsr #8
    cmp	r0, r8
    bcs	 branch_08048e54
    ldm	r6, {r0, r1, r2, r3}
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r2, r4, r9, r2
    mla	r3, r4, sl, r3
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1, r2, r3}
    ldm	r6, {r0, r1, r2, r3}
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r2, r4, r9, r2
    mla	r3, r4, sl, r3
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1, r2, r3}
    sub	ip, ip, #1
    ands	r0, ip, #255	@ 0xff
    bne	 func_08048dd4
    mov	r0, #1
    bx	lr
branch_08048e54:
	cmp	r5, #0
    beq	 branch_08048ea4
    mov	r3, #4
branch_08048e60:
	ldm	r6, {r0, r1}
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1}
branch_08048e7c:
	cmp	fp, r8
    addcs	fp, fp, r5
    bcs	 branch_08048e7c
    subs	r3, r3, #1
    bne	 branch_08048e60
    sub	ip, ip, #1
    ands	r0, ip, #255	@ 0xff
    bne	 func_08048dd4
    mov	r0, #1
    bx	lr
branch_08048ea4:
	ldm	r6, {r0, r1}
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r0, r4, r9, r0
    mla	r1, r4, sl, r1
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1}
    cmp	fp, r8
    bcc	 branch_08048ea4
    mov	r0, #0
    bx	lr

arm_func_start func_08048ed0
branch_08048ed0:
	add	r0, fp, ip, lsr #8
    cmp	r0, r8
    bcs	 branch_08048f38
    ldm	r6, {r0, r1, r2, r3}
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r0, r4, r9, r0
    add	fp, fp, ip, lsr #10
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r1, r4, r9, r2
    add	fp, fp, ip, lsr #10
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r2, r4, r9, r2
    add	fp, fp, ip, lsr #10
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r3, r4, r9, r2
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0, r1, r2, r3}
    sub	ip, ip, #1
    ands	r0, ip, #255	@ 0xff
    bne	 branch_08048ed0
    mov	r0, #1
    bx	lr
branch_08048f38:
	cmp	r5, #0
    beq	 branch_08048f84
    mov	r3, #4
branch_08048f44:
	ldm	r6, {r0}
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r0, r4, r9, r0
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0}
branch_08048f5c:
	cmp	fp, r8
    addcs	fp, fp, r5
    bcs	 branch_08048f5c
    subs	r3, r3, #1
    bne	 branch_08048f44
    sub	ip, ip, #1
    ands	r0, ip, #255	@ 0xff
    bne	 branch_08048ed0
    mov	r0, #1
    bx	lr
branch_08048f84:
	ldm	r6, {r0}
    add	r4, r7, fp, lsr #14
    ldrsb	r4, [r4]
    mla	r0, r4, r9, r0
    add	fp, fp, ip, lsr #10
    stmia	r6!, {r0}
    cmp	fp, r8
    bcc	 branch_08048f84
    mov	r0, #0
    bx	lr

.thumb
unaligned_thumb_func_start func_08048fac
    ldr	r1, [pc, #12]	@ (0x8048fbc)
    adds	r1, #1
    bx	r1
    movs	r0, r0
    str	r0, [r6, #72]	@ 0x48
    lsls	r0, r0, #12
    str	r4, [r5, #72]	@ 0x48
    lsls	r0, r0, #12
    strh	r0, [r4, #28]
    lsrs	r4, r0, #32
    orrs	r0, r0
    bne	func_08048fc6
    bx	lr

unaligned_thumb_func_start func_08048fc6
    push	{r4, r5, r6, r7, lr}
    ldrb	r4, [r1, #0]
    adds	r5, r0, #0
    ldr	r2, [r1, #4]
    ldr	r3, [r1, #8]
    ldr	r6, [pc, #360]	@ (0x804913c)
    ldr	r6, [r6, #0]
    push	{r1}
    movs	r0, #5
    bl func_08049134
    pop	{r1}
    str	r2, [r1, #4]
    str	r3, [r1, #8]
    pop	{r4, r5, r6, r7, pc}

arm_func_start func_08048fe4
    push	{r8, r9, sl, fp, lr}
    mov	lr, r5
    mov	ip, r6
    cmp	r4, #128	@ 0x80
    bcs	 branch_08049084
    lsl	r4, r4, #1
    mov	r0, r4
    rsb	r1, r4, #256	@ 0x100
branch_08049004:
	ldm	ip, {r4, r5, r6, r7, r8, r9, sl, fp}
    mul	r4, r1, r4
    mla	r4, r0, r2, r4
    asr	r4, r4, #8
    mul	r5, r1, r5
    mla	r5, r0, r3, r5
    asr	r5, r5, #8
    mul	r6, r1, r6
    mla	r6, r0, r4, r6
    asr	r6, r6, #8
    mul	r7, r1, r7
    mla	r7, r0, r5, r7
    asr	r7, r7, #8
    mul	r8, r1, r8
    mla	r8, r0, r6, r8
    asr	r8, r8, #8
    mul	r9, r1, r9
    mla	r9, r0, r7, r9
    asr	r9, r9, #8
    mul	sl, r1, sl
    mla	sl, r0, r8, sl
    asr	sl, sl, #8
    mul	fp, r1, fp
    mla	fp, r0, r9, fp
    asr	fp, fp, #8
    stmia	ip!, {r4, r5, r6, r7, r8, r9, sl, fp}
    mov	r2, sl
    mov	r3, fp
    subs	lr, lr, #1
    bne	 branch_08049004
    pop	{r8, r9, sl, fp, lr}
    bx	lr
branch_08049084:
	sub	r4, r4, #128	@ 0x80
    lsl	r4, r4, #1
    mov	r0, r4
    rsb	r1, r4, #256	@ 0x100
branch_08049094:
	ldm	ip, {r4, r5, r6, r7}
    mul	r8, r1, r4
    mla	r8, r0, r2, r8
    sub	r4, r4, r8, asr #8
    asr	r2, r8, #8
    mul	r8, r1, r5
    mla	r8, r0, r3, r8
    sub	r5, r5, r8, asr #8
    asr	r3, r8, #8
    mul	r8, r1, r6
    mla	r8, r0, r2, r8
    sub	r6, r6, r8, asr #8
    asr	r2, r8, #8
    mul	r8, r1, r7
    mla	r8, r0, r3, r8
    sub	r7, r7, r8, asr #8
    asr	r3, r8, #8
    stmia	ip!, {r4, r5, r6, r7}
    ldm	ip, {r4, r5, r6, r7}
    mul	r8, r1, r4
    mla	r8, r0, r2, r8
    sub	r4, r4, r8, asr #8
    asr	r2, r8, #8
    mul	r8, r1, r5
    mla	r8, r0, r3, r8
    sub	r5, r5, r8, asr #8
    asr	r3, r8, #8
    mul	r8, r1, r6
    mla	r8, r0, r2, r8
    sub	r6, r6, r8, asr #8
    asr	r2, r8, #8
    mul	r8, r1, r7
    mla	r8, r0, r3, r8
    sub	r7, r7, r8, asr #8
    asr	r3, r8, #8
    stmia	ip!, {r4, r5, r6, r7}
    subs	lr, lr, #1
    bne	 branch_08049094
    pop	{r8, r9, sl, fp, lr}
    bx	lr

.thumb
unaligned_thumb_func_start func_08049134
    ldr	r1, [pc, #8]	@ (0x8049140)
    adds	r1, #1
    bx	r1
    movs	r0, r0
    str	r0, [r6, #72]	@ 0x48
    lsls	r0, r0, #12
    strh	r0, [r4, #28]
    lsrs	r4, r0, #32

