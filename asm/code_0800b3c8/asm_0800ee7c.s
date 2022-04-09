asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ee7c \n\
/* 0800ee7c */ PUSH {LR} \n\
/* 0800ee7e */ SUB SP, 0x4 \n\
/* 0800ee80 */ LDR R1, =D_03004ce4 \n\
/* 0800ee82 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800ee84 */ LSLS R2, R2, 0x1 \n\
/* 0800ee86 */ STR R2, [SP] \n\
/* 0800ee88 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800ee8a */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0800ee8c */ BL func_0800186c \n\
/* 0800ee90 */ ADD SP, 0x4 \n\
/* 0800ee92 */ POP {R0} \n\
/* 0800ee94 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
