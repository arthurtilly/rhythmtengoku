asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start clappy_trio_engine_stop \n\
/* 080308b8 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
