.section .text
.syntax unified

.include "include/gba.inc"

/*
    D_080482e0 and D_08048314 are arrays of the following type
    struct ARMFuncDef {
        u16 stopCode@
        u16 dedicatedMemory@
        void *armFunction@
    }@
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
_8048352:	ldr	r1, [pc, #12]	@ (0x8048360)
_8048354:	adds	r1, #1
_8048356:	bx	r1
_8048358:	strh	r0, [r4, #22]
_804835a:	lsrs	r4, r0, #32
_804835c:	strh	r4, [r2, #24]
_804835e:	lsrs	r4, r0, #32
_8048360:	strh	r4, [r4, #26]
_8048362:	lsrs	r4, r0, #32
_8048364:	push	{r4, r5, r6, r7, lr}
_8048366:	adds	r1, r0, #0
_8048368:	ldr	r4, [pc, #64]	@ (0x80483ac)
_804836a:	ldr	r6, [pc, #68]	@ (0x80483b0)
_804836c:	ldrh	r3, [r1, #0]
_804836e:	cmp	r3, #2
_8048370:	beq.n	0x804837e
_8048372:	ldrh	r7, [r1, #2]
_8048374:	ldr	r5, [r1, #4]
_8048376:	bl	0x8048384
_804837a:	adds	r1, #8
_804837c:	b.n	0x804836c
_804837e:	pop	{r4, r5, r6, r7}
_8048380:	pop	{r0}
_8048382:	bx	r0
_8048384:	adds	r0, r3, r6
_8048386:	str	r0, [r4, #0]
_8048388:	adds	r4, #4
_804838a:	adds	r7, #3
_804838c:	lsrs	r7, r7, #2
_804838e:	bne.n	0x8048392
_8048390:	bx	lr
_8048392:	ldr	r0, [r5, #0]
_8048394:	str	r0, [r6, #0]
_8048396:	adds	r5, #4
_8048398:	adds	r6, #4
_804839a:	subs	r7, #1
_804839c:	bne.n	0x8048392
_804839e:	bx	lr
_80483a0:	push	{r1}
_80483a2:	lsls	r0, r0, #2
_80483a4:	ldr	r1, [pc, #12]	@ (0x80483b4)
_80483a6:	ldr	r0, [r0, r1]
_80483a8:	pop	{r1}
_80483aa:	bx	r0
_80483ac:	ldrh	r0, [r2, r5]
_80483ae:	lsls	r0, r0, #12
_80483b0:	ldrh	r0, [r4, r6]
_80483b2:	lsls	r0, r0, #12
_80483b4:	ldrh	r0, [r2, r5]
_80483b6:	lsls	r0, r0, #12
_80483b8:	orrs	r0, r0
_80483ba:	bne.n	0x80483be
_80483bc:	bx	lr
_80483be:	push	{r4, r5, r6, r7, lr}
_80483c0:	mov	r4, r8
_80483c2:	mov	r5, r9
_80483c4:	mov	r6, sl
_80483c6:	mov	r7, fp
_80483c8:	push	{r4, r5, r6, r7}
_80483ca:	mov	r4, ip
_80483cc:	push	{r4}
_80483ce:	adds	r5, r0, #0
_80483d0:	push	{r1}
_80483d2:	ldr	r6, [pc, #888]	@ (0x804874c)
_80483d4:	ldr	r6, [r6, #0]
_80483d6:	ldr	r7, [r1, #4]
_80483d8:	ldr	r0, [r1, #20]
_80483da:	mov	r8, r0
_80483dc:	movs	r0, #3
_80483de:	ldrsb	r2, [r1, r0]
_80483e0:	movs	r0, #2
_80483e2:	ldrsb	r3, [r1, r0]
_80483e4:	ldrb	r0, [r1, #1]
_80483e6:	ldr	r4, [pc, #872]	@ (0x8048750)
_80483e8:	ldrh	r4, [r4, #0]
_80483ea:	adds	r0, r0, r4
_80483ec:	muls	r2, r0
_80483ee:	asrs	r2, r2, #7
_80483f0:	muls	r3, r0
_80483f2:	asrs	r3, r3, #7
_80483f4:	mov	r9, r2
_80483f6:	mov	sl, r3
_80483f8:	ldr	r0, [r1, #12]
_80483fa:	mov	fp, r0
_80483fc:	ldr	r0, [r1, #24]
_80483fe:	lsls	r0, r0, #10
_8048400:	orrs	r0, r5
_8048402:	mov	ip, r0
_8048404:	mov	r0, r8
_8048406:	ldr	r4, [r1, #16]
_8048408:	subs	r4, r4, r0
_804840a:	movs	r0, #3
_804840c:	bl	0x8048744
_8048410:	pop	{r1}
_8048412:	ldrb	r2, [r1, #0]
_8048414:	movs	r3, #1
_8048416:	bics	r2, r3
_8048418:	orrs	r2, r0
_804841a:	strb	r2, [r1, #0]
_804841c:	mov	r0, fp
_804841e:	str	r0, [r1, #12]
_8048420:	pop	{r4}
_8048422:	mov	ip, r4
_8048424:	pop	{r4, r5, r6, r7}
_8048426:	mov	r8, r4
_8048428:	mov	r9, r5
_804842a:	mov	sl, r6
_804842c:	mov	fp, r7
_804842e:	pop	{r4, r5, r6, r7}
_8048430:	pop	{r0}
_8048432:	bx	r0

.arm
func_08048434:
_8048434:	str	lr, [pc, #388]	@ 0x80485c0
_8048438:	str	r4, [pc, #388]	@ 0x80485c4
_804843c:	add	r0, fp, ip, lsr #8
_8048440:	cmp	r0, r8
_8048444:	bcs	0x8048510
_8048448:	ldm	r6, {r0, r1, r2, r3}
_804844c:	add	lr, r7, fp, lsr #14
_8048450:	ldrsb	r4, [lr], #1
_8048454:	ldrsb	r5, [lr]
_8048458:	sub	r5, r5, r4
_804845c:	and	lr, fp, #16320	@ 0x3fc0
_8048460:	mul	r5, lr, r5
_8048464:	add	r4, r4, r5, asr #14
_8048468:	mla	r0, r4, r9, r0
_804846c:	mla	r1, r4, sl, r1
_8048470:	add	fp, fp, ip, lsr #10
_8048474:	add	lr, r7, fp, lsr #14
_8048478:	ldrsb	r4, [lr], #1
_804847c:	ldrsb	r5, [lr]
_8048480:	sub	r5, r5, r4
_8048484:	and	lr, fp, #16320	@ 0x3fc0
_8048488:	mul	r5, lr, r5
_804848c:	add	r4, r4, r5, asr #14
_8048490:	mla	r2, r4, r9, r2
_8048494:	mla	r3, r4, sl, r3
_8048498:	add	fp, fp, ip, lsr #10
_804849c:	stmia	r6!, {r0, r1, r2, r3}
_80484a0:	ldm	r6, {r0, r1, r2, r3}
_80484a4:	add	lr, r7, fp, lsr #14
_80484a8:	ldrsb	r4, [lr], #1
_80484ac:	ldrsb	r5, [lr]
_80484b0:	sub	r5, r5, r4
_80484b4:	and	lr, fp, #16320	@ 0x3fc0
_80484b8:	mul	r5, lr, r5
_80484bc:	add	r4, r4, r5, asr #14
_80484c0:	mla	r0, r4, r9, r0
_80484c4:	mla	r1, r4, sl, r1
_80484c8:	add	fp, fp, ip, lsr #10
_80484cc:	add	lr, r7, fp, lsr #14
_80484d0:	ldrsb	r4, [lr], #1
_80484d4:	ldrsb	r5, [lr]
_80484d8:	sub	r5, r5, r4
_80484dc:	and	lr, fp, #16320	@ 0x3fc0
_80484e0:	mul	r5, lr, r5
_80484e4:	add	r4, r4, r5, asr #14
_80484e8:	mla	r2, r4, r9, r2
_80484ec:	mla	r3, r4, sl, r3
_80484f0:	add	fp, fp, ip, lsr #10
_80484f4:	stmia	r6!, {r0, r1, r2, r3}
_80484f8:	sub	ip, ip, #1
_80484fc:	ands	r0, ip, #255	@ 0xff
_8048500:	bne	0x804843c
_8048504:	mov	r0, #1
_8048508:	ldr	lr, [pc, #176]	@ 0x80485c0
_804850c:	bx	lr
_8048510:	ldr	r2, [pc, #172]	@ 0x80485c4
_8048514:	cmp	r2, #0
_8048518:	beq	0x804857c
_804851c:	mov	r3, #4
_8048520:	ldm	r6, {r0, r1}
_8048524:	add	lr, r7, fp, lsr #14
_8048528:	ldrsb	r4, [lr], #1
_804852c:	ldrsb	r5, [lr]
_8048530:	sub	r5, r5, r4
_8048534:	and	lr, fp, #16320	@ 0x3fc0
_8048538:	mul	r5, lr, r5
_804853c:	add	r4, r4, r5, asr #14
_8048540:	mla	r0, r4, r9, r0
_8048544:	mla	r1, r4, sl, r1
_8048548:	add	fp, fp, ip, lsr #10
_804854c:	stmia	r6!, {r0, r1}
_8048550:	cmp	fp, r8
_8048554:	addcs	fp, fp, r2
_8048558:	bcs	0x8048550
_804855c:	subs	r3, r3, #1
_8048560:	bne	0x8048520
_8048564:	sub	ip, ip, #1
_8048568:	ands	r0, ip, #255	@ 0xff
_804856c:	bne	0x804843c
_8048570:	mov	r0, #1
_8048574:	ldr	lr, [pc, #68]	@ 0x80485c0
_8048578:	bx	lr
_804857c:	ldm	r6, {r0, r1}
_8048580:	add	lr, r7, fp, lsr #14
_8048584:	ldrsb	r4, [lr], #1
_8048588:	ldrsb	r5, [lr]
_804858c:	sub	r5, r5, r4
_8048590:	and	lr, fp, #16320	@ 0x3fc0
_8048594:	mul	r5, lr, r5
_8048598:	add	r4, r4, r5, asr #14
_804859c:	mla	r0, r4, r9, r0
_80485a0:	mla	r1, r4, sl, r1
_80485a4:	add	fp, fp, ip, lsr #10
_80485a8:	stmia	r6!, {r0, r1}
_80485ac:	cmp	fp, r8
_80485b0:	bcc	0x804857c
_80485b4:	mov	r0, #0
_80485b8:	ldr	lr, [pc]	@ 0x80485c0
_80485bc:	bx	lr
_80485c0: 	.word 0
_80485c4:	.word 0

func_080485c8:
_80485c8:	str	lr, [pc, #364]	@ 0x804873c
_80485cc:	str	r4, [pc, #364]	@ 0x8048740
_80485d0:	add	r0, fp, ip, lsr #8
_80485d4:	cmp	r0, r8
_80485d8:	bcs	0x804868c
_80485dc:	ldm	r6, {r0, r1, r2, r3}
_80485e0:	add	lr, r7, fp, lsr #14
_80485e4:	ldrsb	r4, [lr], #1
_80485e8:	ldrsb	r5, [lr]
_80485ec:	sub	r5, r5, r4
_80485f0:	and	lr, fp, #16320	@ 0x3fc0
_80485f4:	mul	r5, lr, r5
_80485f8:	add	r4, r4, r5, asr #14
_80485fc:	mla	r0, r4, r9, r0
_8048600:	add	fp, fp, ip, lsr #10
_8048604:	add	lr, r7, fp, lsr #14
_8048608:	ldrsb	r4, [lr], #1
_804860c:	ldrsb	r5, [lr]
_8048610:	sub	r5, r5, r4
_8048614:	and	lr, fp, #16320	@ 0x3fc0
_8048618:	mul	r5, lr, r5
_804861c:	add	r4, r4, r5, asr #14
_8048620:	mla	r1, r4, r9, r1
_8048624:	add	fp, fp, ip, lsr #10
_8048628:	add	lr, r7, fp, lsr #14
_804862c:	ldrsb	r4, [lr], #1
_8048630:	ldrsb	r5, [lr]
_8048634:	sub	r5, r5, r4
_8048638:	and	lr, fp, #16320	@ 0x3fc0
_804863c:	mul	r5, lr, r5
_8048640:	add	r4, r4, r5, asr #14
_8048644:	mla	r2, r4, r9, r2
_8048648:	add	fp, fp, ip, lsr #10
_804864c:	add	lr, r7, fp, lsr #14
_8048650:	ldrsb	r4, [lr], #1
_8048654:	ldrsb	r5, [lr]
_8048658:	sub	r5, r5, r4
_804865c:	and	lr, fp, #16320	@ 0x3fc0
_8048660:	mul	r5, lr, r5
_8048664:	add	r4, r4, r5, asr #14
_8048668:	mla	r3, r4, r9, r3
_804866c:	add	fp, fp, ip, lsr #10
_8048670:	stmia	r6!, {r0, r1, r2, r3}
_8048674:	sub	ip, ip, #1
_8048678:	ands	r0, ip, #255	@ 0xff
_804867c:	bne	0x80485d0
_8048680:	mov	r0, #1
_8048684:	ldr	lr, [pc, #176]	@ 0x804873c
_8048688:	bx	lr
_804868c:	ldr	r2, [pc, #172]	@ 0x8048740
_8048690:	cmp	r2, #0
_8048694:	beq	0x80486f8
_8048698:	mov	r3, #4
_804869c:	ldr	r0, [r6]
_80486a0:	add	lr, r7, fp, lsr #14
_80486a4:	ldrsb	r4, [lr], #1
_80486a8:	ldrsb	r5, [lr]
_80486ac:	sub	r5, r5, r4
_80486b0:	and	lr, fp, #16320	@ 0x3fc0
_80486b4:	mul	r5, lr, r5
_80486b8:	add	r4, r4, r5, asr #14
_80486bc:	mla	r0, r4, r9, r0
_80486c0:	mla	r1, r4, sl, r1
_80486c4:	add	fp, fp, ip, lsr #10
_80486c8:	str	r0, [r6], #4
_80486cc:	cmp	fp, r8
_80486d0:	addcs	fp, fp, r2
_80486d4:	bcs	0x80486cc
_80486d8:	subs	r3, r3, #1
_80486dc:	bne	0x804869c
_80486e0:	sub	ip, ip, #1
_80486e4:	ands	r0, ip, #255	@ 0xff
_80486e8:	bne	0x80485d0
_80486ec:	mov	r0, #1
_80486f0:	ldr	lr, [pc, #68]	@ 0x804873c
_80486f4:	bx	lr
_80486f8:	ldr	r0, [r6]
_80486fc:	add	lr, r7, fp, lsr #14
_8048700:	ldrsb	r4, [lr], #1
_8048704:	ldrsb	r5, [lr]
_8048708:	sub	r5, r5, r4
_804870c:	and	lr, fp, #16320	@ 0x3fc0
_8048710:	mul	r5, lr, r5
_8048714:	add	r4, r4, r5, asr #14
_8048718:	mla	r0, r4, r9, r0
_804871c:	mla	r1, r4, sl, r1
_8048720:	add	fp, fp, ip, lsr #10
_8048724:	str	r0, [r6], #4
_8048728:	cmp	fp, r8
_804872c:	bcc	0x80486f8
_8048730:	mov	r0, #0
_8048734:	ldr	lr, [pc]	@ 0x804873c
_8048738:	bx	lr
_804873c:	.word 0
_8048740:	.word 0

.thumb
_8048744:	ldr	r1, [pc, #12]	@ (0x8048754)
_8048746:	adds	r1, #1
_8048748:	bx	r1
_804874a:	movs	r0, r0
_804874c:	str	r0, [r6, #72]	@ 0x48
_804874e:	lsls	r0, r0, #12
_8048750:	str	r4, [r5, #72]	@ 0x48
_8048752:	lsls	r0, r0, #12
_8048754:	strh	r0, [r4, #28]
_8048756:	lsrs	r4, r0, #32
_8048758:	orrs	r0, r0
_804875a:	bne.n	0x804875e
_804875c:	bx	lr
_804875e:	push	{r4, r5, r6, r7, lr}
_8048760:	mov	r4, r8
_8048762:	mov	r5, r9
_8048764:	mov	r6, sl
_8048766:	mov	r7, fp
_8048768:	push	{r4, r5, r6, r7}
_804876a:	mov	r4, ip
_804876c:	push	{r4}
_804876e:	adds	r4, r0, #0
_8048770:	ldr	r5, [pc, #980]	@ (0x8048b48)
_8048772:	ldr	r5, [r5, #0]
_8048774:	ldr	r0, [pc, #980]	@ (0x8048b4c)
_8048776:	ldr	r0, [r0, #0]
_8048778:	lsls	r0, r0, #2
_804877a:	ldr	r6, [pc, #980]	@ (0x8048b50)
_804877c:	ldr	r6, [r6, #0]
_804877e:	ldr	r7, [pc, #980]	@ (0x8048b54)
_8048780:	ldr	r7, [r7, #0]
_8048782:	adds	r6, r6, r0
_8048784:	ldr	r1, [pc, #976]	@ (0x8048b58)
_8048786:	ldr	r1, [r1, #0]
_8048788:	lsls	r1, r1, #2
_804878a:	adds	r0, r0, r1
_804878c:	ldr	r1, [pc, #972]	@ (0x8048b5c)
_804878e:	ldr	r1, [r1, #0]
_8048790:	lsls	r1, r1, #2
_8048792:	cmp	r0, r1
_8048794:	bcc.n	0x8048798
_8048796:	subs	r0, r0, r1
_8048798:	adds	r7, r7, r0
_804879a:	ldr	r0, [pc, #964]	@ (0x8048b60)
_804879c:	ldr	r0, [r0, #0]
_804879e:	ldr	r2, [pc, #964]	@ (0x8048b64)
_80487a0:	ldr	r2, [r2, #0]
_80487a2:	ldr	r3, [pc, #964]	@ (0x8048b68)
_80487a4:	ldr	r3, [r3, #0]
_80487a6:	lsrs	r0, r3
_80487a8:	mov	r8, r0
_80487aa:	ldr	r0, [pc, #960]	@ (0x8048b6c)
_80487ac:	ldr	r0, [r0, #0]
_80487ae:	lsls	r0, r0, #2
_80487b0:	mov	r9, r0
_80487b2:	ldr	r1, [pc, #956]	@ (0x8048b70)
_80487b4:	ldr	r1, [r1, #0]
_80487b6:	mov	sl, r1
_80487b8:	ldr	r1, [pc, #952]	@ (0x8048b74)
_80487ba:	ldr	r1, [r1, #0]
_80487bc:	mov	fp, r1
_80487be:	eors	r0, r0
_80487c0:	bl	0x8048b40
_80487c4:	pop	{r4}
_80487c6:	mov	ip, r4
_80487c8:	pop	{r4, r5, r6, r7}
_80487ca:	mov	r8, r4
_80487cc:	mov	r9, r5
_80487ce:	mov	sl, r6
_80487d0:	mov	fp, r7
_80487d2:	pop	{r4, r5, r6, r7}
_80487d4:	pop	{r0}
_80487d6:	bx	r0

.arm
func_080487d8:
_80487d8:	str	lr, [pc, #344]	@ 0x8048938
_80487dc:	str	sl, [pc, #344]	@ 0x804893c
_80487e0:	str	fp, [pc, #344]	@ 0x8048940
_80487e4:	add	sl, r9, sl
_80487e8:	add	fp, r9, fp
_80487ec:	mov	r9, r2
_80487f0:	mov	lr, r3
_80487f4:	mov	r1, r4
_80487f8:	ldr	r0, [pc, #324]	@ 0x8048944
_80487fc:	ldr	r2, [r0], #4
_8048800:	ldr	r3, [r0], #4
_8048804:	ldr	ip, [r0], #4
_8048808:	ldr	r4, [r0]
_804880c:	str	r1, [pc, #308]	@ 0x8048948
_8048810:	ldrsb	r0, [r6], #1
_8048814:	sub	r2, r2, r2, asr r9
_8048818:	add	r2, r0, r2
_804881c:	sub	r0, r0, r2, asr r9
_8048820:	sub	r3, r3, r3, asr lr
_8048824:	add	r3, r0, r3
_8048828:	mul	r0, r8, r3
_804882c:	ldrsb	r1, [r7], #1
_8048830:	sub	ip, ip, ip, asr r9
_8048834:	add	ip, r1, ip
_8048838:	sub	r1, r1, ip, asr r9
_804883c:	sub	r4, r4, r4, asr lr
_8048840:	add	r4, r1, r4
_8048844:	mul	r1, r8, r4
_8048848:	stmia	r5!, {r0, r1}
_804884c:	ldrsb	r0, [r6], #1
_8048850:	sub	r2, r2, r2, asr r9
_8048854:	add	r2, r0, r2
_8048858:	sub	r0, r0, r2, asr r9
_804885c:	sub	r3, r3, r3, asr lr
_8048860:	add	r3, r0, r3
_8048864:	mul	r0, r8, r3
_8048868:	ldrsb	r1, [r7], #1
_804886c:	sub	ip, ip, ip, asr r9
_8048870:	add	ip, r1, ip
_8048874:	sub	r1, r1, ip, asr r9
_8048878:	sub	r4, r4, r4, asr lr
_804887c:	add	r4, r1, r4
_8048880:	mul	r1, r8, r4
_8048884:	stmia	r5!, {r0, r1}
_8048888:	ldrsb	r0, [r6], #1
_804888c:	sub	r2, r2, r2, asr r9
_8048890:	add	r2, r0, r2
_8048894:	sub	r0, r0, r2, asr r9
_8048898:	sub	r3, r3, r3, asr lr
_804889c:	add	r3, r0, r3
_80488a0:	mul	r0, r8, r3
_80488a4:	ldrsb	r1, [r7], #1
_80488a8:	sub	ip, ip, ip, asr r9
_80488ac:	add	ip, r1, ip
_80488b0:	sub	r1, r1, ip, asr r9
_80488b4:	sub	r4, r4, r4, asr lr
_80488b8:	add	r4, r1, r4
_80488bc:	mul	r1, r8, r4
_80488c0:	stmia	r5!, {r0, r1}
_80488c4:	ldrsb	r0, [r6], #1
_80488c8:	sub	r2, r2, r2, asr r9
_80488cc:	add	r2, r0, r2
_80488d0:	sub	r0, r0, r2, asr r9
_80488d4:	sub	r3, r3, r3, asr lr
_80488d8:	add	r3, r0, r3
_80488dc:	mul	r0, r8, r3
_80488e0:	ldrsb	r1, [r7], #1
_80488e4:	sub	ip, ip, ip, asr r9
_80488e8:	add	ip, r1, ip
_80488ec:	sub	r1, r1, ip, asr r9
_80488f0:	sub	r4, r4, r4, asr lr
_80488f4:	add	r4, r1, r4
_80488f8:	mul	r1, r8, r4
_80488fc:	stmia	r5!, {r0, r1}
_8048900:	cmp	r6, sl
_8048904:	ldrcs	r6, [pc, #48]	@ 0x804893c
_8048908:	cmp	r7, fp
_804890c:	ldrcs	r7, [pc, #44]	@ 0x8048940
_8048910:	ldr	r1, [pc, #48]	@ 0x8048948
_8048914:	subs	r1, r1, #1
_8048918:	bne	0x804880c
_804891c:	ldr	r0, [pc, #32]	@ 0x8048944
_8048920:	str	r2, [r0], #4
_8048924:	str	r3, [r0], #4
_8048928:	str	ip, [r0], #4
_804892c:	str	r4, [r0]
_8048930:	ldr	lr, [pc]	@ 0x8048938
_8048934:	bx	lr
_8048938: 	.word 0
_804893c:	.word 0
_8048940:	.word 0
_8048944:	.word 0x03005600
_8048948:	andeq	r0, r0, r0

func_0804894c:
_804894c:	mov	r7, r2
_8048950:	mov	fp, r3
_8048954:	ldr	r0, [pc, #160]	@ 0x80489fc
_8048958:	ldr	r2, [r0], #4
_804895c:	ldr	r3, [r0], #4
_8048960:	add	sl, r9, sl
_8048964:	ldrsb	r0, [r6], #1
_8048968:	sub	r2, r2, r2, asr r7
_804896c:	add	r2, r0, r2
_8048970:	sub	r0, r0, r2, asr r7
_8048974:	sub	r3, r3, r3, asr fp
_8048978:	add	r3, r0, r3
_804897c:	mul	r0, r8, r3
_8048980:	ldrsb	r1, [r6], #1
_8048984:	sub	r2, r2, r2, asr r7
_8048988:	add	r2, r1, r2
_804898c:	sub	r1, r1, r2, asr r7
_8048990:	sub	r3, r3, r3, asr fp
_8048994:	add	r3, r1, r3
_8048998:	mul	r1, r8, r3
_804899c:	stmia	r5!, {r0, r1}
_80489a0:	ldrsb	r0, [r6], #1
_80489a4:	sub	r2, r2, r2, asr r7
_80489a8:	add	r2, r0, r2
_80489ac:	sub	r0, r0, r2, asr r7
_80489b0:	sub	r3, r3, r3, asr fp
_80489b4:	add	r3, r0, r3
_80489b8:	mul	r0, r8, r3
_80489bc:	ldrsb	r1, [r6], #1
_80489c0:	sub	r2, r2, r2, asr r7
_80489c4:	add	r2, r1, r2
_80489c8:	sub	r1, r1, r2, asr r7
_80489cc:	sub	r3, r3, r3, asr fp
_80489d0:	add	r3, r1, r3
_80489d4:	mul	r1, r8, r3
_80489d8:	stmia	r5!, {r0, r1}
_80489dc:	cmp	r6, sl
_80489e0:	subcs	r6, r6, r9
_80489e4:	subs	r4, r4, #1
_80489e8:	bne	0x8048964
_80489ec:	ldr	r0, [pc, #8]	@ 0x80489fc
_80489f0:	str	r2, [r0], #4
_80489f4:	str	r3, [r0], #4
_80489f8:	bx	lr
_80489fc:	.word 0x03005600

.thumb
_8048a00:	orrs	r0, r0
_8048a02:	bne.n	0x8048a06
_8048a04:	bx	lr
_8048a06:	push	{r4, r5, r6, r7, lr}
_8048a08:	mov	r4, r8
_8048a0a:	mov	r5, r9
_8048a0c:	mov	r6, sl
_8048a0e:	mov	r7, fp
_8048a10:	push	{r4, r5, r6, r7}
_8048a12:	mov	r4, ip
_8048a14:	push	{r4}
_8048a16:	adds	r6, r0, #0
_8048a18:	ldr	r7, [pc, #348]	@ (0x8048b78)
_8048a1a:	ldr	r7, [r7, #0]
_8048a1c:	ldr	r0, [pc, #348]	@ (0x8048b7c)
_8048a1e:	ldr	r0, [r0, #0]
_8048a20:	lsls	r0, r0, #2
_8048a22:	ldr	r1, [pc, #348]	@ (0x8048b80)
_8048a24:	ldr	r1, [r1, #0]
_8048a26:	adds	r4, r1, #0
_8048a28:	ldr	r2, [pc, #344]	@ (0x8048b84)
_8048a2a:	ldr	r2, [r2, #0]
_8048a2c:	adds	r5, r2, #0
_8048a2e:	adds	r1, r1, r0
_8048a30:	adds	r2, r2, r0
_8048a32:	mov	r8, r1
_8048a34:	mov	r9, r2
_8048a36:	ldr	r0, [pc, #336]	@ (0x8048b88)
_8048a38:	ldr	r0, [r0, #0]
_8048a3a:	lsls	r0, r0, #2
_8048a3c:	ldr	r1, [pc, #332]	@ (0x8048b8c)
_8048a3e:	ldr	r1, [r1, #0]
_8048a40:	adds	r0, r0, r1
_8048a42:	mov	sl, r0
_8048a44:	ldr	r0, [pc, #328]	@ (0x8048b90)
_8048a46:	mov	fp, r0
_8048a48:	ldr	r0, [pc, #328]	@ (0x8048b94)
_8048a4a:	mov	ip, r0
_8048a4c:	movs	r0, #1
_8048a4e:	bl	0x8048b40
_8048a52:	pop	{r4}
_8048a54:	mov	ip, r4
_8048a56:	pop	{r4, r5, r6, r7}
_8048a58:	mov	r8, r4
_8048a5a:	mov	r9, r5
_8048a5c:	mov	sl, r6
_8048a5e:	mov	fp, r7
_8048a60:	pop	{r4, r5, r6, r7}
_8048a62:	pop	{r0}
_8048a64:	bx	r0
_8048a66:	movs	r0, r0

.arm
func_08048a68:
_8048a68:	str	r4, [pc, #128]	@ 0x8048af0
_8048a6c:	str	r5, [pc, #128]	@ 0x8048af4
_8048a70:	ldm	r7!, {r0, r1, r2, r3}
_8048a74:	and	r0, ip, r0, lsr #7
_8048a78:	and	r1, ip, r1, lsr #7
_8048a7c:	and	r2, ip, r2, lsr #7
_8048a80:	and	r3, ip, r3, lsr #7
_8048a84:	ldrb	r0, [fp, r0]
_8048a88:	ldrb	r1, [fp, r1]
_8048a8c:	ldrb	r2, [fp, r2]
_8048a90:	ldrb	r3, [fp, r3]
_8048a94:	orr	r4, r0, r2, lsl #8
_8048a98:	orr	r5, r1, r3, lsl #8
_8048a9c:	ldm	r7!, {r0, r1, r2, r3}
_8048aa0:	and	r0, ip, r0, lsr #7
_8048aa4:	and	r1, ip, r1, lsr #7
_8048aa8:	and	r2, ip, r2, lsr #7
_8048aac:	and	r3, ip, r3, lsr #7
_8048ab0:	ldrb	r0, [fp, r0]
_8048ab4:	ldrb	r1, [fp, r1]
_8048ab8:	ldrb	r2, [fp, r2]
_8048abc:	ldrb	r3, [fp, r3]
_8048ac0:	orr	r4, r4, r0, lsl #16
_8048ac4:	orr	r4, r4, r2, lsl #24
_8048ac8:	orr	r5, r5, r1, lsl #16
_8048acc:	orr	r5, r5, r3, lsl #24
_8048ad0:	str	r4, [r8], #4
_8048ad4:	str	r5, [r9], #4
_8048ad8:	cmp	r8, sl
_8048adc:	ldrcs	r8, [pc, #12]	@ 0x8048af0
_8048ae0:	ldrcs	r9, [pc, #12]	@ 0x8048af4
_8048ae4:	subs	r6, r6, #1
_8048ae8:	bne	0x8048a70
_8048aec:	bx	lr
_8048af0:	.word 0
_8048af4:	.word 0

func_08048af8:
_8048af8:	ldm	r7!, {r0, r1, r2, r3}
_8048afc:	and	r0, ip, r0, lsr #7
_8048b00:	and	r1, ip, r1, lsr #7
_8048b04:	and	r2, ip, r2, lsr #7
_8048b08:	and	r3, ip, r3, lsr #7
_8048b0c:	ldrb	r0, [fp, r0]
_8048b10:	ldrb	r1, [fp, r1]
_8048b14:	ldrb	r2, [fp, r2]
_8048b18:	ldrb	r3, [fp, r3]
_8048b1c:	orr	r0, r0, r1, lsl #8
_8048b20:	orr	r0, r0, r2, lsl #16
_8048b24:	orr	r0, r0, r3, lsl #24
_8048b28:	str	r0, [r8], #4
_8048b2c:	cmp	r8, sl
_8048b30:	movcs	r8, r4
_8048b34:	subs	r6, r6, #1
_8048b38:	bne	0x8048af8
_8048b3c:	bx	lr

.thumb
_8048b40:	ldr	r1, [pc, #84]	@ (0x8048b98)
_8048b42:	adds	r1, #1
_8048b44:	bx	r1
_8048b46:	movs	r0, r0
_8048b48:	str	r0, [r6, #72]	@ 0x48
_8048b4a:	lsls	r0, r0, #12
_8048b4c:	ldrh	r0, [r0, r5]
_8048b4e:	lsls	r0, r0, #12
_8048b50:	ldrsb	r4, [r7, r0]
_8048b52:	lsls	r0, r0, #12
_8048b54:	str	r0, [r7, #72]	@ 0x48
_8048b56:	lsls	r0, r0, #12
_8048b58:	ldrsb	r0, [r6, r0]
_8048b5a:	lsls	r0, r0, #12
_8048b5c:	ldrh	r4, [r4, r4]
_8048b5e:	lsls	r0, r0, #12
_8048b60:	str	r4, [r4, #72]	@ 0x48
_8048b62:	lsls	r0, r0, #12
_8048b64:	ldrsb	r4, [r6, r0]
_8048b66:	lsls	r0, r0, #12
_8048b68:	ldrh	r0, [r1, r5]
_8048b6a:	lsls	r0, r0, #12
_8048b6c:	ldrh	r4, [r4, r4]
_8048b6e:	lsls	r0, r0, #12
_8048b70:	ldrsb	r4, [r7, r0]
_8048b72:	lsls	r0, r0, #12
_8048b74:	str	r0, [r7, #72]	@ 0x48
_8048b76:	lsls	r0, r0, #12
_8048b78:	str	r0, [r6, #72]	@ 0x48
_8048b7a:	lsls	r0, r0, #12
_8048b7c:	ldrh	r0, [r0, r5]
_8048b7e:	lsls	r0, r0, #12
_8048b80:	ldrsb	r4, [r7, r0]
_8048b82:	lsls	r0, r0, #12
_8048b84:	str	r0, [r7, #72]	@ 0x48
_8048b86:	lsls	r0, r0, #12
_8048b88:	ldrh	r4, [r4, r4]
_8048b8a:	lsls	r0, r0, #12
_8048b8c:	ldrsb	r4, [r7, r0]
_8048b8e:	lsls	r0, r0, #12
_8048b90:	ldrsb	r0, [r4, r4]
_8048b92:	lsls	r0, r0, #12
_8048b94:	lsls	r7, r7, #15
_8048b96:	movs	r0, r0
_8048b98:	strh	r0, [r4, #28]
_8048b9a:	lsrs	r4, r0, #32
_8048b9c:	orrs	r0, r0
_8048b9e:	bne.n	0x8048ba2
_8048ba0:	bx	lr
_8048ba2:	push	{r4, r5, r6, r7, lr}
_8048ba4:	mov	r4, r8
_8048ba6:	mov	r5, r9
_8048ba8:	mov	r6, sl
_8048baa:	mov	r7, fp
_8048bac:	push	{r4, r5, r6, r7}
_8048bae:	mov	r4, ip
_8048bb0:	push	{r4}
_8048bb2:	adds	r5, r0, #0
_8048bb4:	lsls	r5, r5, #2
_8048bb6:	ldr	r6, [pc, #404]	@ (0x8048d4c)
_8048bb8:	ldr	r6, [r6, #0]
_8048bba:	ldr	r0, [r1, #4]
_8048bbc:	ldr	r7, [r1, #12]
_8048bbe:	lsrs	r7, r7, #14
_8048bc0:	adds	r7, r7, r0
_8048bc2:	ldr	r3, [r1, #16]
_8048bc4:	lsrs	r3, r3, #14
_8048bc6:	ldr	r2, [r1, #20]
_8048bc8:	lsrs	r2, r2, #14
_8048bca:	subs	r3, r3, r2
_8048bcc:	adds	r2, r2, r0
_8048bce:	mov	sl, r2
_8048bd0:	mov	fp, r3
_8048bd2:	movs	r0, #3
_8048bd4:	ldrsb	r2, [r1, r0]
_8048bd6:	movs	r0, #2
_8048bd8:	ldrsb	r3, [r1, r0]
_8048bda:	ldrb	r0, [r1, #1]
_8048bdc:	ldr	r4, [pc, #368]	@ (0x8048d50)
_8048bde:	ldrh	r4, [r4, #0]
_8048be0:	adds	r0, r0, r4
_8048be2:	muls	r2, r0
_8048be4:	asrs	r2, r2, #7
_8048be6:	muls	r3, r0
_8048be8:	asrs	r3, r3, #7
_8048bea:	mov	r8, r2
_8048bec:	mov	r9, r3
_8048bee:	push	{r1}
_8048bf0:	movs	r0, #2
_8048bf2:	bl	0x8048d44
_8048bf6:	pop	{r1}
_8048bf8:	ldrb	r2, [r1, #0]
_8048bfa:	movs	r3, #1
_8048bfc:	bics	r2, r3
_8048bfe:	orrs	r2, r0
_8048c00:	strb	r2, [r1, #0]
_8048c02:	ldr	r0, [r1, #4]
_8048c04:	subs	r7, r7, r0
_8048c06:	lsls	r7, r7, #14
_8048c08:	str	r7, [r1, #12]
_8048c0a:	pop	{r4}
_8048c0c:	mov	ip, r4
_8048c0e:	pop	{r4, r5, r6, r7}
_8048c10:	mov	r8, r4
_8048c12:	mov	r9, r5
_8048c14:	mov	sl, r6
_8048c16:	mov	fp, r7
_8048c18:	pop	{r4, r5, r6, r7}
_8048c1a:	pop	{r0}
_8048c1c:	bx	r0
_8048c1e:	movs	r0, r0

.arm
func_08048c20:
_8048c20:	str	lr, [pc, #280]	@ 0x8048d40
_8048c24:	ands	r0, r7, #3
_8048c28:	bne	0x8048cfc
_8048c2c:	sub	r4, sl, r7
_8048c30:	cmp	r4, r5
_8048c34:	movcs	r4, r5
_8048c38:	lsrs	r4, r4, #2
_8048c3c:	beq	0x8048cfc
_8048c40:	sub	r5, r5, r4, lsl #2
_8048c44:	tst	r4, #1
_8048c48:	addne	r4, r4, #1
_8048c4c:	bne	0x8048ca0
_8048c50:	ldr	ip, [r7], #4
_8048c54:	ldm	r6, {r0, r1, r2, r3}
_8048c58:	lsl	lr, ip, #24
_8048c5c:	asr	lr, lr, #24
_8048c60:	mla	r0, r8, lr, r0
_8048c64:	mla	r1, r9, lr, r1
_8048c68:	lsl	lr, ip, #16
_8048c6c:	asr	lr, lr, #24
_8048c70:	mla	r2, r8, lr, r2
_8048c74:	mla	r3, r9, lr, r3
_8048c78:	stmia	r6!, {r0, r1, r2, r3}
_8048c7c:	ldm	r6, {r0, r1, r2, r3}
_8048c80:	lsl	lr, ip, #8
_8048c84:	asr	lr, lr, #24
_8048c88:	mla	r0, r8, lr, r0
_8048c8c:	mla	r1, r9, lr, r1
_8048c90:	asr	lr, ip, #24
_8048c94:	mla	r2, r8, lr, r2
_8048c98:	mla	r3, r9, lr, r3
_8048c9c:	stmia	r6!, {r0, r1, r2, r3}
_8048ca0:	ldr	ip, [r7], #4
_8048ca4:	ldm	r6, {r0, r1, r2, r3}
_8048ca8:	lsl	lr, ip, #24
_8048cac:	asr	lr, lr, #24
_8048cb0:	mla	r0, r8, lr, r0
_8048cb4:	mla	r1, r9, lr, r1
_8048cb8:	lsl	lr, ip, #16
_8048cbc:	asr	lr, lr, #24
_8048cc0:	mla	r2, r8, lr, r2
_8048cc4:	mla	r3, r9, lr, r3
_8048cc8:	stmia	r6!, {r0, r1, r2, r3}
_8048ccc:	ldm	r6, {r0, r1, r2, r3}
_8048cd0:	lsl	lr, ip, #8
_8048cd4:	asr	lr, lr, #24
_8048cd8:	mla	r0, r8, lr, r0
_8048cdc:	mla	r1, r9, lr, r1
_8048ce0:	asr	lr, ip, #24
_8048ce4:	mla	r2, r8, lr, r2
_8048ce8:	mla	r3, r9, lr, r3
_8048cec:	stmia	r6!, {r0, r1, r2, r3}
_8048cf0:	subs	r4, r4, #2
_8048cf4:	bne	0x8048c50
_8048cf8:	b	0x8048d14
_8048cfc:	ldrsb	ip, [r7], #1
_8048d00:	ldm	r6, {r0, r1}
_8048d04:	mla	r0, r8, ip, r0
_8048d08:	mla	r1, r9, ip, r1
_8048d0c:	stmia	r6!, {r0, r1}
_8048d10:	sub	r5, r5, #1
_8048d14:	cmp	r7, sl
_8048d18:	bcc	0x8048d2c
_8048d1c:	mov	r0, #0
_8048d20:	cmp	fp, #0
_8048d24:	beq	0x8048d38
_8048d28:	add	r7, r7, fp
_8048d2c:	cmp	r5, #0
_8048d30:	bne	0x8048c24
_8048d34:	mov	r0, #1
_8048d38:	ldr	lr, [pc]	@ 0x8048d40
_8048d3c:	bx	lr
_8048d40:	andeq	r0, r0, r0

.thumb
_8048d44:	ldr	r1, [pc, #12]	@ (0x8048d54)
_8048d46:	adds	r1, #1
_8048d48:	bx	r1
_8048d4a:	movs	r0, r0
_8048d4c:	str	r0, [r6, #72]	@ 0x48
_8048d4e:	lsls	r0, r0, #12
_8048d50:	str	r4, [r5, #72]	@ 0x48
_8048d52:	lsls	r0, r0, #12
_8048d54:	strh	r0, [r4, #28]
_8048d56:	lsrs	r4, r0, #32
_8048d58:	orrs	r0, r0
_8048d5a:	bne.n	0x8048d5e
_8048d5c:	bx	lr
_8048d5e:	push	{r4, r5, r6, r7, lr}
_8048d60:	mov	r4, r8
_8048d62:	mov	r5, r9
_8048d64:	mov	r6, sl
_8048d66:	mov	r7, fp
_8048d68:	push	{r4, r5, r6, r7}
_8048d6a:	mov	r4, ip
_8048d6c:	push	{r4}
_8048d6e:	adds	r5, r0, #0
_8048d70:	push	{r1}
_8048d72:	ldr	r6, [pc, #576]	@ (0x8048fb4)
_8048d74:	ldr	r6, [r6, #0]
_8048d76:	ldr	r7, [r1, #4]
_8048d78:	ldr	r0, [r1, #20]
_8048d7a:	mov	r8, r0
_8048d7c:	movs	r0, #3
_8048d7e:	ldrsb	r2, [r1, r0]
_8048d80:	movs	r0, #2
_8048d82:	ldrsb	r3, [r1, r0]
_8048d84:	ldrb	r0, [r1, #1]
_8048d86:	ldr	r4, [pc, #560]	@ (0x8048fb8)
_8048d88:	ldrh	r4, [r4, #0]
_8048d8a:	adds	r0, r0, r4
_8048d8c:	muls	r2, r0
_8048d8e:	asrs	r2, r2, #7
_8048d90:	muls	r3, r0
_8048d92:	asrs	r3, r3, #7
_8048d94:	mov	r9, r2
_8048d96:	mov	sl, r3
_8048d98:	ldr	r0, [r1, #12]
_8048d9a:	mov	fp, r0
_8048d9c:	ldr	r0, [r1, #24]
_8048d9e:	lsls	r0, r0, #10
_8048da0:	orrs	r0, r5
_8048da2:	mov	ip, r0
_8048da4:	mov	r0, r8
_8048da6:	ldr	r5, [r1, #16]
_8048da8:	subs	r5, r5, r0
_8048daa:	movs	r0, #4
_8048dac:	bl	0x8048fac
_8048db0:	pop	{r1}
_8048db2:	ldrb	r2, [r1, #0]
_8048db4:	movs	r3, #1
_8048db6:	bics	r2, r3
_8048db8:	orrs	r2, r0
_8048dba:	strb	r2, [r1, #0]
_8048dbc:	mov	r0, fp
_8048dbe:	str	r0, [r1, #12]
_8048dc0:	pop	{r4}
_8048dc2:	mov	ip, r4
_8048dc4:	pop	{r4, r5, r6, r7}
_8048dc6:	mov	r8, r4
_8048dc8:	mov	r9, r5
_8048dca:	mov	sl, r6
_8048dcc:	mov	fp, r7
_8048dce:	pop	{r4, r5, r6, r7}
_8048dd0:	pop	{r0}
_8048dd2:	bx	r0

.arm
func_08048dd4:
_8048dd4:	add	r0, fp, ip, lsr #8
_8048dd8:	cmp	r0, r8
_8048ddc:	bcs	0x8048e54
_8048de0:	ldm	r6, {r0, r1, r2, r3}
_8048de4:	add	r4, r7, fp, lsr #14
_8048de8:	ldrsb	r4, [r4]
_8048dec:	mla	r0, r4, r9, r0
_8048df0:	mla	r1, r4, sl, r1
_8048df4:	add	fp, fp, ip, lsr #10
_8048df8:	add	r4, r7, fp, lsr #14
_8048dfc:	ldrsb	r4, [r4]
_8048e00:	mla	r2, r4, r9, r2
_8048e04:	mla	r3, r4, sl, r3
_8048e08:	add	fp, fp, ip, lsr #10
_8048e0c:	stmia	r6!, {r0, r1, r2, r3}
_8048e10:	ldm	r6, {r0, r1, r2, r3}
_8048e14:	add	r4, r7, fp, lsr #14
_8048e18:	ldrsb	r4, [r4]
_8048e1c:	mla	r0, r4, r9, r0
_8048e20:	mla	r1, r4, sl, r1
_8048e24:	add	fp, fp, ip, lsr #10
_8048e28:	add	r4, r7, fp, lsr #14
_8048e2c:	ldrsb	r4, [r4]
_8048e30:	mla	r2, r4, r9, r2
_8048e34:	mla	r3, r4, sl, r3
_8048e38:	add	fp, fp, ip, lsr #10
_8048e3c:	stmia	r6!, {r0, r1, r2, r3}
_8048e40:	sub	ip, ip, #1
_8048e44:	ands	r0, ip, #255	@ 0xff
_8048e48:	bne	0x8048dd4
_8048e4c:	mov	r0, #1
_8048e50:	bx	lr
_8048e54:	cmp	r5, #0
_8048e58:	beq	0x8048ea4
_8048e5c:	mov	r3, #4
_8048e60:	ldm	r6, {r0, r1}
_8048e64:	add	r4, r7, fp, lsr #14
_8048e68:	ldrsb	r4, [r4]
_8048e6c:	mla	r0, r4, r9, r0
_8048e70:	mla	r1, r4, sl, r1
_8048e74:	add	fp, fp, ip, lsr #10
_8048e78:	stmia	r6!, {r0, r1}
_8048e7c:	cmp	fp, r8
_8048e80:	addcs	fp, fp, r5
_8048e84:	bcs	0x8048e7c
_8048e88:	subs	r3, r3, #1
_8048e8c:	bne	0x8048e60
_8048e90:	sub	ip, ip, #1
_8048e94:	ands	r0, ip, #255	@ 0xff
_8048e98:	bne	0x8048dd4
_8048e9c:	mov	r0, #1
_8048ea0:	bx	lr
_8048ea4:	ldm	r6, {r0, r1}
_8048ea8:	add	r4, r7, fp, lsr #14
_8048eac:	ldrsb	r4, [r4]
_8048eb0:	mla	r0, r4, r9, r0
_8048eb4:	mla	r1, r4, sl, r1
_8048eb8:	add	fp, fp, ip, lsr #10
_8048ebc:	stmia	r6!, {r0, r1}
_8048ec0:	cmp	fp, r8
_8048ec4:	bcc	0x8048ea4
_8048ec8:	mov	r0, #0
_8048ecc:	bx	lr

func_08048ed0:
_8048ed0:	add	r0, fp, ip, lsr #8
_8048ed4:	cmp	r0, r8
_8048ed8:	bcs	0x8048f38
_8048edc:	ldm	r6, {r0, r1, r2, r3}
_8048ee0:	add	r4, r7, fp, lsr #14
_8048ee4:	ldrsb	r4, [r4]
_8048ee8:	mla	r0, r4, r9, r0
_8048eec:	add	fp, fp, ip, lsr #10
_8048ef0:	add	r4, r7, fp, lsr #14
_8048ef4:	ldrsb	r4, [r4]
_8048ef8:	mla	r1, r4, r9, r2
_8048efc:	add	fp, fp, ip, lsr #10
_8048f00:	add	r4, r7, fp, lsr #14
_8048f04:	ldrsb	r4, [r4]
_8048f08:	mla	r2, r4, r9, r2
_8048f0c:	add	fp, fp, ip, lsr #10
_8048f10:	add	r4, r7, fp, lsr #14
_8048f14:	ldrsb	r4, [r4]
_8048f18:	mla	r3, r4, r9, r2
_8048f1c:	add	fp, fp, ip, lsr #10
_8048f20:	stmia	r6!, {r0, r1, r2, r3}
_8048f24:	sub	ip, ip, #1
_8048f28:	ands	r0, ip, #255	@ 0xff
_8048f2c:	bne	0x8048ed0
_8048f30:	mov	r0, #1
_8048f34:	bx	lr
_8048f38:	cmp	r5, #0
_8048f3c:	beq	0x8048f84
_8048f40:	mov	r3, #4
_8048f44:	ldm	r6, {r0}
_8048f48:	add	r4, r7, fp, lsr #14
_8048f4c:	ldrsb	r4, [r4]
_8048f50:	mla	r0, r4, r9, r0
_8048f54:	add	fp, fp, ip, lsr #10
_8048f58:	stmia	r6!, {r0}
_8048f5c:	cmp	fp, r8
_8048f60:	addcs	fp, fp, r5
_8048f64:	bcs	0x8048f5c
_8048f68:	subs	r3, r3, #1
_8048f6c:	bne	0x8048f44
_8048f70:	sub	ip, ip, #1
_8048f74:	ands	r0, ip, #255	@ 0xff
_8048f78:	bne	0x8048ed0
_8048f7c:	mov	r0, #1
_8048f80:	bx	lr
_8048f84:	ldm	r6, {r0}
_8048f88:	add	r4, r7, fp, lsr #14
_8048f8c:	ldrsb	r4, [r4]
_8048f90:	mla	r0, r4, r9, r0
_8048f94:	add	fp, fp, ip, lsr #10
_8048f98:	stmia	r6!, {r0}
_8048f9c:	cmp	fp, r8
_8048fa0:	bcc	0x8048f84
_8048fa4:	mov	r0, #0
_8048fa8:	bx	lr

.thumb
_8048fac:	ldr	r1, [pc, #12]	@ (0x8048fbc)
_8048fae:	adds	r1, #1
_8048fb0:	bx	r1
_8048fb2:	movs	r0, r0
_8048fb4:	str	r0, [r6, #72]	@ 0x48
_8048fb6:	lsls	r0, r0, #12
_8048fb8:	str	r4, [r5, #72]	@ 0x48
_8048fba:	lsls	r0, r0, #12
_8048fbc:	strh	r0, [r4, #28]
_8048fbe:	lsrs	r4, r0, #32
_8048fc0:	orrs	r0, r0
_8048fc2:	bne.n	0x8048fc6
_8048fc4:	bx	lr
_8048fc6:	push	{r4, r5, r6, r7, lr}
_8048fc8:	ldrb	r4, [r1, #0]
_8048fca:	adds	r5, r0, #0
_8048fcc:	ldr	r2, [r1, #4]
_8048fce:	ldr	r3, [r1, #8]
_8048fd0:	ldr	r6, [pc, #360]	@ (0x804913c)
_8048fd2:	ldr	r6, [r6, #0]
_8048fd4:	push	{r1}
_8048fd6:	movs	r0, #5
_8048fd8:	bl	0x8049134
_8048fdc:	pop	{r1}
_8048fde:	str	r2, [r1, #4]
_8048fe0:	str	r3, [r1, #8]
_8048fe2:	pop	{r4, r5, r6, r7, pc}

.arm
func_08048fe4:
_8048fe4:	push	{r8, r9, sl, fp, lr}
_8048fe8:	mov	lr, r5
_8048fec:	mov	ip, r6
_8048ff0:	cmp	r4, #128	@ 0x80
_8048ff4:	bcs	0x8049084
_8048ff8:	lsl	r4, r4, #1
_8048ffc:	mov	r0, r4
_8049000:	rsb	r1, r4, #256	@ 0x100
_8049004:	ldm	ip, {r4, r5, r6, r7, r8, r9, sl, fp}
_8049008:	mul	r4, r1, r4
_804900c:	mla	r4, r0, r2, r4
_8049010:	asr	r4, r4, #8
_8049014:	mul	r5, r1, r5
_8049018:	mla	r5, r0, r3, r5
_804901c:	asr	r5, r5, #8
_8049020:	mul	r6, r1, r6
_8049024:	mla	r6, r0, r4, r6
_8049028:	asr	r6, r6, #8
_804902c:	mul	r7, r1, r7
_8049030:	mla	r7, r0, r5, r7
_8049034:	asr	r7, r7, #8
_8049038:	mul	r8, r1, r8
_804903c:	mla	r8, r0, r6, r8
_8049040:	asr	r8, r8, #8
_8049044:	mul	r9, r1, r9
_8049048:	mla	r9, r0, r7, r9
_804904c:	asr	r9, r9, #8
_8049050:	mul	sl, r1, sl
_8049054:	mla	sl, r0, r8, sl
_8049058:	asr	sl, sl, #8
_804905c:	mul	fp, r1, fp
_8049060:	mla	fp, r0, r9, fp
_8049064:	asr	fp, fp, #8
_8049068:	stmia	ip!, {r4, r5, r6, r7, r8, r9, sl, fp}
_804906c:	mov	r2, sl
_8049070:	mov	r3, fp
_8049074:	subs	lr, lr, #1
_8049078:	bne	0x8049004
_804907c:	pop	{r8, r9, sl, fp, lr}
_8049080:	bx	lr
_8049084:	sub	r4, r4, #128	@ 0x80
_8049088:	lsl	r4, r4, #1
_804908c:	mov	r0, r4
_8049090:	rsb	r1, r4, #256	@ 0x100
_8049094:	ldm	ip, {r4, r5, r6, r7}
_8049098:	mul	r8, r1, r4
_804909c:	mla	r8, r0, r2, r8
_80490a0:	sub	r4, r4, r8, asr #8
_80490a4:	asr	r2, r8, #8
_80490a8:	mul	r8, r1, r5
_80490ac:	mla	r8, r0, r3, r8
_80490b0:	sub	r5, r5, r8, asr #8
_80490b4:	asr	r3, r8, #8
_80490b8:	mul	r8, r1, r6
_80490bc:	mla	r8, r0, r2, r8
_80490c0:	sub	r6, r6, r8, asr #8
_80490c4:	asr	r2, r8, #8
_80490c8:	mul	r8, r1, r7
_80490cc:	mla	r8, r0, r3, r8
_80490d0:	sub	r7, r7, r8, asr #8
_80490d4:	asr	r3, r8, #8
_80490d8:	stmia	ip!, {r4, r5, r6, r7}
_80490dc:	ldm	ip, {r4, r5, r6, r7}
_80490e0:	mul	r8, r1, r4
_80490e4:	mla	r8, r0, r2, r8
_80490e8:	sub	r4, r4, r8, asr #8
_80490ec:	asr	r2, r8, #8
_80490f0:	mul	r8, r1, r5
_80490f4:	mla	r8, r0, r3, r8
_80490f8:	sub	r5, r5, r8, asr #8
_80490fc:	asr	r3, r8, #8
_8049100:	mul	r8, r1, r6
_8049104:	mla	r8, r0, r2, r8
_8049108:	sub	r6, r6, r8, asr #8
_804910c:	asr	r2, r8, #8
_8049110:	mul	r8, r1, r7
_8049114:	mla	r8, r0, r3, r8
_8049118:	sub	r7, r7, r8, asr #8
_804911c:	asr	r3, r8, #8
_8049120:	stmia	ip!, {r4, r5, r6, r7}
_8049124:	subs	lr, lr, #1
_8049128:	bne	0x8049094
_804912c:	pop	{r8, r9, sl, fp, lr}
_8049130:	bx	lr

.thumb
_8049134:	ldr	r1, [pc, #8]	@ (0x8049140)
_8049136:	adds	r1, #1
_8049138:	bx	r1
_804913a:	movs	r0, r0
_804913c:	str	r0, [r6, #72]	@ 0x48
_804913e:	lsls	r0, r0, #12
_8049140:	strh	r0, [r4, #28]
_8049142:	lsrs	r4, r0, #32

