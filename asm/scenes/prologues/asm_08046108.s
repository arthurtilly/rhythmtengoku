asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046108 \n\
/* 08046108 */ PUSH {LR} \n\
/* 0804610a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804610c */ BL func_0800c604 \n\
/* 08046110 */ BL func_0800c3b8 \n\
/* 08046114 */ LSLS R0, R0, 0x10 \n\
/* 08046116 */ LSRS R0, R0, 0x10 \n\
/* 08046118 */ LDR R1, =D_089eb534 \n\
/* 0804611a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804611c */ LSLS R2, R2, 0x6 \n\
/* 0804611e */ BL func_08002ee0 \n\
/* 08046122 */ LDR R1, =func_080460f8 \n\
/* 08046124 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046126 */ BL func_08005d38 \n\
/* 0804612a */ POP {R0} \n\
/* 0804612c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
