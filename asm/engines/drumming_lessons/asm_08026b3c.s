asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026b3c \n\
/* 08026b3c */ PUSH {R4-R7, LR} \n\
/* 08026b3e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08026b40 */ LSLS R1, R1, 0x10 \n\
/* 08026b42 */ LSRS R6, R1, 0x10 \n\
/* 08026b44 */ LSLS R2, R2, 0x10 \n\
/* 08026b46 */ LSRS R7, R2, 0x10 \n\
/* 08026b48 */ LDR R5, =gCurrentEngineData \n\
/* 08026b4a */ LDR R2, [R5] \n\
/* 08026b4c */ LDR R1, =0x000013f8 \n\
/* 08026b4e */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08026b50 */ LDRB R0, [R0] \n\
/* 08026b52 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026b54 */ BNE branch_08026bae \n\
/* 08026b56 */ LDR R4, =D_03004afc \n\
/* 08026b58 */ LDRH R1, [R3, 0x2] \n\
/* 08026b5a */ LDRH R0, [R4] \n\
/* 08026b5c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08026b5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026b60 */ BEQ branch_08026b76 \n\
/* 08026b62 */ LDR R0, =0x000013d4 \n\
/* 08026b64 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08026b66 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 08026b68 */ LDRSH R0, [R3, R1] \n\
/* 08026b6a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026b6c */ MULS R1, R6 @ Multiply R1 by R6 \n\
/* 08026b6e */ ASRS R1, R1, 0x8 \n\
/* 08026b70 */ LDR R0, [R2] \n\
/* 08026b72 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026b74 */ STR R0, [R2] \n\
 \n\
branch_08026b76: \n\
/* 08026b76 */ LDRH R1, [R3, 0x4] \n\
/* 08026b78 */ LDRH R0, [R4] \n\
/* 08026b7a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08026b7c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026b7e */ BEQ branch_08026b96 \n\
/* 08026b80 */ LDR R2, [R5] \n\
/* 08026b82 */ LDR R0, =0x000013d4 \n\
/* 08026b84 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08026b86 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08026b88 */ LDRSH R0, [R3, R1] \n\
/* 08026b8a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026b8c */ MULS R1, R7 @ Multiply R1 by R7 \n\
/* 08026b8e */ ASRS R1, R1, 0x8 \n\
/* 08026b90 */ LDR R0, [R2] \n\
/* 08026b92 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08026b94 */ STR R0, [R2] \n\
 \n\
branch_08026b96: \n\
/* 08026b96 */ LDR R0, [R5] \n\
/* 08026b98 */ LDR R4, =0x000013d4 \n\
/* 08026b9a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08026b9c */ LDR R0, [R0] \n\
/* 08026b9e */ LDR R1, =0xffffff00 \n\
/* 08026ba0 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08026ba2 */ LSLS R2, R2, 0x3 \n\
/* 08026ba4 */ BL clamp_int32 \n\
/* 08026ba8 */ LDR R1, [R5] \n\
/* 08026baa */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08026bac */ STR R0, [R1] \n\
 \n\
branch_08026bae: \n\
/* 08026bae */ POP {R4-R7} \n\
/* 08026bb0 */ POP {R0} \n\
/* 08026bb2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
