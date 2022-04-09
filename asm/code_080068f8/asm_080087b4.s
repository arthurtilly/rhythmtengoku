asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080087b4 \n\
/* 080087b4 */ PUSH {LR} \n\
/* 080087b6 */ SUB SP, 0x4 \n\
/* 080087b8 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 080087ba */ LSLS R0, R0, 0x10 \n\
/* 080087bc */ LSRS R0, R0, 0x10 \n\
/* 080087be */ LDR R1, =D_08936c9c \n\
/* 080087c0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080087c2 */ STR R3, [SP] \n\
/* 080087c4 */ BL func_08005b20 \n\
/* 080087c8 */ ADD SP, 0x4 \n\
/* 080087ca */ POP {R1} \n\
/* 080087cc */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
