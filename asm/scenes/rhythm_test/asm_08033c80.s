asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033c80 \n\
/* 08033c80 */ PUSH {LR} \n\
/* 08033c82 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08033c84 */ BL func_0800c604 \n\
/* 08033c88 */ BL func_0800c3b8 \n\
/* 08033c8c */ LSLS R0, R0, 0x10 \n\
/* 08033c8e */ LSRS R0, R0, 0x10 \n\
/* 08033c90 */ LDR R1, =D_089e4f70 \n\
/* 08033c92 */ BL func_080087b4 \n\
/* 08033c96 */ LDR R1, =func_08033c50 \n\
/* 08033c98 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033c9a */ BL func_08005d38 \n\
/* 08033c9e */ POP {R0} \n\
/* 08033ca0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
