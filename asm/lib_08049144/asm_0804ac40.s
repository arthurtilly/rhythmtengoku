asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ac40 \n\
/* 0804ac40 */ LSLS R2, R2, 0x18 \n\
/* 0804ac42 */ LSRS R2, R2, 0x18 \n\
/* 0804ac44 */ LDR R0, [R0, 0x18] \n\
/* 0804ac46 */ LSLS R1, R1, 0x5 \n\
/* 0804ac48 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804ac4a */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804ac4c */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804ac4e */ LSLS R2, R2, 0xE \n\
/* 0804ac50 */ LDR R0, [R1, 0x4] \n\
/* 0804ac52 */ LDR R3, =0xffe03fff \n\
/* 0804ac54 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804ac56 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804ac58 */ STR R0, [R1, 0x4] \n\
/* 0804ac5a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
