asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08028330 \n\
/* 08028330 */ PUSH {R4, R5, LR} \n\
/* 08028332 */ SUB SP, 0x8 \n\
/* 08028334 */ LDR R5, =D_030055d0 \n\
/* 08028336 */ LDR R0, [R5] \n\
/* 08028338 */ MOVS R2, 0xFC @ Set R2 to 0xFC \n\
/* 0802833a */ LSLS R2, R2, 0x2 \n\
/* 0802833c */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802833e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08028340 */ LDRSB R0, [R1, R0] \n\
/* 08028342 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08028344 */ BLT branch_08028384 \n\
/* 08028346 */ LDR R2, =D_089e17a0 \n\
/* 08028348 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802834a */ LSLS R0, R1, 0x1 \n\
/* 0802834c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802834e */ LSLS R0, R0, 0x3 \n\
/* 08028350 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08028352 */ LDR R4, [R0] \n\
/* 08028354 */ BL func_0800c3b8 \n\
/* 08028358 */ LSLS R0, R0, 0x10 \n\
/* 0802835a */ LSRS R0, R0, 0x10 \n\
/* 0802835c */ LDR R1, =D_088c88e0 \n\
/* 0802835e */ LDRH R1, [R1] \n\
/* 08028360 */ STR R1, [SP] \n\
/* 08028362 */ LDR R1, =(D_03004b10 + 0x54) \n\
/* 08028364 */ STR R1, [SP, 0x4] \n\
/* 08028366 */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 08028368 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802836a */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0802836c */ BL func_08002050 \n\
/* 08028370 */ LDR R1, =func_08028318 \n\
/* 08028372 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028374 */ BL func_08005d38 \n\
/* 08028378 */ LDR R0, [R5] \n\
/* 0802837a */ MOVS R1, 0xFC @ Set R1 to 0xFC \n\
/* 0802837c */ LSLS R1, R1, 0x2 \n\
/* 0802837e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08028380 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08028382 */ STRB R1, [R0] \n\
 \n\
branch_08028384: \n\
/* 08028384 */ ADD SP, 0x8 \n\
/* 08028386 */ POP {R4, R5} \n\
/* 08028388 */ POP {R0} \n\
/* 0802838a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
