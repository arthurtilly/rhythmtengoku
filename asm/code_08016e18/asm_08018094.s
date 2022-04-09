asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018094 \n\
/* 08018094 */ STR R1, [R0, 0x60] \n\
/* 08018096 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
