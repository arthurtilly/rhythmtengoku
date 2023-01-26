asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_cue_spawn \n\
/* 08040a1c */ STRB R2, [R1] \n\
/* 08040a1e */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
