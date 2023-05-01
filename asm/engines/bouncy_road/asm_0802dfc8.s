asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802dfc8 \n\
/* 0802dfc8 */ PUSH {R4-R6, LR} \n\
/* 0802dfca */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802dfcc */ LDR R0, [R2, 0x1C] \n\
/* 0802dfce */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802dfd0 */ STR R0, [R2, 0x1C] \n\
/* 0802dfd2 */ LDR R5, [R2, 0x20] \n\
/* 0802dfd4 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0802dfd6 */ BCS branch_0802e010 \n\
/* 0802dfd8 */ LSRS R5, R5, 0x1 \n\
/* 0802dfda */ SUBS R6, R0, R5 @ Set R6 to R0 - R5 \n\
/* 0802dfdc */ LDRH R1, [R2, 0xA] \n\
/* 0802dfde */ MOVS R0, 0x32 @ Set R0 to 0x32 \n\
/* 0802dfe0 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802dfe2 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0802dfe4 */ BL __divsi3 \n\
/* 0802dfe8 */ LDR R1, =gCurrentEngineData \n\
/* 0802dfea */ LDR R1, [R1] \n\
/* 0802dfec */ MOVS R2, 0xEC @ Set R2 to 0xEC \n\
/* 0802dfee */ LSLS R2, R2, 0x1 \n\
/* 0802dff0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802dff2 */ LDRH R1, [R1] \n\
/* 0802dff4 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802dff6 */ MULS R4, R0 @ Multiply R4 by R0 \n\
/* 0802dff8 */ ASRS R4, R4, 0x8 \n\
/* 0802dffa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802dffc */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0802dffe */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0802e000 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802e002 */ MULS R1, R5 @ Multiply R1 by R5 \n\
/* 0802e004 */ BL __divsi3 \n\
/* 0802e008 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0802e00a */ B branch_0802e01c \n\
\n\
.ltorg \n\
 \n\
branch_0802e010: \n\
/* 0802e010 */ LDRB R1, [R2, 0x4] \n\
/* 0802e012 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0802e014 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802e016 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802e018 */ STRB R0, [R2, 0x4] \n\
/* 0802e01a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0802e01c: \n\
/* 0802e01c */ POP {R4-R6} \n\
/* 0802e01e */ POP {R1} \n\
/* 0802e020 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
