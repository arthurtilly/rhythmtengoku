asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010788 \n\
/* 08010788 */ PUSH {LR} \n\
/* 0801078a */ LDR R0, =D_03005380 \n\
/* 0801078c */ LDR R0, [R0] \n\
/* 0801078e */ LDR R1, =D_030046a4 \n\
/* 08010790 */ LDR R1, [R1] \n\
/* 08010792 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08010794 */ LDRSH R1, [R1, R2] \n\
/* 08010796 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08010798 */ BL func_0804d770 \n\
/* 0801079c */ POP {R0} \n\
/* 0801079e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
