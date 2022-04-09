asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045ff4 \n\
/* 08045ff4 */ PUSH {LR} \n\
/* 08045ff6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045ff8 */ BL func_0800c604 \n\
/* 08045ffc */ BL func_0800c3b8 \n\
/* 08046000 */ LSLS R0, R0, 0x10 \n\
/* 08046002 */ LSRS R0, R0, 0x10 \n\
/* 08046004 */ LDR R1, =D_089eb380 \n\
/* 08046006 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046008 */ LSLS R2, R2, 0x6 \n\
/* 0804600a */ BL func_08002ee0 \n\
/* 0804600e */ LDR R1, =func_08045fe4 \n\
/* 08046010 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046012 */ BL func_08005d38 \n\
/* 08046016 */ POP {R0} \n\
/* 08046018 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
