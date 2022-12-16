asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803833c \n\
/* 0803833c */ PUSH {LR} \n\
/* 0803833e */ BL play_sound \n\
/* 08038342 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08038344 */ LSLS R1, R1, 0x1 \n\
/* 08038346 */ BL set_soundplayer_speed \n\
/* 0803834a */ POP {R0} \n\
/* 0803834c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
