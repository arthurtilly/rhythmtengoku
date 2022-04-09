asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080173f4 \n\
/* 080173f4 */ LDR R1, =D_030046a4 \n\
/* 080173f6 */ LDR R1, [R1] \n\
/* 080173f8 */ STR R0, [R1, 0x70] \n\
/* 080173fa */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
