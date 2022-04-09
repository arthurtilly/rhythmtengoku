asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080058b0 \n\
/* 080058b0 */ PUSH {R4, LR} \n\
/* 080058b2 */ SUB SP, 0x14 \n\
/* 080058b4 */ LDR R4, [SP, 0x1C] \n\
/* 080058b6 */ LSLS R0, R0, 0x10 \n\
/* 080058b8 */ LSRS R0, R0, 0x10 \n\
/* 080058ba */ STR R1, [SP, 0x4] \n\
/* 080058bc */ STR R2, [SP, 0x8] \n\
/* 080058be */ STR R3, [SP, 0xC] \n\
/* 080058c0 */ STR R4, [SP, 0x10] \n\
/* 080058c2 */ LDR R1, =D_08936b74 \n\
/* 080058c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080058c6 */ STR R2, [SP] \n\
/* 080058c8 */ ADD R2, SP, 0x4 \n\
/* 080058ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080058cc */ BL func_08005b20 \n\
/* 080058d0 */ ADD SP, 0x14 \n\
/* 080058d2 */ POP {R4} \n\
/* 080058d4 */ POP {R1} \n\
/* 080058d6 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
