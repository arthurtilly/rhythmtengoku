asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020e50 \n\
/* 08020e50 */ PUSH {R4-R6, LR} \n\
/* 08020e52 */ SUB SP, 0x4 \n\
/* 08020e54 */ LDR R6, =D_030055d0 \n\
/* 08020e56 */ LDR R0, [R6] \n\
/* 08020e58 */ LDR R0, [R0, 0x58] \n\
/* 08020e5a */ LDR R4, =D_03004b64 \n\
/* 08020e5c */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08020e5e */ LSLS R5, R5, 0x2 \n\
/* 08020e60 */ STR R5, [SP] \n\
/* 08020e62 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08020e64 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08020e66 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08020e68 */ BL func_0800186c \n\
/* 08020e6c */ LDR R0, [R6] \n\
/* 08020e6e */ LDR R0, [R0, 0x5C] \n\
/* 08020e70 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 08020e72 */ STR R5, [SP] \n\
/* 08020e74 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08020e76 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08020e78 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08020e7a */ BL func_0800186c \n\
/* 08020e7e */ ADD SP, 0x4 \n\
/* 08020e80 */ POP {R4-R6} \n\
/* 08020e82 */ POP {R0} \n\
/* 08020e84 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
