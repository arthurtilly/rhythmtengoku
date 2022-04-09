asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800eb1c \n\
/* 0800eb1c */ PUSH {R4-R6, LR} \n\
/* 0800eb1e */ LDR R4, =D_030053c0 \n\
/* 0800eb20 */ LDRB R0, [R4, 0x1] \n\
/* 0800eb22 */ LSRS R0, R0, 0x7 \n\
/* 0800eb24 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800eb26 */ BEQ branch_0800eba4 \n\
/* 0800eb28 */ BL func_0800c398 \n\
/* 0800eb2c */ MOVS R1, 0xBE @ Set R1 to 0xBE \n\
/* 0800eb2e */ LSLS R1, R1, 0x1 \n\
/* 0800eb30 */ ADDS R2, R4, R1 @ Set R2 to R4 + R1 \n\
/* 0800eb32 */ LDR R1, [R2] \n\
/* 0800eb34 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800eb36 */ STR R1, [R2] \n\
/* 0800eb38 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0800eb3a */ LSLS R2, R2, 0x1 \n\
/* 0800eb3c */ ADDS R0, R4, R2 @ Set R0 to R4 + R2 \n\
/* 0800eb3e */ LDR R5, [R0] \n\
/* 0800eb40 */ CMP R1, R5 @ Check R1 - R5 \n\
/* 0800eb42 */ BCC branch_0800eb58 \n\
/* 0800eb44 */ MOVS R6, 0xBA @ Set R6 to 0xBA \n\
/* 0800eb46 */ LSLS R6, R6, 0x1 \n\
/* 0800eb48 */ ADDS R0, R4, R6 @ Set R0 to R4 + R6 \n\
/* 0800eb4a */ LDRH R0, [R0] \n\
/* 0800eb4c */ BL func_0800bdf8 \n\
/* 0800eb50 */ B branch_0800eba4 \n\
\n\
.ltorg \n\
 \n\
branch_0800eb58: \n\
/* 0800eb58 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0800eb5a */ LSLS R0, R0, 0x1 \n\
/* 0800eb5c */ ADDS R2, R4, R0 @ Set R2 to R4 + R0 \n\
/* 0800eb5e */ LDRH R0, [R2] \n\
/* 0800eb60 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0800eb62 */ STRH R0, [R2] \n\
/* 0800eb64 */ LSLS R0, R0, 0x10 \n\
/* 0800eb66 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800eb68 */ BNE branch_0800eba4 \n\
/* 0800eb6a */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0800eb6c */ STRH R0, [R2] \n\
/* 0800eb6e */ LSRS R3, R1, 0x8 \n\
/* 0800eb70 */ LSRS R1, R5, 0x8 \n\
/* 0800eb72 */ MOVS R2, 0xB9 @ Set R2 to 0xB9 \n\
/* 0800eb74 */ LSLS R2, R2, 0x1 \n\
/* 0800eb76 */ ADDS R5, R4, R2 @ Set R5 to R4 + R2 \n\
/* 0800eb78 */ MOVS R6, 0xBA @ Set R6 to 0xBA \n\
/* 0800eb7a */ LSLS R6, R6, 0x1 \n\
/* 0800eb7c */ ADDS R0, R4, R6 @ Set R0 to R4 + R6 \n\
/* 0800eb7e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800eb80 */ LDRSH R0, [R0, R2] \n\
/* 0800eb82 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800eb84 */ LDRSH R2, [R5, R6] \n\
/* 0800eb86 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0800eb88 */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0800eb8a */ BL __divsi3 \n\
/* 0800eb8e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800eb90 */ LDRH R0, [R5] \n\
/* 0800eb92 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800eb94 */ LSLS R0, R0, 0x10 \n\
/* 0800eb96 */ LSRS R0, R0, 0x10 \n\
/* 0800eb98 */ BL func_0800bdf8 \n\
/* 0800eb9c */ LDRB R0, [R4, 0x1] \n\
/* 0800eb9e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0800eba0 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800eba2 */ STRB R0, [R4, 0x1] \n\
 \n\
branch_0800eba4: \n\
/* 0800eba4 */ POP {R4-R6} \n\
/* 0800eba6 */ POP {R0} \n\
/* 0800eba8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
