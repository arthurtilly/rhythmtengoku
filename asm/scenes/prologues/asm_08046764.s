asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046764 \n\
/* 08046764 */ PUSH {LR} \n\
/* 08046766 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046768 */ BL func_0800c604 \n\
/* 0804676c */ BL func_08006d80 \n\
/* 08046770 */ BL func_0800c3b8 \n\
/* 08046774 */ LSLS R0, R0, 0x10 \n\
/* 08046776 */ LSRS R0, R0, 0x10 \n\
/* 08046778 */ LDR R1, =D_089ebe78 \n\
/* 0804677a */ BL func_080087b4 \n\
/* 0804677e */ LDR R1, =func_08046734 \n\
/* 08046780 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046782 */ BL func_08005d38 \n\
/* 08046786 */ POP {R0} \n\
/* 08046788 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
