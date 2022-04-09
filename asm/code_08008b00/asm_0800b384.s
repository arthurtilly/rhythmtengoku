asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b384 \n\
/* 0800b384 */ PUSH {R4, R5, LR} \n\
/* 0800b386 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800b388 */ LSLS R1, R1, 0x10 \n\
/* 0800b38a */ LSRS R1, R1, 0x10 \n\
/* 0800b38c */ LSLS R2, R2, 0x10 \n\
/* 0800b38e */ LSRS R4, R2, 0x10 \n\
/* 0800b390 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800b392 */ BEQ branch_0800b3c2 \n\
/* 0800b394 */ STRH R1, [R3, 0x18] \n\
/* 0800b396 */ STRH R4, [R3, 0x1A] \n\
/* 0800b398 */ STRH R1, [R3, 0x1C] \n\
/* 0800b39a */ LDRH R2, [R3, 0x20] \n\
/* 0800b39c */ LSLS R0, R4, 0x10 \n\
/* 0800b39e */ ASRS R0, R0, 0x10 \n\
/* 0800b3a0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800b3a2 */ STRH R0, [R3, 0x1E] \n\
/* 0800b3a4 */ STRH R1, [R3, 0x22] \n\
/* 0800b3a6 */ MOVS R1, 0x26 @ Set R1 to 0x26 \n\
/* 0800b3a8 */ LDRSH R0, [R3, R1] \n\
/* 0800b3aa */ MOVS R5, 0x2C @ Set R5 to 0x2C \n\
/* 0800b3ac */ LDRSH R1, [R3, R5] \n\
/* 0800b3ae */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800b3b0 */ MOVS R5, 0x30 @ Set R5 to 0x30 \n\
/* 0800b3b2 */ LDRSH R1, [R3, R5] \n\
/* 0800b3b4 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800b3b6 */ MOVS R5, 0x10 @ Set R5 to 0x10 \n\
/* 0800b3b8 */ LDRSH R1, [R3, R5] \n\
/* 0800b3ba */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800b3bc */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0800b3be */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0800b3c0 */ STRH R2, [R3, 0x24] \n\
 \n\
branch_0800b3c2: \n\
/* 0800b3c2 */ POP {R4, R5} \n\
/* 0800b3c4 */ POP {R0} \n\
/* 0800b3c6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
