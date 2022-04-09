asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047c48 \n\
/* 08047c48 */ PUSH {LR} \n\
/* 08047c4a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047c4c */ BL func_0800c604 \n\
/* 08047c50 */ BL func_08006d80 \n\
/* 08047c54 */ BL func_0800c3b8 \n\
/* 08047c58 */ LSLS R0, R0, 0x10 \n\
/* 08047c5a */ LSRS R0, R0, 0x10 \n\
/* 08047c5c */ LDR R1, =D_089edcf4 \n\
/* 08047c5e */ BL func_080087b4 \n\
/* 08047c62 */ LDR R1, =func_08047c18 \n\
/* 08047c64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047c66 */ BL func_08005d38 \n\
/* 08047c6a */ POP {R0} \n\
/* 08047c6c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
