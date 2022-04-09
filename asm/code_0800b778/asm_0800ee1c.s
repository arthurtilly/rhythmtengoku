asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ee1c \n\
/* 0800ee1c */ PUSH {LR} \n\
/* 0800ee1e */ SUB SP, 0x4 \n\
/* 0800ee20 */ LDR R1, =D_03004d64 \n\
/* 0800ee22 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800ee24 */ LSLS R2, R2, 0x2 \n\
/* 0800ee26 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0800ee28 */ LSLS R3, R3, 0x1 \n\
/* 0800ee2a */ STR R3, [SP] \n\
/* 0800ee2c */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0800ee2e */ BL func_0800186c \n\
/* 0800ee32 */ ADD SP, 0x4 \n\
/* 0800ee34 */ POP {R0} \n\
/* 0800ee36 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
