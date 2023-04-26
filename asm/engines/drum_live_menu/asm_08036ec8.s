asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036ec8 \n\
/* 08036ec8 */ PUSH {R4-R6, LR} \n\
/* 08036eca */ LDR R0, =gCurrentEngineData \n\
/* 08036ecc */ LDR R3, [R0] \n\
/* 08036ece */ LDR R4, [R3, 0x10] \n\
/* 08036ed0 */ LDR R5, [R3, 0xC] \n\
/* 08036ed2 */ SUBS R1, R4, R5 @ Set R1 to R4 - R5 \n\
/* 08036ed4 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08036ed6 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08036ed8 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08036eda */ BGE branch_08036ede \n\
/* 08036edc */ NEGS R2, R1 @ Set R2 to -R1 \n\
 \n\
branch_08036ede: \n\
/* 08036ede */ LDR R0, =0x1ff \n\
/* 08036ee0 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08036ee2 */ BGT branch_08036ef0 \n\
/* 08036ee4 */ STR R4, [R3, 0xC] \n\
/* 08036ee6 */ B branch_08036ef8 \n\
\n\
.ltorg \n\
 \n\
branch_08036ef0: \n\
/* 08036ef0 */ LSLS R0, R1, 0x5 \n\
/* 08036ef2 */ ASRS R0, R0, 0x8 \n\
/* 08036ef4 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 08036ef6 */ STR R0, [R3, 0xC] \n\
 \n\
branch_08036ef8: \n\
/* 08036ef8 */ LDR R1, =D_03004b10 \n\
/* 08036efa */ LDR R2, [R6] \n\
/* 08036efc */ LDR R0, [R2, 0xC] \n\
/* 08036efe */ ASRS R0, R0, 0x8 \n\
/* 08036f00 */ STRH R0, [R1, 0x12] \n\
/* 08036f02 */ LDR R1, [R2, 0xC] \n\
/* 08036f04 */ ASRS R1, R1, 0x8 \n\
/* 08036f06 */ LDRB R0, [R2, 0x8] \n\
/* 08036f08 */ LSLS R0, R0, 0x8 \n\
/* 08036f0a */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08036f0c */ STRH R1, [R2, 0x14] \n\
/* 08036f0e */ POP {R4-R6} \n\
/* 08036f10 */ POP {R0} \n\
/* 08036f12 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
