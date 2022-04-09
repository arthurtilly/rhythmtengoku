asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ae1c \n\
/* 0800ae1c */ PUSH {R4, LR} \n\
/* 0800ae1e */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800ae20 */ LDRSH R3, [R0, R1] \n\
/* 0800ae22 */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 0800ae24 */ LDRSH R1, [R0, R2] \n\
/* 0800ae26 */ MOVS R4, 0x2C @ Set R4 to 0x2C \n\
/* 0800ae28 */ LDRSH R2, [R0, R4] \n\
/* 0800ae2a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800ae2c */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0800ae2e */ LDRSH R0, [R0, R2] \n\
/* 0800ae30 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800ae32 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0800ae34 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800ae36 */ POP {R4} \n\
/* 0800ae38 */ POP {R1} \n\
/* 0800ae3a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
