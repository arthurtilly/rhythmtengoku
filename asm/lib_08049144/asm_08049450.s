asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049450 \n\
/* 08049450 */ LDR R2, =D_03005b88 \n\
/* 08049452 */ LDR R2, [R2] \n\
/* 08049454 */ LSLS R0, R0, 0x5 \n\
/* 08049456 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08049458 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804945a */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0804945c */ LSLS R1, R1, 0x2 \n\
/* 0804945e */ LDRB R3, [R0] \n\
/* 08049460 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08049462 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08049464 */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 08049466 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 08049468 */ STRB R2, [R0] \n\
/* 0804946a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
