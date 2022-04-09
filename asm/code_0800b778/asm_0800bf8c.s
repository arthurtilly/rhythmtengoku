asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bf8c \n\
/* 0800bf8c */ PUSH {LR} \n\
/* 0800bf8e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800bf90 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800bf92 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800bf94 */ BL func_0800bed0 \n\
/* 0800bf98 */ POP {R0} \n\
/* 0800bf9a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
