asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003f28 \n\
/* 08003f28 */ SUB SP, 0x4 \n\
/* 08003f2a */ LDR R2, =D_03000748 \n\
/* 08003f2c */ LDRB R1, [R2] \n\
/* 08003f2e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08003f30 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08003f32 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003f34 */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 08003f36 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08003f38 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003f3a */ STRB R0, [R2] \n\
/* 08003f3c */ LDR R1, =D_030008a4 \n\
/* 08003f3e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08003f40 */ STRB R0, [R1] \n\
/* 08003f42 */ ADD SP, 0x4 \n\
/* 08003f44 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
