asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046f9c \n\
/* 08046f9c */ PUSH {LR} \n\
/* 08046f9e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046fa0 */ BL func_0800c604 \n\
/* 08046fa4 */ BL func_08006d80 \n\
/* 08046fa8 */ BL func_0800c3b8 \n\
/* 08046fac */ LSLS R0, R0, 0x10 \n\
/* 08046fae */ LSRS R0, R0, 0x10 \n\
/* 08046fb0 */ LDR R1, =D_089ecd44 \n\
/* 08046fb2 */ BL func_080087b4 \n\
/* 08046fb6 */ LDR R1, =func_08046f6c \n\
/* 08046fb8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046fba */ BL func_08005d38 \n\
/* 08046fbe */ POP {R0} \n\
/* 08046fc0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
