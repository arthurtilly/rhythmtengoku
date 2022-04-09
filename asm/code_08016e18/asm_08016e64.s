asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016e64 \n\
/* 08016e64 */ PUSH {LR} \n\
/* 08016e66 */ BL func_0800267c \n\
/* 08016e6a */ BL func_08016e18 \n\
/* 08016e6e */ POP {R1} \n\
/* 08016e70 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
