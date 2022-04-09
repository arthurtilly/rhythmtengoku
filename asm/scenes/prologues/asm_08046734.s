asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046734 \n\
/* 08046734 */ PUSH {LR} \n\
/* 08046736 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046738 */ BL func_0800c604 \n\
/* 0804673c */ BL func_0800c3b8 \n\
/* 08046740 */ LSLS R0, R0, 0x10 \n\
/* 08046742 */ LSRS R0, R0, 0x10 \n\
/* 08046744 */ LDR R1, =D_089ebe7c \n\
/* 08046746 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046748 */ LSLS R2, R2, 0x6 \n\
/* 0804674a */ BL func_08002ee0 \n\
/* 0804674e */ LDR R1, =func_08046724 \n\
/* 08046750 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046752 */ BL func_08005d38 \n\
/* 08046756 */ POP {R0} \n\
/* 08046758 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
