asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_engine_update \n\
/* 0803e4e0 */ PUSH {LR} \n\
/* 0803e4e2 */ BL func_0803e48c \n\
/* 0803e4e6 */ BL func_0803e4a4 \n\
/* 0803e4ea */ BL func_0803e4bc \n\
/* 0803e4ee */ BL func_0803e368 \n\
/* 0803e4f2 */ BL update_drumtech \n\
/* 0803e4f6 */ POP {R0} \n\
/* 0803e4f8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
