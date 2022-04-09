asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030c88 \n\
/* 08030c88 */ PUSH {LR} \n\
/* 08030c8a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030c8c */ BL func_0800c604 \n\
/* 08030c90 */ BL func_0800c3b8 \n\
/* 08030c94 */ LSLS R0, R0, 0x10 \n\
/* 08030c96 */ LSRS R0, R0, 0x10 \n\
/* 08030c98 */ LDR R1, =D_089e4798 \n\
/* 08030c9a */ BL func_080087b4 \n\
/* 08030c9e */ LDR R1, =func_08030c58 \n\
/* 08030ca0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030ca2 */ BL func_08005d38 \n\
/* 08030ca6 */ POP {R0} \n\
/* 08030ca8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
