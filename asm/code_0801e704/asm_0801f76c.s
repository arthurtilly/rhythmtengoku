asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f76c \n\
/* 0801f76c */ PUSH {LR} \n\
/* 0801f76e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801f770 */ LDR R0, =D_03005380 \n\
/* 0801f772 */ LDR R0, [R0] \n\
/* 0801f774 */ LDR R1, =D_030055d0 \n\
/* 0801f776 */ LDR R1, [R1] \n\
/* 0801f778 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 0801f77a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f77c */ LDRSH R1, [R1, R3] \n\
/* 0801f77e */ LSLS R2, R2, 0x10 \n\
/* 0801f780 */ LSRS R2, R2, 0x10 \n\
/* 0801f782 */ BL func_0804d770 \n\
/* 0801f786 */ POP {R0} \n\
/* 0801f788 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
