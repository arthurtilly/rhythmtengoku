asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047d8c \n\
/* 08047d8c */ PUSH {LR} \n\
/* 08047d8e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047d90 */ BL func_0800c604 \n\
/* 08047d94 */ BL func_08006d80 \n\
/* 08047d98 */ BL func_0800c3b8 \n\
/* 08047d9c */ LSLS R0, R0, 0x10 \n\
/* 08047d9e */ LSRS R0, R0, 0x10 \n\
/* 08047da0 */ LDR R1, =D_089ede24 \n\
/* 08047da2 */ BL func_080087b4 \n\
/* 08047da6 */ LDR R1, =func_08047d5c \n\
/* 08047da8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047daa */ BL func_08005d38 \n\
/* 08047dae */ POP {R0} \n\
/* 08047db0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
