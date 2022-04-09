asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016e84 \n\
/* 08016e84 */ PUSH {LR} \n\
/* 08016e86 */ BL func_080026c4 \n\
/* 08016e8a */ BL func_08016e18 \n\
/* 08016e8e */ POP {R1} \n\
/* 08016e90 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
