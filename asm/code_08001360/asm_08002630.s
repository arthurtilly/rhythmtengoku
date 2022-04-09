asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002630 \n\
/* 08002630 */ LDRH R0, [R0, 0x10] \n\
/* 08002632 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
