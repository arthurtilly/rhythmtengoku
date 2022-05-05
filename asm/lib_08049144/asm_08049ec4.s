asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049ec4 \n\
/* 08049ec4 */ STRB R1, [R0, 0x1] \n\
/* 08049ec6 */ STRH R2, [R0, 0x2] \n\
/* 08049ec8 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
