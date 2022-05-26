asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ee5c \n\
/* 0800ee5c */ PUSH {LR} \n\
/* 0800ee5e */ SUB SP, 0x4 \n\
/* 0800ee60 */ LDR R1, =(D_03004b10 + 0x254) \n\
/* 0800ee62 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 0800ee64 */ LSLS R2, R2, 0x1 \n\
/* 0800ee66 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0800ee68 */ LSLS R3, R3, 0x1 \n\
/* 0800ee6a */ STR R3, [SP] \n\
/* 0800ee6c */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0800ee6e */ BL func_0800186c \n\
/* 0800ee72 */ ADD SP, 0x4 \n\
/* 0800ee74 */ POP {R0} \n\
/* 0800ee76 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
