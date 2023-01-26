asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_cue_spawn \n\
/* 0803d5c0 */ STR R2, [R1] \n\
/* 0803d5c2 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
