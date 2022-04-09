asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d088 \n\
/* 0803d088 */ PUSH {LR} \n\
/* 0803d08a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d08c */ BL func_0800c604 \n\
/* 0803d090 */ BL func_0800c3b8 \n\
/* 0803d094 */ LSLS R0, R0, 0x10 \n\
/* 0803d096 */ LSRS R0, R0, 0x10 \n\
/* 0803d098 */ LDR R1, =D_089e6d74 \n\
/* 0803d09a */ BL func_080087b4 \n\
/* 0803d09e */ LDR R1, =func_0803d048 \n\
/* 0803d0a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d0a2 */ BL func_08005d38 \n\
/* 0803d0a6 */ POP {R0} \n\
/* 0803d0a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
