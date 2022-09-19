asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dec0 \n\
/* 0801dec0 */ STRB R1, [R0, 0xD] \n\
/* 0801dec2 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
