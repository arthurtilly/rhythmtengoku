asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c9ec \n\
/* 0801c9ec */ PUSH {LR} \n\
/* 0801c9ee */ LDR R1, =Lesson1_seqData \n\
/* 0801c9f0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801c9f2 */ BL play_sound_in_player \n\
/* 0801c9f6 */ LDR R1, =0x117 \n\
/* 0801c9f8 */ BL set_soundplayer_speed \n\
/* 0801c9fc */ POP {R0} \n\
/* 0801c9fe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
