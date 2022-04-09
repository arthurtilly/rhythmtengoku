asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008d44 \n\
/* 08008d44 */ PUSH {R4-R7, LR} \n\
/* 08008d46 */ SUB SP, 0x20 \n\
/* 08008d48 */ LDR R6, [SP, 0x34] \n\
/* 08008d4a */ LDR R4, [SP, 0x38] \n\
/* 08008d4c */ LDR R5, [SP, 0x3C] \n\
/* 08008d4e */ STR R5, [SP, 0x8] \n\
/* 08008d50 */ LDR R7, [SP, 0x40] \n\
/* 08008d52 */ STR R7, [SP, 0xC] \n\
/* 08008d54 */ LDR R5, [SP, 0x44] \n\
/* 08008d56 */ LDR R7, [SP, 0x48] \n\
/* 08008d58 */ STR R7, [SP, 0x14] \n\
/* 08008d5a */ LDR R7, [SP, 0x4C] \n\
/* 08008d5c */ STR R7, [SP, 0x18] \n\
/* 08008d5e */ LSLS R5, R5, 0x10 \n\
/* 08008d60 */ LSRS R5, R5, 0x10 \n\
/* 08008d62 */ LSLS R2, R2, 0x10 \n\
/* 08008d64 */ ASRS R2, R2, 0x10 \n\
/* 08008d66 */ STR R6, [SP] \n\
/* 08008d68 */ LSLS R4, R4, 0x10 \n\
/* 08008d6a */ MOVS R6, 0xFE @ Set R6 to 0xFE \n\
/* 08008d6c */ LSLS R6, R6, 0x18 \n\
/* 08008d6e */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 08008d70 */ ASRS R4, R4, 0x10 \n\
/* 08008d72 */ STR R4, [SP, 0x4] \n\
/* 08008d74 */ STR R5, [SP, 0x10] \n\
/* 08008d76 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08008d78 */ STR R4, [SP, 0x1C] \n\
/* 08008d7a */ BL func_08008b00 \n\
/* 08008d7e */ ADD SP, 0x20 \n\
/* 08008d80 */ POP {R4-R7} \n\
/* 08008d82 */ POP {R0} \n\
/* 08008d84 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
