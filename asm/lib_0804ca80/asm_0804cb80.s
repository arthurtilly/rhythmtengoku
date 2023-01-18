asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804cb80 \n\
/* 0804cb80 */ STRH R1, [R0] \n\
/* 0804cb82 */ STR R2, [R0, 0x4] \n\
/* 0804cb84 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
