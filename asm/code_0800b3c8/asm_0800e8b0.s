asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e8b0 \n\
/* 0800e8b0 */ PUSH {LR} \n\
/* 0800e8b2 */ LDR R1, =D_03005380 \n\
/* 0800e8b4 */ LDR R2, [R1] \n\
/* 0800e8b6 */ LDR R1, =D_0300558c \n\
/* 0800e8b8 */ LDR R1, [R1] \n\
/* 0800e8ba */ LSLS R0, R0, 0x1 \n\
/* 0800e8bc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800e8be */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e8c0 */ LDRSH R1, [R0, R3] \n\
/* 0800e8c2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800e8c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800e8c6 */ BL func_0804d770 \n\
/* 0800e8ca */ POP {R0} \n\
/* 0800e8cc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
