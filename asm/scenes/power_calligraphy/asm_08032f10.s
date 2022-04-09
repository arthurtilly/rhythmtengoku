asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032f10 \n\
/* 08032f10 */ PUSH {LR} \n\
/* 08032f12 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08032f14 */ BL func_0800c604 \n\
/* 08032f18 */ BL func_0800c3b8 \n\
/* 08032f1c */ LSLS R0, R0, 0x10 \n\
/* 08032f1e */ LSRS R0, R0, 0x10 \n\
/* 08032f20 */ LDR R1, =D_089e4990 \n\
/* 08032f22 */ BL func_080087b4 \n\
/* 08032f26 */ LDR R1, =func_08032ee0 \n\
/* 08032f28 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032f2a */ BL func_08005d38 \n\
/* 08032f2e */ POP {R0} \n\
/* 08032f30 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
