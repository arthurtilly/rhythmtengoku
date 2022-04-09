asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803dd58 \n\
/* 0803dd58 */ PUSH {LR} \n\
/* 0803dd5a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803dd5c */ BL func_0800c604 \n\
/* 0803dd60 */ BL func_0800c3b8 \n\
/* 0803dd64 */ LSLS R0, R0, 0x10 \n\
/* 0803dd66 */ LSRS R0, R0, 0x10 \n\
/* 0803dd68 */ LDR R1, =D_089e7e14 \n\
/* 0803dd6a */ BL func_080087b4 \n\
/* 0803dd6e */ LDR R1, =func_0803dd18 \n\
/* 0803dd70 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803dd72 */ BL func_08005d38 \n\
/* 0803dd76 */ POP {R0} \n\
/* 0803dd78 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
