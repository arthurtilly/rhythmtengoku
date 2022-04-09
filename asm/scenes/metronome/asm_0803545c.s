asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803545c \n\
/* 0803545c */ PUSH {LR} \n\
/* 0803545e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035460 */ BL func_0800c604 \n\
/* 08035464 */ BL func_0800c3b8 \n\
/* 08035468 */ LSLS R0, R0, 0x10 \n\
/* 0803546a */ LSRS R0, R0, 0x10 \n\
/* 0803546c */ LDR R1, =D_089e585c \n\
/* 0803546e */ BL func_080087b4 \n\
/* 08035472 */ LDR R1, =func_0803542c \n\
/* 08035474 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035476 */ BL func_08005d38 \n\
/* 0803547a */ POP {R0} \n\
/* 0803547c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
