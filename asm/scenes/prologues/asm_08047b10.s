asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047b10 \n\
/* 08047b10 */ PUSH {LR} \n\
/* 08047b12 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047b14 */ BL func_0800c604 \n\
/* 08047b18 */ BL func_08006d80 \n\
/* 08047b1c */ BL func_0800c3b8 \n\
/* 08047b20 */ LSLS R0, R0, 0x10 \n\
/* 08047b22 */ LSRS R0, R0, 0x10 \n\
/* 08047b24 */ LDR R1, =D_089edbb8 \n\
/* 08047b26 */ BL func_080087b4 \n\
/* 08047b2a */ LDR R1, =func_08047ae0 \n\
/* 08047b2c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047b2e */ BL func_08005d38 \n\
/* 08047b32 */ POP {R0} \n\
/* 08047b34 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
