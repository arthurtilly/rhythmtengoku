asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ae14 \n\
/* 0804ae14 */ STRH R1, [R0, 0x8] \n\
/* 0804ae16 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
