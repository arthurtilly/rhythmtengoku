asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016e54 \n\
/* 08016e54 */ PUSH {LR} \n\
/* 08016e56 */ BL func_08002634 \n\
/* 08016e5a */ BL func_08016e18 \n\
/* 08016e5e */ POP {R1} \n\
/* 08016e60 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
