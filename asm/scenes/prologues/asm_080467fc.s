asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080467fc \n\
/* 080467fc */ PUSH {LR} \n\
/* 080467fe */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046800 */ LDR R0, =D_03005380 \n\
/* 08046802 */ LDR R0, [R0] \n\
/* 08046804 */ LDR R1, =D_030055d0 \n\
/* 08046806 */ LDR R1, [R1] \n\
/* 08046808 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0804680a */ LDRSH R1, [R1, R3] \n\
/* 0804680c */ LSLS R2, R2, 0x18 \n\
/* 0804680e */ ASRS R2, R2, 0x18 \n\
/* 08046810 */ BL func_0804cebc \n\
/* 08046814 */ POP {R0} \n\
/* 08046816 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
