asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018090 \n\
/* 08018090 */ STR R1, [R0, 0x5C] \n\
/* 08018092 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
