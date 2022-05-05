asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804aa5c \n\
/* 0804aa5c */ LSLS R2, R2, 0x18 \n\
/* 0804aa5e */ LSRS R2, R2, 0x18 \n\
/* 0804aa60 */ LDR R0, [R0, 0x18] \n\
/* 0804aa62 */ LSLS R1, R1, 0x5 \n\
/* 0804aa64 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804aa66 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804aa68 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804aa6a */ LSLS R2, R2, 0x7 \n\
/* 0804aa6c */ LDRH R3, [R1, 0x2] \n\
/* 0804aa6e */ LDR R0, =0xffffc07f \n\
/* 0804aa70 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804aa72 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804aa74 */ STRH R0, [R1, 0x2] \n\
/* 0804aa76 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
