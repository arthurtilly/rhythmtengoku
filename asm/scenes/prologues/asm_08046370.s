asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046370 \n\
/* 08046370 */ PUSH {LR} \n\
/* 08046372 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046374 */ BL func_0800c604 \n\
/* 08046378 */ BL func_08006d80 \n\
/* 0804637c */ BL func_0800c3b8 \n\
/* 08046380 */ LSLS R0, R0, 0x10 \n\
/* 08046382 */ LSRS R0, R0, 0x10 \n\
/* 08046384 */ LDR R1, =D_089eb814 \n\
/* 08046386 */ BL func_080087b4 \n\
/* 0804638a */ LDR R1, =func_08046340 \n\
/* 0804638c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804638e */ BL func_08005d38 \n\
/* 08046392 */ POP {R0} \n\
/* 08046394 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
