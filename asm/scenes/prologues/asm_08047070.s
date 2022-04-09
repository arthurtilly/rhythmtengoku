asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047070 \n\
/* 08047070 */ PUSH {LR} \n\
/* 08047072 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047074 */ BL func_0800c604 \n\
/* 08047078 */ BL func_0800c3b8 \n\
/* 0804707c */ LSLS R0, R0, 0x10 \n\
/* 0804707e */ LSRS R0, R0, 0x10 \n\
/* 08047080 */ LDR R1, =D_089ece84 \n\
/* 08047082 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08047084 */ LSLS R2, R2, 0x6 \n\
/* 08047086 */ BL func_08002ee0 \n\
/* 0804708a */ LDR R1, =func_08047060 \n\
/* 0804708c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804708e */ BL func_08005d38 \n\
/* 08047092 */ POP {R0} \n\
/* 08047094 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
