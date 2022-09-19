asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e9b0 \n\
/* 0801e9b0 */ PUSH {LR} \n\
/* 0801e9b2 */ BL func_0800c3b8 \n\
/* 0801e9b6 */ LSLS R0, R0, 0x10 \n\
/* 0801e9b8 */ LSRS R0, R0, 0x10 \n\
/* 0801e9ba */ LDR R1, =func_0801e980 \n\
/* 0801e9bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e9be */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801e9c0 */ BL func_0800856c \n\
/* 0801e9c4 */ POP {R0} \n\
/* 0801e9c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
