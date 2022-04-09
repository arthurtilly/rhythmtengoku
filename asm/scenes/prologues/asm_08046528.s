asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046528 \n\
/* 08046528 */ PUSH {LR} \n\
/* 0804652a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804652c */ BL func_0800c604 \n\
/* 08046530 */ BL func_08017578 \n\
/* 08046534 */ POP {R0} \n\
/* 08046536 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
