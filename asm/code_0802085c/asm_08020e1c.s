asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020e1c \n\
/* 08020e1c */ PUSH {R4, R5, LR} \n\
/* 08020e1e */ SUB SP, 0x4 \n\
/* 08020e20 */ LDR R4, =D_03004b64 \n\
/* 08020e22 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08020e24 */ LSLS R5, R5, 0x2 \n\
/* 08020e26 */ STR R5, [SP] \n\
/* 08020e28 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020e2a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08020e2c */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08020e2e */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08020e30 */ BL func_080018e0 \n\
/* 08020e34 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 08020e36 */ STR R5, [SP] \n\
/* 08020e38 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020e3a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08020e3c */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08020e3e */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08020e40 */ BL func_080018e0 \n\
/* 08020e44 */ ADD SP, 0x4 \n\
/* 08020e46 */ POP {R4, R5} \n\
/* 08020e48 */ POP {R0} \n\
/* 08020e4a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
