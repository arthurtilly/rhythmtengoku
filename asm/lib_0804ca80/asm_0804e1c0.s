asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e1c0 \n\
/* 0804e1c0 */ STRH R1, [R0, 0x14] \n\
/* 0804e1c2 */ STRH R2, [R0, 0x16] \n\
/* 0804e1c4 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
