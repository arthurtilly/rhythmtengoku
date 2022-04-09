asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047894 \n\
/* 08047894 */ PUSH {LR} \n\
/* 08047896 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08047898 */ LDR R0, =D_03005380 \n\
/* 0804789a */ LDR R0, [R0] \n\
/* 0804789c */ LDR R1, =D_030055d0 \n\
/* 0804789e */ LDR R1, [R1] \n\
/* 080478a0 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080478a2 */ LDRSH R1, [R1, R3] \n\
/* 080478a4 */ LSLS R2, R2, 0x18 \n\
/* 080478a6 */ ASRS R2, R2, 0x18 \n\
/* 080478a8 */ BL func_0804cebc \n\
/* 080478ac */ POP {R0} \n\
/* 080478ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
