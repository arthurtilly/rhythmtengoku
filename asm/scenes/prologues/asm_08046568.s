asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046568 \n\
/* 08046568 */ PUSH {LR} \n\
/* 0804656a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804656c */ BL func_0800c604 \n\
/* 08046570 */ BL func_08006d80 \n\
/* 08046574 */ BL func_0800c3b8 \n\
/* 08046578 */ LSLS R0, R0, 0x10 \n\
/* 0804657a */ LSRS R0, R0, 0x10 \n\
/* 0804657c */ LDR R1, =D_089ebb7c \n\
/* 0804657e */ BL func_080087b4 \n\
/* 08046582 */ LDR R1, =func_08046538 \n\
/* 08046584 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046586 */ BL func_08005d38 \n\
/* 0804658a */ POP {R0} \n\
/* 0804658c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
