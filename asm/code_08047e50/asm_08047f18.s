asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047f18 \n\
/* 08047f18 */ PUSH {LR} \n\
/* 08047f1a */ BL play_sound \n\
/* 08047f1e */ MOVS R1, 0xC7 @ Set R1 to 0xC7 \n\
/* 08047f20 */ BL set_soundplayer_speed \n\
/* 08047f24 */ POP {R0} \n\
/* 08047f26 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
