asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_engine_stop \n\
/* 0803d5bc */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
