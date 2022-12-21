asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_engine_stop \n\
/* 08023400 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
