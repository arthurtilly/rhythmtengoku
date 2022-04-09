asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080051f0 \n\
/* 080051f0 */ PUSH {LR} \n\
/* 080051f2 */ SUB SP, 0x4 \n\
/* 080051f4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080051f6 */ LSLS R2, R2, 0x1 \n\
/* 080051f8 */ STR R2, [SP] \n\
/* 080051fa */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 080051fc */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 080051fe */ BL func_0800186c \n\
/* 08005202 */ ADD SP, 0x4 \n\
/* 08005204 */ POP {R0} \n\
/* 08005206 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
