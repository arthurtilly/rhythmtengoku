asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080468f8 \n\
/* 080468f8 */ PUSH {LR} \n\
/* 080468fa */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080468fc */ LDR R0, =D_03005380 \n\
/* 080468fe */ LDR R0, [R0] \n\
/* 08046900 */ LDR R1, =D_030055d0 \n\
/* 08046902 */ LDR R1, [R1] \n\
/* 08046904 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046906 */ LDRSH R1, [R1, R3] \n\
/* 08046908 */ LSLS R2, R2, 0x18 \n\
/* 0804690a */ ASRS R2, R2, 0x18 \n\
/* 0804690c */ BL func_0804cebc \n\
/* 08046910 */ POP {R0} \n\
/* 08046912 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
