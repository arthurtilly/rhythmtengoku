asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e75c \n\
/* 0800e75c */ LDR R1, [R0, 0xC] \n\
/* 0800e75e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800e760 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800e762 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800e764 */ STRH R0, [R1] \n\
/* 0800e766 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
