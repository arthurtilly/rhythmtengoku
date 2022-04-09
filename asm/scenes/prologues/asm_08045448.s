asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045448 \n\
/* 08045448 */ PUSH {LR} \n\
/* 0804544a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804544c */ BL func_0800c604 \n\
/* 08045450 */ BL func_08006d80 \n\
/* 08045454 */ BL func_0800c3b8 \n\
/* 08045458 */ LSLS R0, R0, 0x10 \n\
/* 0804545a */ LSRS R0, R0, 0x10 \n\
/* 0804545c */ LDR R1, =D_089ea514 \n\
/* 0804545e */ BL func_080087b4 \n\
/* 08045462 */ LDR R1, =func_08045418 \n\
/* 08045464 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045466 */ BL func_08005d38 \n\
/* 0804546a */ POP {R0} \n\
/* 0804546c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
