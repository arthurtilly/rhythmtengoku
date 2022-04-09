asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804643c \n\
/* 0804643c */ PUSH {LR} \n\
/* 0804643e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046440 */ BL func_0800c604 \n\
/* 08046444 */ BL func_0800c3b8 \n\
/* 08046448 */ LSLS R0, R0, 0x10 \n\
/* 0804644a */ LSRS R0, R0, 0x10 \n\
/* 0804644c */ LDR R1, =D_089eb9c0 \n\
/* 0804644e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046450 */ LSLS R2, R2, 0x6 \n\
/* 08046452 */ BL func_08002ee0 \n\
/* 08046456 */ LDR R1, =func_0804642c \n\
/* 08046458 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804645a */ BL func_08005d38 \n\
/* 0804645e */ POP {R0} \n\
/* 08046460 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
