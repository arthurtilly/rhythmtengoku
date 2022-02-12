asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080235a8 \n\
/* 080235a8 */ PUSH {LR} \n\
/* 080235aa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080235ac */ BL func_0800c604 \n\
/* 080235b0 */ BL func_0800c3b8 \n\
/* 080235b4 */ LSLS R0, R0, 0x10 \n\
/* 080235b6 */ LSRS R0, R0, 0x10 \n\
/* 080235b8 */ LDR R1, =D_089df61c \n\
/* 080235ba */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080235bc */ LSLS R2, R2, 0x6 \n\
/* 080235be */ BL func_08002ee0 \n\
/* 080235c2 */ LDR R1, =(func_08023580 + 1) \n\
/* 080235c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080235c6 */ BL func_08005d38 \n\
/* 080235ca */ POP {R0} \n\
/* 080235cc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
