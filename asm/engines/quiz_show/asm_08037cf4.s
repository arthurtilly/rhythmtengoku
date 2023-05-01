asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start quiz_show_engine_update \n\
/* 08037cf4 */ PUSH {LR} \n\
/* 08037cf6 */ BL func_08037378 \n\
/* 08037cfa */ POP {R0} \n\
/* 08037cfc */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
