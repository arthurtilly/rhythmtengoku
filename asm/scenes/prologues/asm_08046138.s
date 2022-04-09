asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046138 \n\
/* 08046138 */ PUSH {LR} \n\
/* 0804613a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804613c */ BL func_0800c604 \n\
/* 08046140 */ BL func_08006d80 \n\
/* 08046144 */ BL func_0800c3b8 \n\
/* 08046148 */ LSLS R0, R0, 0x10 \n\
/* 0804614a */ LSRS R0, R0, 0x10 \n\
/* 0804614c */ LDR R1, =D_089eb530 \n\
/* 0804614e */ BL func_080087b4 \n\
/* 08046152 */ LDR R1, =func_08046108 \n\
/* 08046154 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046156 */ BL func_08005d38 \n\
/* 0804615a */ POP {R0} \n\
/* 0804615c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
