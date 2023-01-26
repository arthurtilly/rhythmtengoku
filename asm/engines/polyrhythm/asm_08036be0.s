asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start polyrhythm_event_play_applause \n\
/* 08036be0 */ PUSH {LR} \n\
/* 08036be2 */ BL polyrhythm_play_applause \n\
/* 08036be6 */ POP {R0} \n\
/* 08036be8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
