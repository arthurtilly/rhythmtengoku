asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_cue_spawn \n\
/* 08034884 */ STRB R2, [R1] \n\
/* 08034886 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
