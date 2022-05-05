asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ad18 \n\
/* 0804ad18 */ LSLS R2, R2, 0x18 \n\
/* 0804ad1a */ LSRS R2, R2, 0x18 \n\
/* 0804ad1c */ LDR R3, [R0, 0x18] \n\
/* 0804ad1e */ LSLS R1, R1, 0x5 \n\
/* 0804ad20 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0804ad22 */ LDR R0, [R0, 0x14] \n\
/* 0804ad24 */ LSRS R0, R0, 0x5 \n\
/* 0804ad26 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0804ad28 */ LSLS R2, R2, 0x6 \n\
/* 0804ad2a */ LDRH R3, [R1, 0xA] \n\
/* 0804ad2c */ MOVS R0, 0x3F @ Set R0 to 0x3F \n\
/* 0804ad2e */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804ad30 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804ad32 */ STRH R0, [R1, 0xA] \n\
/* 0804ad34 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
