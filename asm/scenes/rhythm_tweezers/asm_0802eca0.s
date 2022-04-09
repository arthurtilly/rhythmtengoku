asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802eca0 \n\
/* 0802eca0 */ PUSH {LR} \n\
/* 0802eca2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802eca4 */ BL func_0800c604 \n\
/* 0802eca8 */ BL func_0800c3b8 \n\
/* 0802ecac */ LSLS R0, R0, 0x10 \n\
/* 0802ecae */ LSRS R0, R0, 0x10 \n\
/* 0802ecb0 */ LDR R1, =D_089e3db0 \n\
/* 0802ecb2 */ BL func_080087b4 \n\
/* 0802ecb6 */ LDR R1, =func_0802ec60 \n\
/* 0802ecb8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ecba */ BL func_08005d38 \n\
/* 0802ecbe */ POP {R0} \n\
/* 0802ecc0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
