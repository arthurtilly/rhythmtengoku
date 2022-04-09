asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045e2c \n\
/* 08045e2c */ PUSH {LR} \n\
/* 08045e2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045e30 */ BL func_0800c604 \n\
/* 08045e34 */ BL func_08006d80 \n\
/* 08045e38 */ BL func_0800c3b8 \n\
/* 08045e3c */ LSLS R0, R0, 0x10 \n\
/* 08045e3e */ LSRS R0, R0, 0x10 \n\
/* 08045e40 */ LDR R1, =D_089eb014 \n\
/* 08045e42 */ BL func_080087b4 \n\
/* 08045e46 */ LDR R1, =func_08045dfc \n\
/* 08045e48 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045e4a */ BL func_08005d38 \n\
/* 08045e4e */ POP {R0} \n\
/* 08045e50 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
