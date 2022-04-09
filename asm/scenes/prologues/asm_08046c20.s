asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046c20 \n\
/* 08046c20 */ PUSH {LR} \n\
/* 08046c22 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046c24 */ BL func_0800c604 \n\
/* 08046c28 */ BL func_0800c3b8 \n\
/* 08046c2c */ LSLS R0, R0, 0x10 \n\
/* 08046c2e */ LSRS R0, R0, 0x10 \n\
/* 08046c30 */ LDR R1, =D_089ec7b4 \n\
/* 08046c32 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046c34 */ LSLS R2, R2, 0x6 \n\
/* 08046c36 */ BL func_08002ee0 \n\
/* 08046c3a */ LDR R1, =func_08046c10 \n\
/* 08046c3c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046c3e */ BL func_08005d38 \n\
/* 08046c42 */ POP {R0} \n\
/* 08046c44 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
