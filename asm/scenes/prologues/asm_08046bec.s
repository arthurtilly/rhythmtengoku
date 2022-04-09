asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046bec \n\
/* 08046bec */ PUSH {LR} \n\
/* 08046bee */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046bf0 */ LDR R0, =D_03005380 \n\
/* 08046bf2 */ LDR R0, [R0] \n\
/* 08046bf4 */ LDR R1, =D_030055d0 \n\
/* 08046bf6 */ LDR R1, [R1] \n\
/* 08046bf8 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046bfa */ LDRSH R1, [R1, R3] \n\
/* 08046bfc */ LSLS R2, R2, 0x18 \n\
/* 08046bfe */ ASRS R2, R2, 0x18 \n\
/* 08046c00 */ BL func_0804cebc \n\
/* 08046c04 */ POP {R0} \n\
/* 08046c06 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
