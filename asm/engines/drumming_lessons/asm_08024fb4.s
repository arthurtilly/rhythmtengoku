asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024fb4 \n\
/* 08024fb4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08024fb6 */ STRH R1, [R0] \n\
/* 08024fb8 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
