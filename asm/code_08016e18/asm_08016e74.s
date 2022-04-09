asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016e74 \n\
/* 08016e74 */ PUSH {LR} \n\
/* 08016e76 */ BL func_08002698 \n\
/* 08016e7a */ BL func_08016e18 \n\
/* 08016e7e */ POP {R1} \n\
/* 08016e80 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
