asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046724 \n\
/* 08046724 */ PUSH {LR} \n\
/* 08046726 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046728 */ BL func_0800c604 \n\
/* 0804672c */ BL func_08017578 \n\
/* 08046730 */ POP {R0} \n\
/* 08046732 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
