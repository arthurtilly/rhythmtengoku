asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804aca0 \n\
/* 0804aca0 */ LSLS R2, R2, 0x18 \n\
/* 0804aca2 */ LSRS R2, R2, 0x18 \n\
/* 0804aca4 */ LDR R0, [R0, 0x18] \n\
/* 0804aca6 */ LSLS R1, R1, 0x5 \n\
/* 0804aca8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804acaa */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804acac */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804acae */ LSLS R2, R2, 0x4 \n\
/* 0804acb0 */ LDRB R3, [R1, 0x7] \n\
/* 0804acb2 */ MOVS R0, 0x31 @ Set R0 to 0x31 \n\
/* 0804acb4 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804acb6 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804acb8 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804acba */ STRB R0, [R1, 0x7] \n\
/* 0804acbc */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
