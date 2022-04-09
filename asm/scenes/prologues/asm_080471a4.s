asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080471a4 \n\
/* 080471a4 */ PUSH {LR} \n\
/* 080471a6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080471a8 */ BL func_0800c604 \n\
/* 080471ac */ BL func_08006d80 \n\
/* 080471b0 */ BL func_0800c3b8 \n\
/* 080471b4 */ LSLS R0, R0, 0x10 \n\
/* 080471b6 */ LSRS R0, R0, 0x10 \n\
/* 080471b8 */ LDR R1, =D_089ecfbc \n\
/* 080471ba */ BL func_080087b4 \n\
/* 080471be */ LDR R1, =func_08047174 \n\
/* 080471c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080471c2 */ BL func_08005d38 \n\
/* 080471c6 */ POP {R0} \n\
/* 080471c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
