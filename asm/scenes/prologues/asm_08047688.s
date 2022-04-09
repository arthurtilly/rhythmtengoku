asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047688 \n\
/* 08047688 */ PUSH {LR} \n\
/* 0804768a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804768c */ BL func_0800c604 \n\
/* 08047690 */ BL func_0800c3b8 \n\
/* 08047694 */ LSLS R0, R0, 0x10 \n\
/* 08047696 */ LSRS R0, R0, 0x10 \n\
/* 08047698 */ LDR R1, =D_089ed54c \n\
/* 0804769a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804769c */ LSLS R2, R2, 0x6 \n\
/* 0804769e */ BL func_08002ee0 \n\
/* 080476a2 */ LDR R1, =func_08047678 \n\
/* 080476a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080476a6 */ BL func_08005d38 \n\
/* 080476aa */ POP {R0} \n\
/* 080476ac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
