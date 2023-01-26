asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_test_engine_stop \n\
/* 08034014 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
