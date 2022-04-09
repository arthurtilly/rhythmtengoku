asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046668 \n\
/* 08046668 */ PUSH {LR} \n\
/* 0804666a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804666c */ BL func_0800c604 \n\
/* 08046670 */ BL func_08006d80 \n\
/* 08046674 */ BL func_0800c3b8 \n\
/* 08046678 */ LSLS R0, R0, 0x10 \n\
/* 0804667a */ LSRS R0, R0, 0x10 \n\
/* 0804667c */ LDR R1, =D_089ebcac \n\
/* 0804667e */ BL func_080087b4 \n\
/* 08046682 */ LDR R1, =func_08046638 \n\
/* 08046684 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046686 */ BL func_08005d38 \n\
/* 0804668a */ POP {R0} \n\
/* 0804668c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
