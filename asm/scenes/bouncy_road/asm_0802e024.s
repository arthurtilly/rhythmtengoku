asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e024 \n\
/* 0802e024 */ PUSH {R4-R6, LR} \n\
/* 0802e026 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802e028 */ LDR R0, [R2, 0x1C] \n\
/* 0802e02a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802e02c */ STR R0, [R2, 0x1C] \n\
/* 0802e02e */ LDR R5, [R2, 0x20] \n\
/* 0802e030 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0802e032 */ BCS branch_0802e05e \n\
/* 0802e034 */ LSRS R5, R5, 0x1 \n\
/* 0802e036 */ LSLS R4, R0, 0x1 \n\
/* 0802e038 */ SUBS R4, R4, R5 @ Set R4 to R4 - R5 \n\
/* 0802e03a */ LDRH R1, [R2, 0xA] \n\
/* 0802e03c */ LSLS R0, R1, 0x1 \n\
/* 0802e03e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802e040 */ LSLS R0, R0, 0x3 \n\
/* 0802e042 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802e044 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0802e046 */ BL __divsi3 \n\
/* 0802e04a */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802e04c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802e04e */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0802e050 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0802e052 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802e054 */ MULS R1, R5 @ Multiply R1 by R5 \n\
/* 0802e056 */ BL __divsi3 \n\
/* 0802e05a */ SUBS R0, R0, R6 @ Set R0 to R0 - R6 \n\
/* 0802e05c */ B branch_0802e072 \n\
 \n\
branch_0802e05e: \n\
/* 0802e05e */ LDRB R0, [R2, 0x4] \n\
/* 0802e060 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802e062 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0802e064 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0802e066 */ STRB R1, [R2, 0x4] \n\
/* 0802e068 */ LDR R0, [R2] \n\
/* 0802e06a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e06c */ BL func_08010040 \n\
/* 0802e070 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0802e072: \n\
/* 0802e072 */ POP {R4-R6} \n\
/* 0802e074 */ POP {R1} \n\
/* 0802e076 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
