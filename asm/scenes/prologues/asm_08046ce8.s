asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046ce8 \n\
/* 08046ce8 */ PUSH {LR} \n\
/* 08046cea */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046cec */ LDR R0, =D_03005380 \n\
/* 08046cee */ LDR R0, [R0] \n\
/* 08046cf0 */ LDR R1, =D_030055d0 \n\
/* 08046cf2 */ LDR R1, [R1] \n\
/* 08046cf4 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046cf6 */ LDRSH R1, [R1, R3] \n\
/* 08046cf8 */ LSLS R2, R2, 0x18 \n\
/* 08046cfa */ ASRS R2, R2, 0x18 \n\
/* 08046cfc */ BL func_0804cebc \n\
/* 08046d00 */ POP {R0} \n\
/* 08046d02 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
