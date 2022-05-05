asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b654 \n\
/* 0804b654 */ STRH R2, [R0, 0x22] \n\
/* 0804b656 */ STRH R1, [R0, 0x24] \n\
/* 0804b658 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
