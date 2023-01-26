asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ca20 \n\
/* 0801ca20 */ PUSH {LR} \n\
/* 0801ca22 */ LDR R0, =Lesson1_seqData \n\
/* 0801ca24 */ BL get_soundplayer_by_sound \n\
/* 0801ca28 */ BL stop_soundplayer \n\
/* 0801ca2c */ POP {R0} \n\
/* 0801ca2e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
