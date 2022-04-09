asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046638 \n\
/* 08046638 */ PUSH {LR} \n\
/* 0804663a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804663c */ BL func_0800c604 \n\
/* 08046640 */ BL func_0800c3b8 \n\
/* 08046644 */ LSLS R0, R0, 0x10 \n\
/* 08046646 */ LSRS R0, R0, 0x10 \n\
/* 08046648 */ LDR R1, =D_089ebcb0 \n\
/* 0804664a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804664c */ LSLS R2, R2, 0x6 \n\
/* 0804664e */ BL func_08002ee0 \n\
/* 08046652 */ LDR R1, =func_08046628 \n\
/* 08046654 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046656 */ BL func_08005d38 \n\
/* 0804665a */ POP {R0} \n\
/* 0804665c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
