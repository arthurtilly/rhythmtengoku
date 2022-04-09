asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e888 \n\
/* 0800e888 */ PUSH {LR} \n\
/* 0800e88a */ LDR R1, =D_03005380 \n\
/* 0800e88c */ LDR R2, [R1] \n\
/* 0800e88e */ LDR R1, =D_0300558c \n\
/* 0800e890 */ LDR R1, [R1] \n\
/* 0800e892 */ LSLS R0, R0, 0x1 \n\
/* 0800e894 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800e896 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e898 */ LDRSH R1, [R0, R3] \n\
/* 0800e89a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800e89c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800e89e */ BL func_0804d770 \n\
/* 0800e8a2 */ POP {R0} \n\
/* 0800e8a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
