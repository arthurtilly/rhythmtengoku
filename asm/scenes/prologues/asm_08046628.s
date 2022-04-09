asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046628 \n\
/* 08046628 */ PUSH {LR} \n\
/* 0804662a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804662c */ BL func_0800c604 \n\
/* 08046630 */ BL func_08017578 \n\
/* 08046634 */ POP {R0} \n\
/* 08046636 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
