asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047e50 \n\
/* 08047e50 */ PUSH {LR} \n\
/* 08047e52 */ BL play_sound \n\
/* 08047e56 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08047e58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047e5a */ BL set_soundplayer_track_volume \n\
/* 08047e5e */ POP {R0} \n\
/* 08047e60 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
