asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ade4 \n\
/* 0804ade4 */ STRH R1, [R0, 0x6] \n\
/* 0804ade6 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
