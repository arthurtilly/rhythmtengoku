asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ee9c \n\
/* 0800ee9c */ PUSH {LR} \n\
/* 0800ee9e */ SUB SP, 0x4 \n\
/* 0800eea0 */ LDR R1, =(D_03004b10 + 0x3d4) \n\
/* 0800eea2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800eea4 */ LSLS R2, R2, 0x1 \n\
/* 0800eea6 */ STR R2, [SP] \n\
/* 0800eea8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800eeaa */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0800eeac */ BL func_0800186c \n\
/* 0800eeb0 */ ADD SP, 0x4 \n\
/* 0800eeb2 */ POP {R0} \n\
/* 0800eeb4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
