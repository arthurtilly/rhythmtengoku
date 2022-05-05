asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ac24 \n\
/* 0804ac24 */ LSLS R2, R2, 0x18 \n\
/* 0804ac26 */ LSRS R2, R2, 0x18 \n\
/* 0804ac28 */ LDR R0, [R0, 0x18] \n\
/* 0804ac2a */ LSLS R1, R1, 0x5 \n\
/* 0804ac2c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804ac2e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804ac30 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804ac32 */ LDRB R3, [R1] \n\
/* 0804ac34 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804ac36 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804ac38 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804ac3a */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804ac3c */ STRB R0, [R1] \n\
/* 0804ac3e */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
