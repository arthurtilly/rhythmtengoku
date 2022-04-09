asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046a58 \n\
/* 08046a58 */ PUSH {LR} \n\
/* 08046a5a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046a5c */ BL func_0800c604 \n\
/* 08046a60 */ BL func_08006d80 \n\
/* 08046a64 */ BL func_0800c3b8 \n\
/* 08046a68 */ LSLS R0, R0, 0x10 \n\
/* 08046a6a */ LSRS R0, R0, 0x10 \n\
/* 08046a6c */ LDR R1, =D_089ec3e8 \n\
/* 08046a6e */ BL func_080087b4 \n\
/* 08046a72 */ LDR R1, =func_08046a28 \n\
/* 08046a74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046a76 */ BL func_08005d38 \n\
/* 08046a7a */ POP {R0} \n\
/* 08046a7c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
