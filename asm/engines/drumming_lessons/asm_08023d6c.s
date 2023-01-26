asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_cue_miss_auto \n\
/* 08023d6c */ PUSH {LR} \n\
/* 08023d6e */ BL beatscript_enable_loops \n\
/* 08023d72 */ POP {R0} \n\
/* 08023d74 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
