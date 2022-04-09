asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005a0c \n\
/* 08005a0c */ PUSH {R4, R5, LR} \n\
/* 08005a0e */ LDR R1, =D_03000900 \n\
/* 08005a10 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08005a12 */ STR R0, [R1] \n\
/* 08005a14 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08005a16 */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 08005a18 */ NEGS R5, R5 @ Set R5 to -R5 \n\
/* 08005a1a */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08005a1c */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 08005a1e */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08005a20 */ NEGS R4, R4 @ Set R4 to -R4 \n\
 \n\
branch_08005a22: \n\
/* 08005a22 */ LDRB R1, [R2] \n\
/* 08005a24 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08005a26 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005a28 */ STRB R0, [R2] \n\
/* 08005a2a */ STR R4, [R2, 0x8] \n\
/* 08005a2c */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 08005a2e */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08005a30 */ CMP R3, 0x2F @ Compare R3 and 0x2F \n\
/* 08005a32 */ BLS branch_08005a22 \n\
/* 08005a34 */ POP {R4, R5} \n\
/* 08005a36 */ POP {R0} \n\
/* 08005a38 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
