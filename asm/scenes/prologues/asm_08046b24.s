asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046b24 \n\
/* 08046b24 */ PUSH {LR} \n\
/* 08046b26 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046b28 */ BL func_0800c604 \n\
/* 08046b2c */ BL func_0800c3b8 \n\
/* 08046b30 */ LSLS R0, R0, 0x10 \n\
/* 08046b32 */ LSRS R0, R0, 0x10 \n\
/* 08046b34 */ LDR R1, =D_089ec5c4 \n\
/* 08046b36 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046b38 */ LSLS R2, R2, 0x6 \n\
/* 08046b3a */ BL func_08002ee0 \n\
/* 08046b3e */ LDR R1, =func_08046b14 \n\
/* 08046b40 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046b42 */ BL func_08005d38 \n\
/* 08046b46 */ POP {R0} \n\
/* 08046b48 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
