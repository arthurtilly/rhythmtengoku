asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c6c8 \n\
/* 0800c6c8 */ PUSH {LR} \n\
/* 0800c6ca */ BL func_0800c6a4 \n\
/* 0800c6ce */ POP {R0} \n\
/* 0800c6d0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
