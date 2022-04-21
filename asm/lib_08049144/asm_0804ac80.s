asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ac80 \n\
/* 0804ac80 */ LSLS R2, R2, 0x18 \n\
/* 0804ac82 */ LSRS R2, R2, 0x18 \n\
/* 0804ac84 */ LDR R0, [R0, 0x18] \n\
/* 0804ac86 */ LSLS R1, R1, 0x5 \n\
/* 0804ac88 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804ac8a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804ac8c */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804ac8e */ LSLS R2, R2, 0x6 \n\
/* 0804ac90 */ LDRB R3, [R1, 0x3] \n\
/* 0804ac92 */ MOVS R0, 0x41 @ Set R0 to 0x41 \n\
/* 0804ac94 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804ac96 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804ac98 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804ac9a */ STRB R0, [R1, 0x3] \n\
/* 0804ac9c */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
