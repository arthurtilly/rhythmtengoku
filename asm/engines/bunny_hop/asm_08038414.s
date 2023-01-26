asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_engine_stop \n\
/* 08038414 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
