asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ac60 \n\
/* 0804ac60 */ LSLS R2, R2, 0x18 \n\
/* 0804ac62 */ LSRS R2, R2, 0x18 \n\
/* 0804ac64 */ LDR R0, [R0, 0x18] \n\
/* 0804ac66 */ LSLS R1, R1, 0x5 \n\
/* 0804ac68 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804ac6a */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804ac6c */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804ac6e */ LSLS R2, R2, 0x5 \n\
/* 0804ac70 */ LDRH R3, [R1, 0x6] \n\
/* 0804ac72 */ LDR R0, =0xfffff01f \n\
/* 0804ac74 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804ac76 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804ac78 */ STRH R0, [R1, 0x6] \n\
/* 0804ac7a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
