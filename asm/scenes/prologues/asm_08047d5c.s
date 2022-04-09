asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047d5c \n\
/* 08047d5c */ PUSH {LR} \n\
/* 08047d5e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047d60 */ BL func_0800c604 \n\
/* 08047d64 */ BL func_0800c3b8 \n\
/* 08047d68 */ LSLS R0, R0, 0x10 \n\
/* 08047d6a */ LSRS R0, R0, 0x10 \n\
/* 08047d6c */ LDR R1, =D_089ede28 \n\
/* 08047d6e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08047d70 */ LSLS R2, R2, 0x6 \n\
/* 08047d72 */ BL func_08002ee0 \n\
/* 08047d76 */ LDR R1, =func_08047d4c \n\
/* 08047d78 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047d7a */ BL func_08005d38 \n\
/* 08047d7e */ POP {R0} \n\
/* 08047d80 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
