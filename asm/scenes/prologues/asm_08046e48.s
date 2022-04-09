asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046e48 \n\
/* 08046e48 */ PUSH {LR} \n\
/* 08046e4a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046e4c */ BL func_0800c604 \n\
/* 08046e50 */ BL func_08006d80 \n\
/* 08046e54 */ BL func_0800c3b8 \n\
/* 08046e58 */ LSLS R0, R0, 0x10 \n\
/* 08046e5a */ LSRS R0, R0, 0x10 \n\
/* 08046e5c */ LDR R1, =D_089ecb60 \n\
/* 08046e5e */ BL func_080087b4 \n\
/* 08046e62 */ LDR R1, =func_08046e18 \n\
/* 08046e64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046e66 */ BL func_08005d38 \n\
/* 08046e6a */ POP {R0} \n\
/* 08046e6c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
