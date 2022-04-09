asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046024 \n\
/* 08046024 */ PUSH {LR} \n\
/* 08046026 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046028 */ BL func_0800c604 \n\
/* 0804602c */ BL func_08006d80 \n\
/* 08046030 */ BL func_0800c3b8 \n\
/* 08046034 */ LSLS R0, R0, 0x10 \n\
/* 08046036 */ LSRS R0, R0, 0x10 \n\
/* 08046038 */ LDR R1, =D_089eb37c \n\
/* 0804603a */ BL func_080087b4 \n\
/* 0804603e */ LDR R1, =func_08045ff4 \n\
/* 08046040 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046042 */ BL func_08005d38 \n\
/* 08046046 */ POP {R0} \n\
/* 08046048 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
