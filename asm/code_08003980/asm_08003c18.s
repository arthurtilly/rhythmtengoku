asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003c18 \n\
/* 08003c18 */ STR R1, [R0, 0x20] \n\
/* 08003c1a */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
