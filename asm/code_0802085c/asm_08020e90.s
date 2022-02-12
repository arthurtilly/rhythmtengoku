asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020e90 \n\
/* 08020e90 */ PUSH {R4-R6, LR} \n\
/* 08020e92 */ SUB SP, 0x4 \n\
/* 08020e94 */ LDR R6, =D_030055d0 \n\
/* 08020e96 */ LDR R0, [R6] \n\
/* 08020e98 */ ADDS R0, 0x60 @ Add 0x60 to R0 \n\
/* 08020e9a */ LDR R4, =D_03004b64 \n\
/* 08020e9c */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08020e9e */ LSLS R5, R5, 0x2 \n\
/* 08020ea0 */ STR R5, [SP] \n\
/* 08020ea2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08020ea4 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08020ea6 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08020ea8 */ BL func_0800186c \n\
/* 08020eac */ LDR R0, [R6] \n\
/* 08020eae */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 08020eb0 */ LSLS R1, R1, 0x3 \n\
/* 08020eb2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020eb4 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 08020eb6 */ STR R5, [SP] \n\
/* 08020eb8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08020eba */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08020ebc */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08020ebe */ BL func_0800186c \n\
/* 08020ec2 */ ADD SP, 0x4 \n\
/* 08020ec4 */ POP {R4-R6} \n\
/* 08020ec6 */ POP {R0} \n\
/* 08020ec8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
