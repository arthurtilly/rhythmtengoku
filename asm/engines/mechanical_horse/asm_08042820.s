asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mechanical_horse_cue_barely \n\
/* 08042820 */ PUSH {LR} \n\
/* 08042822 */ BL mechanical_horse_cue_hit \n\
/* 08042826 */ POP {R0} \n\
/* 08042828 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
