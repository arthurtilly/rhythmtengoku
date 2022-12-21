asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_cue_barely \n\
/* 080234f4 */ PUSH {LR} \n\
/* 080234f6 */ BL mannequin_cue_hit \n\
/* 080234fa */ POP {R0} \n\
/* 080234fc */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
