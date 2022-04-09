asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046c50 \n\
/* 08046c50 */ PUSH {LR} \n\
/* 08046c52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046c54 */ BL func_0800c604 \n\
/* 08046c58 */ BL func_08006d80 \n\
/* 08046c5c */ BL func_0800c3b8 \n\
/* 08046c60 */ LSLS R0, R0, 0x10 \n\
/* 08046c62 */ LSRS R0, R0, 0x10 \n\
/* 08046c64 */ LDR R1, =D_089ec7b0 \n\
/* 08046c66 */ BL func_080087b4 \n\
/* 08046c6a */ LDR R1, =func_08046c20 \n\
/* 08046c6c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046c6e */ BL func_08005d38 \n\
/* 08046c72 */ POP {R0} \n\
/* 08046c74 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
