asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080251d0 \n\
/* 080251d0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080251d2 */ STRH R1, [R0] \n\
/* 080251d4 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
