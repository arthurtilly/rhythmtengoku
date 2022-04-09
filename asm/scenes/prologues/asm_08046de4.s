asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046de4 \n\
/* 08046de4 */ PUSH {LR} \n\
/* 08046de6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046de8 */ LDR R0, =D_03005380 \n\
/* 08046dea */ LDR R0, [R0] \n\
/* 08046dec */ LDR R1, =D_030055d0 \n\
/* 08046dee */ LDR R1, [R1] \n\
/* 08046df0 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046df2 */ LDRSH R1, [R1, R3] \n\
/* 08046df4 */ LSLS R2, R2, 0x18 \n\
/* 08046df6 */ ASRS R2, R2, 0x18 \n\
/* 08046df8 */ BL func_0804cebc \n\
/* 08046dfc */ POP {R0} \n\
/* 08046dfe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
