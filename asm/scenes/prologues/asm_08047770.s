asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047770 \n\
/* 08047770 */ PUSH {LR} \n\
/* 08047772 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08047774 */ LDR R0, =D_03005380 \n\
/* 08047776 */ LDR R0, [R0] \n\
/* 08047778 */ LDR R1, =D_030055d0 \n\
/* 0804777a */ LDR R1, [R1] \n\
/* 0804777c */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0804777e */ LDRSH R1, [R1, R3] \n\
/* 08047780 */ LSLS R2, R2, 0x18 \n\
/* 08047782 */ ASRS R2, R2, 0x18 \n\
/* 08047784 */ BL func_0804cebc \n\
/* 08047788 */ POP {R0} \n\
/* 0804778a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
