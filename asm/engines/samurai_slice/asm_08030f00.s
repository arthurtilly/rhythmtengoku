asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_engine_event_stub \n\
/* 08030f00 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
