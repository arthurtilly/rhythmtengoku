asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_engine_event_stub \n\
/* 080343b4 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
