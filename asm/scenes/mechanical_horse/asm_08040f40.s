asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040f40 \n\
/* 08040f40 */ PUSH {LR} \n\
/* 08040f42 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08040f44 */ BL func_0800c604 \n\
/* 08040f48 */ BL func_0800c3b8 \n\
/* 08040f4c */ LSLS R0, R0, 0x10 \n\
/* 08040f4e */ LSRS R0, R0, 0x10 \n\
/* 08040f50 */ LDR R1, =D_089e8dcc \n\
/* 08040f52 */ BL func_080087b4 \n\
/* 08040f56 */ LDR R1, =func_08040f10 \n\
/* 08040f58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040f5a */ BL func_08005d38 \n\
/* 08040f5e */ POP {R0} \n\
/* 08040f60 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
