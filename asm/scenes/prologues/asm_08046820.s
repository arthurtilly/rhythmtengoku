asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046820 \n\
/* 08046820 */ PUSH {LR} \n\
/* 08046822 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046824 */ BL func_0800c604 \n\
/* 08046828 */ BL func_08017578 \n\
/* 0804682c */ POP {R0} \n\
/* 0804682e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
