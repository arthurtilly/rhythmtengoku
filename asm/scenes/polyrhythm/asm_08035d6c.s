asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035d6c \n\
/* 08035d6c */ PUSH {LR} \n\
/* 08035d6e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035d70 */ BL func_0800c604 \n\
/* 08035d74 */ BL func_0800c3b8 \n\
/* 08035d78 */ LSLS R0, R0, 0x10 \n\
/* 08035d7a */ LSRS R0, R0, 0x10 \n\
/* 08035d7c */ LDR R1, =D_089e5968 \n\
/* 08035d7e */ BL func_080087b4 \n\
/* 08035d82 */ LDR R1, =func_08035d2c \n\
/* 08035d84 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035d86 */ BL func_08005d38 \n\
/* 08035d8a */ POP {R0} \n\
/* 08035d8c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
