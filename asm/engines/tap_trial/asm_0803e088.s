asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_engine_event_stub \n\
/* 0803e088 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
