asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046d4c \n\
/* 08046d4c */ PUSH {LR} \n\
/* 08046d4e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046d50 */ BL func_0800c604 \n\
/* 08046d54 */ BL func_08006d80 \n\
/* 08046d58 */ BL func_0800c3b8 \n\
/* 08046d5c */ LSLS R0, R0, 0x10 \n\
/* 08046d5e */ LSRS R0, R0, 0x10 \n\
/* 08046d60 */ LDR R1, =D_089ec988 \n\
/* 08046d62 */ BL func_080087b4 \n\
/* 08046d66 */ LDR R1, =func_08046d1c \n\
/* 08046d68 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046d6a */ BL func_08005d38 \n\
/* 08046d6e */ POP {R0} \n\
/* 08046d70 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
