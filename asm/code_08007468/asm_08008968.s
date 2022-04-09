asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008968 \n\
/* 08008968 */ PUSH {R4, R5, LR} \n\
/* 0800896a */ SUB SP, 0x14 \n\
/* 0800896c */ LDR R5, [SP, 0x20] \n\
/* 0800896e */ LDR R4, [SP, 0x24] \n\
/* 08008970 */ STR R5, [SP] \n\
/* 08008972 */ LSLS R4, R4, 0x10 \n\
/* 08008974 */ ASRS R4, R4, 0x10 \n\
/* 08008976 */ STR R4, [SP, 0x4] \n\
/* 08008978 */ MOVS R4, 0x78 @ Set R4 to 0x78 \n\
/* 0800897a */ STR R4, [SP, 0x8] \n\
/* 0800897c */ MOVS R4, 0x50 @ Set R4 to 0x50 \n\
/* 0800897e */ STR R4, [SP, 0xC] \n\
/* 08008980 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08008982 */ STR R4, [SP, 0x10] \n\
/* 08008984 */ BL func_080087e8 \n\
/* 08008988 */ ADD SP, 0x14 \n\
/* 0800898a */ POP {R4, R5} \n\
/* 0800898c */ POP {R0} \n\
/* 0800898e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
