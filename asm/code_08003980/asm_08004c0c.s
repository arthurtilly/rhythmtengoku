asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004c0c \n\
/* 08004c0c */ PUSH {R4, LR} \n\
/* 08004c0e */ SUB SP, 0x4 \n\
/* 08004c10 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08004c12 */ STR R3, [SP] \n\
/* 08004c14 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004c16 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08004c18 */ BL func_080049f0 \n\
/* 08004c1c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08004c1e */ LDR R3, [R4] \n\
/* 08004c20 */ ADDS R1, R3, 0x2 @ Set R1 to R3 + 0x2 \n\
/* 08004c22 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004c24 */ B branch_08004c30 \n\
 \n\
branch_08004c26: \n\
/* 08004c26 */ LDRB R0, [R1] \n\
/* 08004c28 */ SUBS R0, 0x8 @ Subtract 0x8 from R0 \n\
/* 08004c2a */ STRB R0, [R1] \n\
/* 08004c2c */ ADDS R1, 0x6 @ Add 0x6 to R1 \n\
/* 08004c2e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
 \n\
branch_08004c30: \n\
/* 08004c30 */ LDRH R0, [R3] \n\
/* 08004c32 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08004c34 */ BCC branch_08004c26 \n\
/* 08004c36 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08004c38 */ ADD SP, 0x4 \n\
/* 08004c3a */ POP {R4} \n\
/* 08004c3c */ POP {R1} \n\
/* 08004c3e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
