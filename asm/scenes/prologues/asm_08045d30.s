asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045d30 \n\
/* 08045d30 */ PUSH {LR} \n\
/* 08045d32 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045d34 */ BL func_0800c604 \n\
/* 08045d38 */ BL func_08006d80 \n\
/* 08045d3c */ BL func_0800c3b8 \n\
/* 08045d40 */ LSLS R0, R0, 0x10 \n\
/* 08045d42 */ LSRS R0, R0, 0x10 \n\
/* 08045d44 */ LDR R1, =D_089eae84 \n\
/* 08045d46 */ BL func_080087b4 \n\
/* 08045d4a */ LDR R1, =func_08045d00 \n\
/* 08045d4c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045d4e */ BL func_08005d38 \n\
/* 08045d52 */ POP {R0} \n\
/* 08045d54 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
