asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024fbc \n\
/* 08024fbc */ LDRH R1, [R0] \n\
/* 08024fbe */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08024fc0 */ STRH R1, [R0] \n\
/* 08024fc2 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
