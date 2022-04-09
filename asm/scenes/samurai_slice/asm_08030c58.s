asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030c58 \n\
/* 08030c58 */ PUSH {LR} \n\
/* 08030c5a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030c5c */ BL func_0800c604 \n\
/* 08030c60 */ BL func_0800c3b8 \n\
/* 08030c64 */ LSLS R0, R0, 0x10 \n\
/* 08030c66 */ LSRS R0, R0, 0x10 \n\
/* 08030c68 */ LDR R1, =D_089e479c \n\
/* 08030c6a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08030c6c */ LSLS R2, R2, 0x6 \n\
/* 08030c6e */ BL func_08002ee0 \n\
/* 08030c72 */ LDR R1, =func_08030c48 \n\
/* 08030c74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030c76 */ BL func_08005d38 \n\
/* 08030c7a */ POP {R0} \n\
/* 08030c7c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
