asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018088 \n\
/* 08018088 */ STR R1, [R0, 0x54] \n\
/* 0801808a */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
