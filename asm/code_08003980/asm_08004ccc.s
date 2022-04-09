asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004ccc \n\
/* 08004ccc */ PUSH {R4-R7, LR} \n\
/* 08004cce */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08004cd0 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08004cd2 */ PUSH {R6, R7} \n\
/* 08004cd4 */ SUB SP, 0x4 \n\
/* 08004cd6 */ LDR R5, [SP, 0x20] \n\
/* 08004cd8 */ LDR R4, [SP, 0x24] \n\
/* 08004cda */ LSLS R2, R2, 0x10 \n\
/* 08004cdc */ LSRS R2, R2, 0x10 \n\
/* 08004cde */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08004ce0 */ LSLS R3, R3, 0x10 \n\
/* 08004ce2 */ LSRS R7, R3, 0x10 \n\
/* 08004ce4 */ STR R4, [SP] \n\
/* 08004ce6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004ce8 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08004cea */ BL func_080049f0 \n\
/* 08004cee */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08004cf0 */ LDR R5, [R6] \n\
/* 08004cf2 */ ADDS R3, R5, 0x2 @ Set R3 to R5 + 0x2 \n\
/* 08004cf4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08004cf6 */ LDRH R0, [R5] \n\
/* 08004cf8 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08004cfa */ BCS branch_08004d2a \n\
/* 08004cfc */ LDR R0, =0x1ff \n\
/* 08004cfe */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08004d00 */ LDR R0, =0xfffffe00 \n\
/* 08004d02 */ MOV R9, R0 @ Set R9 to R0 \n\
 \n\
branch_08004d04: \n\
/* 08004d04 */ LDRH R2, [R3, 0x2] \n\
/* 08004d06 */ LSLS R1, R2, 0x17 \n\
/* 08004d08 */ LSRS R1, R1, 0x17 \n\
/* 08004d0a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08004d0c */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08004d0e */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08004d10 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08004d12 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08004d14 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08004d16 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08004d18 */ STRH R0, [R3, 0x2] \n\
/* 08004d1a */ LDRB R0, [R3] \n\
/* 08004d1c */ SUBS R0, R0, R7 @ Set R0 to R0 - R7 \n\
/* 08004d1e */ STRB R0, [R3] \n\
/* 08004d20 */ ADDS R3, 0x6 @ Add 0x6 to R3 \n\
/* 08004d22 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08004d24 */ LDRH R0, [R5] \n\
/* 08004d26 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08004d28 */ BCC branch_08004d04 \n\
 \n\
branch_08004d2a: \n\
/* 08004d2a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08004d2c */ ADD SP, 0x4 \n\
/* 08004d2e */ POP {R3, R4} \n\
/* 08004d30 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08004d32 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08004d34 */ POP {R4-R7} \n\
/* 08004d36 */ POP {R1} \n\
/* 08004d38 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
