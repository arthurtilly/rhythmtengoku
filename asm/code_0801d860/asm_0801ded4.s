asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ded4 \n\
/* 0801ded4 */ ADDS R0, 0x26 @ Add 0x26 to R0 \n\
/* 0801ded6 */ STRB R1, [R0] \n\
/* 0801ded8 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
