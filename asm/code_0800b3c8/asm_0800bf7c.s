asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bf7c \n\
/* 0800bf7c */ PUSH {LR} \n\
/* 0800bf7e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800bf80 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800bf82 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800bf84 */ BL func_0800bed0 \n\
/* 0800bf88 */ POP {R0} \n\
/* 0800bf8a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
