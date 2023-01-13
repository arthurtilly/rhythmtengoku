asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_engine_stop \n\
/* 08040a18 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
