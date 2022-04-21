asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ab88 \n\
/* 0804ab88 */ LSLS R2, R2, 0x18 \n\
/* 0804ab8a */ LSRS R2, R2, 0x18 \n\
/* 0804ab8c */ LDR R0, [R0, 0x18] \n\
/* 0804ab8e */ LSLS R1, R1, 0x5 \n\
/* 0804ab90 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804ab92 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804ab94 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804ab96 */ LSLS R2, R2, 0x2 \n\
/* 0804ab98 */ LDRH R3, [R1] \n\
/* 0804ab9a */ LDR R0, =0xfffffe03 \n\
/* 0804ab9c */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804ab9e */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804aba0 */ STRH R0, [R1] \n\
/* 0804aba2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
