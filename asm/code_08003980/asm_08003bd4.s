asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003bd4 \n\
/* 08003bd4 */ PUSH {R4-R6, LR} \n\
/* 08003bd6 */ LDR R6, [SP, 0x10] \n\
/* 08003bd8 */ LDRB R4, [R0] \n\
/* 08003bda */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08003bdc */ ORRS R4, R5 @ Set R4 to R4 | R5 \n\
/* 08003bde */ MOVS R5, 0x3 @ Set R5 to 0x3 \n\
/* 08003be0 */ NEGS R5, R5 @ Set R5 to -R5 \n\
/* 08003be2 */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 08003be4 */ SUBS R5, 0x2 @ Subtract 0x2 from R5 \n\
/* 08003be6 */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 08003be8 */ STRB R4, [R0] \n\
/* 08003bea */ LDR R4, =0xffff \n\
/* 08003bec */ STRH R4, [R0, 0x4] \n\
/* 08003bee */ STR R1, [R0, 0x8] \n\
/* 08003bf0 */ STR R1, [R0, 0xC] \n\
/* 08003bf2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08003bf4 */ STRH R1, [R0, 0x10] \n\
/* 08003bf6 */ STRH R2, [R0, 0x12] \n\
/* 08003bf8 */ STR R3, [R0, 0x18] \n\
/* 08003bfa */ STR R6, [R0, 0x1C] \n\
/* 08003bfc */ STR R1, [R0, 0x20] \n\
/* 08003bfe */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08003c00 */ LSLS R1, R1, 0x1 \n\
/* 08003c02 */ STRH R1, [R0, 0x6] \n\
/* 08003c04 */ LDRB R2, [R0, 0x3] \n\
/* 08003c06 */ MOVS R1, 0x3F @ Set R1 to 0x3F \n\
/* 08003c08 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08003c0a */ STRB R1, [R0, 0x3] \n\
/* 08003c0c */ POP {R4-R6} \n\
/* 08003c0e */ POP {R0} \n\
/* 08003c10 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
