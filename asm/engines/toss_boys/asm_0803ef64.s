asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803ef64 \n\
/* 0803ef64 */ PUSH {R4-R7, LR} \n\
/* 0803ef66 */ LDR R6, =gCurrentEngineData \n\
/* 0803ef68 */ LDR R3, [R6] \n\
/* 0803ef6a */ LDR R0, =0x36e \n\
/* 0803ef6c */ ADDS R4, R3, R0 @ Set R4 to R3 + R0 \n\
/* 0803ef6e */ LDRH R1, [R4] \n\
/* 0803ef70 */ MOVS R0, 0xDC @ Set R0 to 0xDC \n\
/* 0803ef72 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0803ef74 */ ASRS R0, R0, 0x8 \n\
/* 0803ef76 */ STRH R0, [R4] \n\
/* 0803ef78 */ LDR R1, =0x37d \n\
/* 0803ef7a */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0803ef7c */ LDRB R0, [R0] \n\
/* 0803ef7e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803ef80 */ BEQ branch_0803effc \n\
/* 0803ef82 */ MOVS R7, 0xDB @ Set R7 to 0xDB \n\
/* 0803ef84 */ LSLS R7, R7, 0x2 \n\
/* 0803ef86 */ ADDS R0, R3, R7 @ Set R0 to R3 + R7 \n\
/* 0803ef88 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ef8a */ LDRSH R0, [R0, R1] \n\
/* 0803ef8c */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0803ef8e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0803ef90 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 0803ef92 */ BL clamp_int32 \n\
/* 0803ef96 */ LDR R2, [R6] \n\
/* 0803ef98 */ LDR R3, =0x36a \n\
/* 0803ef9a */ ADDS R4, R2, R3 @ Set R4 to R2 + R3 \n\
/* 0803ef9c */ LDRH R1, [R4] \n\
/* 0803ef9e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803efa0 */ STRH R1, [R4] \n\
/* 0803efa2 */ LDR R1, =D_08935fcc \n\
/* 0803efa4 */ LDR R5, =0x37e \n\
/* 0803efa6 */ ADDS R0, R2, R5 @ Set R0 to R2 + R5 \n\
/* 0803efa8 */ LDRB R0, [R0] \n\
/* 0803efaa */ LSLS R0, R0, 0x1 \n\
/* 0803efac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803efae */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803efb0 */ LDRSH R1, [R0, R7] \n\
/* 0803efb2 */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 0803efb4 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0803efb6 */ MULS R3, R0 @ Multiply R3 by R0 \n\
/* 0803efb8 */ ASRS R3, R3, 0x8 \n\
/* 0803efba */ MOVS R0, 0xDA @ Set R0 to 0xDA \n\
/* 0803efbc */ LSLS R0, R0, 0x2 \n\
/* 0803efbe */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0803efc0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803efc2 */ LDRSB R0, [R2, R0] \n\
/* 0803efc4 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0803efc6 */ LSLS R1, R1, 0x1 \n\
/* 0803efc8 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803efca */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0803efcc */ SUBS R2, R2, R3 @ Set R2 to R2 - R3 \n\
/* 0803efce */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803efd0 */ LDRSH R3, [R4, R7] \n\
/* 0803efd2 */ BL set_affine_stretch_rotation \n\
/* 0803efd6 */ LDR R1, [R6] \n\
/* 0803efd8 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803efda */ LDRB R0, [R1] \n\
/* 0803efdc */ ADDS R0, 0x18 @ Add 0x18 to R0 \n\
/* 0803efde */ STRB R0, [R1] \n\
/* 0803efe0 */ B branch_0803f02e \n\
\n\
.ltorg \n\
 \n\
branch_0803effc: \n\
/* 0803effc */ LDR R0, =0x36a \n\
/* 0803effe */ ADDS R2, R3, R0 @ Set R2 to R3 + R0 \n\
/* 0803f000 */ MOVS R1, 0xDB @ Set R1 to 0xDB \n\
/* 0803f002 */ LSLS R1, R1, 0x2 \n\
/* 0803f004 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0803f006 */ LDRH R0, [R0] \n\
/* 0803f008 */ LDRH R7, [R2] \n\
/* 0803f00a */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0803f00c */ STRH R0, [R2] \n\
/* 0803f00e */ SUBS R1, 0x4 @ Subtract 0x4 from R1 \n\
/* 0803f010 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0803f012 */ LDRB R0, [R0] \n\
/* 0803f014 */ LSLS R0, R0, 0x18 \n\
/* 0803f016 */ ASRS R0, R0, 0x18 \n\
/* 0803f018 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0803f01a */ LSLS R3, R3, 0x1 \n\
/* 0803f01c */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0803f01e */ LDRH R4, [R4] \n\
/* 0803f020 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803f022 */ LSLS R1, R1, 0x10 \n\
/* 0803f024 */ ASRS R1, R1, 0x10 \n\
/* 0803f026 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803f028 */ LDRSH R2, [R2, R7] \n\
/* 0803f02a */ BL set_affine_scale_rotation \n\
 \n\
branch_0803f02e: \n\
/* 0803f02e */ POP {R4-R7} \n\
/* 0803f030 */ POP {R0} \n\
/* 0803f032 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
