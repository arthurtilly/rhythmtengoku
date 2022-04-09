asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c1c0 \n\
/* 0800c1c0 */ LDR R1, =D_030053c0 \n\
/* 0800c1c2 */ LDRH R1, [R1, 0x10] \n\
/* 0800c1c4 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800c1c6 */ ASRS R0, R0, 0x8 \n\
/* 0800c1c8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
