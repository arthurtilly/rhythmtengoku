asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046860 \n\
/* 08046860 */ PUSH {LR} \n\
/* 08046862 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046864 */ BL func_0800c604 \n\
/* 08046868 */ BL func_08006d80 \n\
/* 0804686c */ BL func_0800c3b8 \n\
/* 08046870 */ LSLS R0, R0, 0x10 \n\
/* 08046872 */ LSRS R0, R0, 0x10 \n\
/* 08046874 */ LDR R1, =D_089ec044 \n\
/* 08046876 */ BL func_080087b4 \n\
/* 0804687a */ LDR R1, =func_08046830 \n\
/* 0804687c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804687e */ BL func_08005d38 \n\
/* 08046882 */ POP {R0} \n\
/* 08046884 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
