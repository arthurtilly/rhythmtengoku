asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003a6c \n\
/* 08003a6c */ LDR R1, [R0] \n\
/* 08003a6e */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 08003a70 */ STR R1, [R0] \n\
/* 08003a72 */ LDRB R0, [R1] \n\
/* 08003a74 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
