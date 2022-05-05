asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b650 \n\
/* 0804b650 */ STRH R1, [R0, 0x20] \n\
/* 0804b652 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
