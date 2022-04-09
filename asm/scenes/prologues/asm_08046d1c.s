asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046d1c \n\
/* 08046d1c */ PUSH {LR} \n\
/* 08046d1e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046d20 */ BL func_0800c604 \n\
/* 08046d24 */ BL func_0800c3b8 \n\
/* 08046d28 */ LSLS R0, R0, 0x10 \n\
/* 08046d2a */ LSRS R0, R0, 0x10 \n\
/* 08046d2c */ LDR R1, =D_089ec98c \n\
/* 08046d2e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046d30 */ LSLS R2, R2, 0x6 \n\
/* 08046d32 */ BL func_08002ee0 \n\
/* 08046d36 */ LDR R1, =func_08046d0c \n\
/* 08046d38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046d3a */ BL func_08005d38 \n\
/* 08046d3e */ POP {R0} \n\
/* 08046d40 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
