asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020c4c \n\
/* 08020c4c */ PUSH {R4, R5, LR} \n\
/* 08020c4e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08020c50 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020c52 */ BL func_0800c604 \n\
/* 08020c56 */ LDR R1, =D_030055d0 \n\
/* 08020c58 */ LSLS R0, R4, 0x1 \n\
/* 08020c5a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08020c5c */ LSLS R0, R0, 0x2 \n\
/* 08020c5e */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 08020c60 */ LDR R4, [R1] \n\
/* 08020c62 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08020c64 */ LDR R5, =D_03005380 \n\
/* 08020c66 */ LDR R0, [R5] \n\
/* 08020c68 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08020c6a */ LDRSH R1, [R4, R2] \n\
/* 08020c6c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020c6e */ BL func_0804d770 \n\
/* 08020c72 */ LDR R0, [R5] \n\
/* 08020c74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020c76 */ LDRSH R1, [R4, R2] \n\
/* 08020c78 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08020c7a */ BL func_0804d8c4 \n\
/* 08020c7e */ POP {R4, R5} \n\
/* 08020c80 */ POP {R0} \n\
/* 08020c82 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
