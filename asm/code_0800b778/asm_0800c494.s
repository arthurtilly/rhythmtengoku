asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c494 \n\
/* 0800c494 */ LDR R2, =D_030053c0 \n\
/* 0800c496 */ MOVS R1, 0x9C @ Set R1 to 0x9C \n\
/* 0800c498 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800c49a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800c49c */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0800c49e */ LDRB R0, [R1] \n\
/* 0800c4a0 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800c4a2 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800c4a4 */ STRB R0, [R1] \n\
/* 0800c4a6 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
