asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e0c0 \n\
/* 0804e0c0 */ LDRH R0, [R0, 0x1C] \n\
/* 0804e0c2 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
