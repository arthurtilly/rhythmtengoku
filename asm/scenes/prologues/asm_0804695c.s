asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804695c \n\
/* 0804695c */ PUSH {LR} \n\
/* 0804695e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046960 */ BL func_0800c604 \n\
/* 08046964 */ BL func_08006d80 \n\
/* 08046968 */ BL func_0800c3b8 \n\
/* 0804696c */ LSLS R0, R0, 0x10 \n\
/* 0804696e */ LSRS R0, R0, 0x10 \n\
/* 08046970 */ LDR R1, =D_089ec210 \n\
/* 08046972 */ BL func_080087b4 \n\
/* 08046976 */ LDR R1, =func_0804692c \n\
/* 08046978 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804697a */ BL func_08005d38 \n\
/* 0804697e */ POP {R0} \n\
/* 08046980 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
