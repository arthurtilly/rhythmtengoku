asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_cue_spawn \n\
/* 08024d48 */ STRB R2, [R1] \n\
/* 08024d4a */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
