asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080107a8 \n\
/* 080107a8 */ PUSH {R4, LR} \n\
/* 080107aa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080107ac */ MOVS R0, 0xE1 @ Set R0 to 0xE1 \n\
/* 080107ae */ LSLS R0, R0, 0x4 \n\
/* 080107b0 */ BL func_0800b60c \n\
/* 080107b4 */ STRH R0, [R4, 0x4] \n\
/* 080107b6 */ LDR R0, =0x80000e10 \n\
/* 080107b8 */ BL func_0800b60c \n\
/* 080107bc */ STRH R0, [R4, 0x6] \n\
/* 080107be */ POP {R4} \n\
/* 080107c0 */ POP {R0} \n\
/* 080107c2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
