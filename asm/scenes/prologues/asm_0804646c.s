asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804646c \n\
/* 0804646c */ PUSH {LR} \n\
/* 0804646e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046470 */ BL func_0800c604 \n\
/* 08046474 */ BL func_08006d80 \n\
/* 08046478 */ BL func_0800c3b8 \n\
/* 0804647c */ LSLS R0, R0, 0x10 \n\
/* 0804647e */ LSRS R0, R0, 0x10 \n\
/* 08046480 */ LDR R1, =D_089eb9bc \n\
/* 08046482 */ BL func_080087b4 \n\
/* 08046486 */ LDR R1, =func_0804643c \n\
/* 08046488 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804648a */ BL func_08005d38 \n\
/* 0804648e */ POP {R0} \n\
/* 08046490 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
