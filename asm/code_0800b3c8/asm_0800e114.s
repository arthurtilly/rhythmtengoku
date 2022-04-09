asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e114 \n\
/* 0800e114 */ LDR R0, =D_03004b10 \n\
/* 0800e116 */ LDRH R1, [R0] \n\
/* 0800e118 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0800e11a */ LSLS R3, R3, 0x8 \n\
/* 0800e11c */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0800e11e */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0800e120 */ STRH R1, [R0] \n\
/* 0800e122 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
