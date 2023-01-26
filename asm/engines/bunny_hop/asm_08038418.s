asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_cue_spawn \n\
/* 08038418 */ STRB R2, [R1] \n\
/* 0803841a */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
