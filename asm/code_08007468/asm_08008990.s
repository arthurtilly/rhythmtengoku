asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008990 \n\
/* 08008990 */ PUSH {R4-R7, LR} \n\
/* 08008992 */ SUB SP, 0x14 \n\
/* 08008994 */ LDR R7, [SP, 0x28] \n\
/* 08008996 */ LDR R4, [SP, 0x2C] \n\
/* 08008998 */ LDR R5, [SP, 0x30] \n\
/* 0800899a */ LDR R6, [SP, 0x34] \n\
/* 0800899c */ STR R7, [SP] \n\
/* 0800899e */ LSLS R4, R4, 0x10 \n\
/* 080089a0 */ ASRS R4, R4, 0x10 \n\
/* 080089a2 */ STR R4, [SP, 0x4] \n\
/* 080089a4 */ LSLS R5, R5, 0x10 \n\
/* 080089a6 */ ASRS R5, R5, 0x10 \n\
/* 080089a8 */ STR R5, [SP, 0x8] \n\
/* 080089aa */ LSLS R6, R6, 0x10 \n\
/* 080089ac */ ASRS R6, R6, 0x10 \n\
/* 080089ae */ STR R6, [SP, 0xC] \n\
/* 080089b0 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080089b2 */ STR R4, [SP, 0x10] \n\
/* 080089b4 */ BL func_080087e8 \n\
/* 080089b8 */ ADD SP, 0x14 \n\
/* 080089ba */ POP {R4-R7} \n\
/* 080089bc */ POP {R0} \n\
/* 080089be */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
