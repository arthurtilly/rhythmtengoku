asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007498 \n\
/* 08007498 */ PUSH {R4, LR} \n\
/* 0800749a */ SUB SP, 0x4 \n\
/* 0800749c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800749e */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 080074a0 */ LSLS R0, R0, 0x18 \n\
/* 080074a2 */ ASRS R0, R0, 0x18 \n\
/* 080074a4 */ LSLS R4, R4, 0x10 \n\
/* 080074a6 */ ASRS R4, R4, 0x10 \n\
/* 080074a8 */ LSLS R3, R3, 0x10 \n\
/* 080074aa */ ASRS R3, R3, 0x10 \n\
/* 080074ac */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 080074ae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080074b0 */ STR R1, [SP] \n\
/* 080074b2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080074b4 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080074b6 */ BL func_0800232c \n\
/* 080074ba */ ADD SP, 0x4 \n\
/* 080074bc */ POP {R4} \n\
/* 080074be */ POP {R0} \n\
/* 080074c0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
