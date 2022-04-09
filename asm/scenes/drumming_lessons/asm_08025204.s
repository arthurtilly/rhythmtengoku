asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025204 \n\
/* 08025204 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08025206 */ STRH R1, [R0] \n\
/* 08025208 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
