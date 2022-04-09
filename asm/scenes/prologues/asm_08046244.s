asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046244 \n\
/* 08046244 */ PUSH {LR} \n\
/* 08046246 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046248 */ BL func_0800c604 \n\
/* 0804624c */ BL func_0800c3b8 \n\
/* 08046250 */ LSLS R0, R0, 0x10 \n\
/* 08046252 */ LSRS R0, R0, 0x10 \n\
/* 08046254 */ LDR R1, =D_089eb670 \n\
/* 08046256 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046258 */ LSLS R2, R2, 0x6 \n\
/* 0804625a */ BL func_08002ee0 \n\
/* 0804625e */ LDR R1, =func_08046234 \n\
/* 08046260 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046262 */ BL func_08005d38 \n\
/* 08046266 */ POP {R0} \n\
/* 08046268 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
