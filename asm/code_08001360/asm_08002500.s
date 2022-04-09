asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002500 \n\
/* 08002500 */ PUSH {R4, LR} \n\
/* 08002502 */ SUB SP, 0x4 \n\
/* 08002504 */ LSLS R1, R1, 0x10 \n\
/* 08002506 */ ASRS R1, R1, 0x10 \n\
/* 08002508 */ LSLS R2, R2, 0x10 \n\
/* 0800250a */ ASRS R2, R2, 0x10 \n\
/* 0800250c */ LSLS R3, R3, 0x10 \n\
/* 0800250e */ ASRS R3, R3, 0x10 \n\
/* 08002510 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08002512 */ STR R4, [SP] \n\
/* 08002514 */ BL func_0800232c \n\
/* 08002518 */ ADD SP, 0x4 \n\
/* 0800251a */ POP {R4} \n\
/* 0800251c */ POP {R0} \n\
/* 0800251e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
