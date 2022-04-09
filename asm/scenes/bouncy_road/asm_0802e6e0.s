asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e6e0 \n\
/* 0802e6e0 */ PUSH {LR} \n\
/* 0802e6e2 */ BL func_0802e650 \n\
/* 0802e6e6 */ POP {R0} \n\
/* 0802e6e8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
