asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_engine_stop \n\
/* 08034880 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
