asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080470a0 \n\
/* 080470a0 */ PUSH {LR} \n\
/* 080470a2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080470a4 */ BL func_0800c604 \n\
/* 080470a8 */ BL func_08006d80 \n\
/* 080470ac */ BL func_0800c3b8 \n\
/* 080470b0 */ LSLS R0, R0, 0x10 \n\
/* 080470b2 */ LSRS R0, R0, 0x10 \n\
/* 080470b4 */ LDR R1, =D_089ece80 \n\
/* 080470b6 */ BL func_080087b4 \n\
/* 080470ba */ LDR R1, =func_08047070 \n\
/* 080470bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080470be */ BL func_08005d38 \n\
/* 080470c2 */ POP {R0} \n\
/* 080470c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
