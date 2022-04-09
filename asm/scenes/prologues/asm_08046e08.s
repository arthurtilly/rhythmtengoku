asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046e08 \n\
/* 08046e08 */ PUSH {LR} \n\
/* 08046e0a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046e0c */ BL func_0800c604 \n\
/* 08046e10 */ BL func_08017578 \n\
/* 08046e14 */ POP {R0} \n\
/* 08046e16 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
