asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046340 \n\
/* 08046340 */ PUSH {LR} \n\
/* 08046342 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046344 */ BL func_0800c604 \n\
/* 08046348 */ BL func_0800c3b8 \n\
/* 0804634c */ LSLS R0, R0, 0x10 \n\
/* 0804634e */ LSRS R0, R0, 0x10 \n\
/* 08046350 */ LDR R1, =D_089eb818 \n\
/* 08046352 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046354 */ LSLS R2, R2, 0x6 \n\
/* 08046356 */ BL func_08002ee0 \n\
/* 0804635a */ LDR R1, =func_08046330 \n\
/* 0804635c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804635e */ BL func_08005d38 \n\
/* 08046362 */ POP {R0} \n\
/* 08046364 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
