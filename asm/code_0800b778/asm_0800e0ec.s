asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e0ec \n\
/* 0800e0ec */ LDR R0, =D_03004b10 \n\
/* 0800e0ee */ LDRH R1, [R0] \n\
/* 0800e0f0 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0800e0f2 */ LSLS R3, R3, 0x5 \n\
/* 0800e0f4 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0800e0f6 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0800e0f8 */ STRH R1, [R0] \n\
/* 0800e0fa */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
