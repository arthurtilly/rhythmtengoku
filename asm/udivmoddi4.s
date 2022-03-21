.section .text
.syntax unified
.thumb
.thumb_func

.include "include/gba.inc"

@ different from the one in libgcc

glabel __udivmoddi4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r2, #0
	adds r6, r3, #0
	mov sl, r0
	mov r8, r1
	cmp r6, #0
	beq _0804ED1A
	b _0804EF68
_0804ED1A:
	cmp r7, r8
	bls _0804EDF4
	ldr r0, _0804ED30 @ =0x0000FFFF
	cmp r7, r0
	bhi _0804ED34
	movs r1, #0
	cmp r7, #0xff
	bls _0804ED3E
	movs r1, #8
	b _0804ED3E
	.align 2, 0
_0804ED30: .4byte 0x0000FFFF
_0804ED34:
	ldr r0, _0804EDE8 @ =0x00FFFFFF
	movs r1, #0x18
	cmp r7, r0
	bhi _0804ED3E
	movs r1, #0x10
_0804ED3E:
	ldr r0, _0804EDEC @ =__clz_tab
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	beq _0804ED6A
	lsls r7, r2
	mov r0, r8
	lsls r0, r2
	mov r8, r0
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	mov r3, sl
	lsls r3, r2
	mov sl, r3
_0804ED6A:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0804EDF0 @ =0x0000FFFF
	ands r0, r7
	str r0, [sp]
	mov r0, r8
	mov r1, sb
	bl __umodsi3
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl __udivsi3
	adds r6, r0, #0
	ldr r1, [sp]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0804EDAA
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0804EDAA
	cmp r4, r2
	bhs _0804EDAA
	subs r6, #1
	adds r4, r4, r7
_0804EDAA:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl __udivsi3
	adds r1, r0, #0
	ldr r4, [sp]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0804EDF0 @ =0x0000FFFF
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0804EDE2
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0804EDE2
	cmp r5, r2
	bhs _0804EDE2
	subs r1, #1
_0804EDE2:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0804EF6E
	.align 2, 0
_0804EDE8: .4byte 0x00FFFFFF
_0804EDEC: .4byte __clz_tab
_0804EDF0: .4byte 0x0000FFFF
_0804EDF4:
	cmp r2, #0
	bne _0804EE02
	movs r0, #1
	movs r1, #0
	bl __udivsi3
	adds r7, r0, #0
_0804EE02:
	adds r1, r7, #0
	ldr r0, _0804EE14 @ =0x0000FFFF
	cmp r7, r0
	bhi _0804EE18
	movs r2, #0
	cmp r7, #0xff
	bls _0804EE22
	movs r2, #8
	b _0804EE22
	.align 2, 0
_0804EE14: .4byte 0x0000FFFF
_0804EE18:
	ldr r0, _0804EE40 @ =0x00FFFFFF
	movs r2, #0x18
	cmp r7, r0
	bhi _0804EE22
	movs r2, #0x10
_0804EE22:
	ldr r0, _0804EE44 @ =__clz_tab
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0804EE48
	mov r0, r8
	subs r0, r0, r7
	mov r8, r0
	movs r1, #1
	str r1, [sp, #4]
	b _0804EEE6
	.align 2, 0
_0804EE40: .4byte 0x00FFFFFF
_0804EE44: .4byte __clz_tab
_0804EE48:
	subs r1, r1, r2
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _0804EF64 @ =0x0000FFFF
	ands r1, r7
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl __umodsi3
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl __udivsi3
	adds r6, r0, #0
	ldr r2, [sp, #8]
	adds r1, r6, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0804EEA2
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0804EEA2
	cmp r4, r1
	bhs _0804EEA2
	subs r6, #1
	adds r4, r4, r7
_0804EEA2:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl __udivsi3
	adds r2, r0, #0
	ldr r4, [sp, #8]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0804EF64 @ =0x0000FFFF
	mov r3, r8
	ands r3, r0
	orrs r5, r3
	cmp r5, r1
	bhs _0804EEDC
	subs r2, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0804EEDC
	cmp r5, r1
	bhs _0804EEDC
	subs r2, #1
	adds r5, r5, r7
_0804EEDC:
	lsls r6, r6, #0x10
	orrs r6, r2
	str r6, [sp, #4]
	subs r1, r5, r1
	mov r8, r1
_0804EEE6:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0804EF64 @ =0x0000FFFF
	ands r0, r7
	str r0, [sp, #0xc]
	mov r0, r8
	mov r1, sb
	bl __umodsi3
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl __udivsi3
	adds r6, r0, #0
	ldr r1, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0804EF26
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0804EF26
	cmp r4, r2
	bhs _0804EF26
	subs r6, #1
	adds r4, r4, r7
_0804EF26:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl __udivsi3
	adds r1, r0, #0
	ldr r4, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0804EF64 @ =0x0000FFFF
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0804EF5E
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0804EF5E
	cmp r5, r2
	bhs _0804EF5E
	subs r1, #1
_0804EF5E:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0804F0BE
	.align 2, 0
_0804EF64: .4byte 0x0000FFFF
_0804EF68:
	cmp r6, r8
	bls _0804EF74
	movs r6, #0
_0804EF6E:
	movs r4, #0
	str r4, [sp, #4]
	b _0804F0BE
_0804EF74:
	adds r1, r6, #0
	ldr r0, _0804EF88 @ =0x0000FFFF
	cmp r6, r0
	bhi _0804EF8C
	movs r2, #0
	cmp r6, #0xff
	bls _0804EF96
	movs r2, #8
	b _0804EF96
	.align 2, 0
_0804EF88: .4byte 0x0000FFFF
_0804EF8C:
	ldr r0, _0804EFB8 @ =0x00FFFFFF
	movs r2, #0x18
	cmp r6, r0
	bhi _0804EF96
	movs r2, #0x10
_0804EF96:
	ldr r0, _0804EFBC @ =__clz_tab
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0804EFC4
	cmp r8, r6
	bhi _0804EFB0
	cmp sl, r7
	blo _0804EFC0
_0804EFB0:
	movs r6, #1
	mov r1, sl
	b _0804F0B8
	.align 2, 0
_0804EFB8: .4byte 0x00FFFFFF
_0804EFBC: .4byte __clz_tab
_0804EFC0:
	movs r6, #0
	b _0804F0BA
_0804EFC4:
	subs r1, r1, r2
	lsls r6, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r6, r0
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r6, #0x10
	mov sb, r0
	ldr r1, _0804F0D4 @ =0x0000FFFF
	ands r1, r6
	str r1, [sp, #0x10]
	adds r0, r5, #0
	mov r1, sb
	bl __umodsi3
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl __udivsi3
	adds r3, r0, #0
	ldr r2, [sp, #0x10]
	adds r1, r3, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0804F026
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	blo _0804F026
	cmp r4, r1
	bhs _0804F026
	subs r3, #1
	adds r4, r4, r6
_0804F026:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	str r3, [sp, #0x1c]
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl __udivsi3
	adds r2, r0, #0
	ldr r4, [sp, #0x10]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0804F0D4 @ =0x0000FFFF
	mov r4, r8
	ands r4, r0
	orrs r5, r4
	ldr r3, [sp, #0x1c]
	cmp r5, r1
	bhs _0804F064
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	blo _0804F064
	cmp r5, r1
	bhs _0804F064
	subs r2, #1
	adds r5, r5, r6
_0804F064:
	lsls r6, r3, #0x10
	orrs r6, r2
	subs r1, r5, r1
	mov r8, r1
	ldr r0, _0804F0D4 @ =0x0000FFFF
	mov sb, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #0x10
	adds r0, r7, #0
	mov r2, sb
	ands r0, r2
	lsrs r2, r7, #0x10
	adds r5, r1, #0
	muls r5, r0, r5
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	muls r1, r0, r1
	muls r3, r2, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bhs _0804F09C
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0804F09C:
	lsrs r0, r4, #0x10
	adds r3, r3, r0
	mov r1, sb
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r1, r0, r5
	cmp r3, r8
	bhi _0804F0B6
	cmp r3, r8
	bne _0804F0BA
	cmp r1, sl
	bls _0804F0BA
_0804F0B6:
	subs r6, #1
_0804F0B8:
	subs r0, r1, r7
_0804F0BA:
	movs r2, #0
	str r2, [sp, #4]
_0804F0BE:
	str r6, [sp, #0x14]
	ldr r3, [sp, #4]
	str r3, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804F0D4: .4byte 0x0000FFFF
