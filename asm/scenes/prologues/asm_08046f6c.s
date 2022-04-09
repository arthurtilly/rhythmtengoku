asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046f6c \n\
/* 08046f6c */ PUSH {LR} \n\
/* 08046f6e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046f70 */ BL func_0800c604 \n\
/* 08046f74 */ BL func_0800c3b8 \n\
/* 08046f78 */ LSLS R0, R0, 0x10 \n\
/* 08046f7a */ LSRS R0, R0, 0x10 \n\
/* 08046f7c */ LDR R1, =D_089ecd48 \n\
/* 08046f7e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046f80 */ LSLS R2, R2, 0x6 \n\
/* 08046f82 */ BL func_08002ee0 \n\
/* 08046f86 */ LDR R1, =func_08046f5c \n\
/* 08046f88 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046f8a */ BL func_08005d38 \n\
/* 08046f8e */ POP {R0} \n\
/* 08046f90 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
