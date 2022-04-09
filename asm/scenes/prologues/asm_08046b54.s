asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046b54 \n\
/* 08046b54 */ PUSH {LR} \n\
/* 08046b56 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046b58 */ BL func_0800c604 \n\
/* 08046b5c */ BL func_08006d80 \n\
/* 08046b60 */ BL func_0800c3b8 \n\
/* 08046b64 */ LSLS R0, R0, 0x10 \n\
/* 08046b66 */ LSRS R0, R0, 0x10 \n\
/* 08046b68 */ LDR R1, =D_089ec5c0 \n\
/* 08046b6a */ BL func_080087b4 \n\
/* 08046b6e */ LDR R1, =func_08046b24 \n\
/* 08046b70 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046b72 */ BL func_08005d38 \n\
/* 08046b76 */ POP {R0} \n\
/* 08046b78 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
