asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ee3c \n\
/* 0800ee3c */ PUSH {LR} \n\
/* 0800ee3e */ SUB SP, 0x4 \n\
/* 0800ee40 */ LDR R1, =D_03004b64 \n\
/* 0800ee42 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 0800ee44 */ LSLS R2, R2, 0x1 \n\
/* 0800ee46 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0800ee48 */ LSLS R3, R3, 0x1 \n\
/* 0800ee4a */ STR R3, [SP] \n\
/* 0800ee4c */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0800ee4e */ BL func_0800186c \n\
/* 0800ee52 */ ADD SP, 0x4 \n\
/* 0800ee54 */ POP {R0} \n\
/* 0800ee56 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
