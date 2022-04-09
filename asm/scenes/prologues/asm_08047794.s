asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047794 \n\
/* 08047794 */ PUSH {LR} \n\
/* 08047796 */ LDR R0, =D_03005380 \n\
/* 08047798 */ LDR R0, [R0] \n\
/* 0804779a */ LDR R1, =D_030055d0 \n\
/* 0804779c */ LDR R1, [R1] \n\
/* 0804779e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080477a0 */ LDRSH R1, [R1, R2] \n\
/* 080477a2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080477a4 */ BL func_0804d770 \n\
/* 080477a8 */ POP {R0} \n\
/* 080477aa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
