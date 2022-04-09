asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045f28 \n\
/* 08045f28 */ PUSH {LR} \n\
/* 08045f2a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045f2c */ BL func_0800c604 \n\
/* 08045f30 */ BL func_08006d80 \n\
/* 08045f34 */ BL func_0800c3b8 \n\
/* 08045f38 */ LSLS R0, R0, 0x10 \n\
/* 08045f3a */ LSRS R0, R0, 0x10 \n\
/* 08045f3c */ LDR R1, =D_089eb1c8 \n\
/* 08045f3e */ BL func_080087b4 \n\
/* 08045f42 */ LDR R1, =func_08045ef8 \n\
/* 08045f44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045f46 */ BL func_08005d38 \n\
/* 08045f4a */ POP {R0} \n\
/* 08045f4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
