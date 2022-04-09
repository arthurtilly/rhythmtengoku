asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047c18 \n\
/* 08047c18 */ PUSH {LR} \n\
/* 08047c1a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047c1c */ BL func_0800c604 \n\
/* 08047c20 */ BL func_0800c3b8 \n\
/* 08047c24 */ LSLS R0, R0, 0x10 \n\
/* 08047c26 */ LSRS R0, R0, 0x10 \n\
/* 08047c28 */ LDR R1, =D_089edcf8 \n\
/* 08047c2a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08047c2c */ LSLS R2, R2, 0x6 \n\
/* 08047c2e */ BL func_08002ee0 \n\
/* 08047c32 */ LDR R1, =func_08047c08 \n\
/* 08047c34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047c36 */ BL func_08005d38 \n\
/* 08047c3a */ POP {R0} \n\
/* 08047c3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
