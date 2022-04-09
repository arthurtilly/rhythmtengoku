asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c1d0 \n\
/* 0800c1d0 */ LDR R1, =D_030053c0 \n\
/* 0800c1d2 */ LDRH R1, [R1, 0x10] \n\
/* 0800c1d4 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0800c1d6 */ MULS R2, R1 @ Multiply R2 by R1 \n\
/* 0800c1d8 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800c1da */ ASRS R1, R1, 0x8 \n\
/* 0800c1dc */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800c1de */ ASRS R0, R0, 0x8 \n\
/* 0800c1e0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
