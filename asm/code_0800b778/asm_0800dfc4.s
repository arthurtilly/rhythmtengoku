asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800dfc4 \n\
/* 0800dfc4 */ PUSH {LR} \n\
/* 0800dfc6 */ BL func_0800c3b8 \n\
/* 0800dfca */ MOVS R1, 0x9C @ Set R1 to 0x9C \n\
/* 0800dfcc */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800dfce */ LDR R1, =(D_03004b10 + 0x83c) \n\
/* 0800dfd0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800dfd2 */ ADDS R0, 0x98 @ Add 0x98 to R0 \n\
/* 0800dfd4 */ LDR R0, [R0] \n\
/* 0800dfd6 */ POP {R1} \n\
/* 0800dfd8 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
