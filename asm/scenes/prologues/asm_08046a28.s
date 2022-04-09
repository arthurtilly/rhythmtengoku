asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046a28 \n\
/* 08046a28 */ PUSH {LR} \n\
/* 08046a2a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046a2c */ BL func_0800c604 \n\
/* 08046a30 */ BL func_0800c3b8 \n\
/* 08046a34 */ LSLS R0, R0, 0x10 \n\
/* 08046a36 */ LSRS R0, R0, 0x10 \n\
/* 08046a38 */ LDR R1, =D_089ec3ec \n\
/* 08046a3a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046a3c */ LSLS R2, R2, 0x6 \n\
/* 08046a3e */ BL func_08002ee0 \n\
/* 08046a42 */ LDR R1, =func_08046a18 \n\
/* 08046a44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046a46 */ BL func_08005d38 \n\
/* 08046a4a */ POP {R0} \n\
/* 08046a4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
