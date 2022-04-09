asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005ce0 \n\
/* 08005ce0 */ LDR R1, =D_03000900 \n\
/* 08005ce2 */ STR R0, [R1, 0x4] \n\
/* 08005ce4 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
