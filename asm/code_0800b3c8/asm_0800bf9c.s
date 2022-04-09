asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bf9c \n\
/* 0800bf9c */ PUSH {LR} \n\
/* 0800bf9e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0800bfa0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800bfa2 */ BL func_0800bed0 \n\
/* 0800bfa6 */ POP {R0} \n\
/* 0800bfa8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
