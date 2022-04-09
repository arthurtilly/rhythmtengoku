asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080478b8 \n\
/* 080478b8 */ PUSH {LR} \n\
/* 080478ba */ LDR R0, =D_03005380 \n\
/* 080478bc */ LDR R0, [R0] \n\
/* 080478be */ LDR R1, =D_030055d0 \n\
/* 080478c0 */ LDR R1, [R1] \n\
/* 080478c2 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080478c4 */ LDRSH R1, [R1, R2] \n\
/* 080478c6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080478c8 */ BL func_0804d770 \n\
/* 080478cc */ POP {R0} \n\
/* 080478ce */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
