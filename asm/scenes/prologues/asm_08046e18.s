asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046e18 \n\
/* 08046e18 */ PUSH {LR} \n\
/* 08046e1a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046e1c */ BL func_0800c604 \n\
/* 08046e20 */ BL func_0800c3b8 \n\
/* 08046e24 */ LSLS R0, R0, 0x10 \n\
/* 08046e26 */ LSRS R0, R0, 0x10 \n\
/* 08046e28 */ LDR R1, =D_089ecb64 \n\
/* 08046e2a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046e2c */ LSLS R2, R2, 0x6 \n\
/* 08046e2e */ BL func_08002ee0 \n\
/* 08046e32 */ LDR R1, =func_08046e08 \n\
/* 08046e34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046e36 */ BL func_08005d38 \n\
/* 08046e3a */ POP {R0} \n\
/* 08046e3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
