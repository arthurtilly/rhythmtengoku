asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803fce4 \n\
/* 0803fce4 */ PUSH {LR} \n\
/* 0803fce6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803fce8 */ BL func_0800c604 \n\
/* 0803fcec */ BL func_0800c3b8 \n\
/* 0803fcf0 */ LSLS R0, R0, 0x10 \n\
/* 0803fcf2 */ LSRS R0, R0, 0x10 \n\
/* 0803fcf4 */ LDR R1, =D_089e8a28 \n\
/* 0803fcf6 */ BL func_080087b4 \n\
/* 0803fcfa */ LDR R1, =func_0803fca4 \n\
/* 0803fcfc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fcfe */ BL func_08005d38 \n\
/* 0803fd02 */ POP {R0} \n\
/* 0803fd04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
