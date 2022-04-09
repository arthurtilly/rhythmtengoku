asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004c50 \n\
/* 08004c50 */ PUSH {R4-R7, LR} \n\
/* 08004c52 */ SUB SP, 0x8 \n\
/* 08004c54 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08004c56 */ STR R3, [SP] \n\
/* 08004c58 */ ADD R2, SP, 0x4 \n\
/* 08004c5a */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08004c5c */ BL func_080049f0 \n\
/* 08004c60 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08004c62 */ LDR R5, [R6] \n\
/* 08004c64 */ ADDS R3, R5, 0x2 @ Set R3 to R5 + 0x2 \n\
/* 08004c66 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08004c68 */ LDRH R0, [R5] \n\
/* 08004c6a */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08004c6c */ BCS branch_08004c9a \n\
/* 08004c6e */ LDR R0, =0x1ff \n\
/* 08004c70 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08004c72 */ LDR R0, =0xfffffe00 \n\
/* 08004c74 */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_08004c76: \n\
/* 08004c76 */ LDRH R2, [R3, 0x2] \n\
/* 08004c78 */ LSLS R1, R2, 0x17 \n\
/* 08004c7a */ LSRS R1, R1, 0x17 \n\
/* 08004c7c */ LDR R0, [SP, 0x4] \n\
/* 08004c7e */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08004c80 */ ANDS R1, R7 @ Set R1 to R1 & R7 \n\
/* 08004c82 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08004c84 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08004c86 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08004c88 */ STRH R0, [R3, 0x2] \n\
/* 08004c8a */ LDRB R0, [R3] \n\
/* 08004c8c */ SUBS R0, 0x8 @ Subtract 0x8 from R0 \n\
/* 08004c8e */ STRB R0, [R3] \n\
/* 08004c90 */ ADDS R3, 0x6 @ Add 0x6 to R3 \n\
/* 08004c92 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08004c94 */ LDRH R0, [R5] \n\
/* 08004c96 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08004c98 */ BCC branch_08004c76 \n\
 \n\
branch_08004c9a: \n\
/* 08004c9a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08004c9c */ ADD SP, 0x8 \n\
/* 08004c9e */ POP {R4-R7} \n\
/* 08004ca0 */ POP {R1} \n\
/* 08004ca2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
