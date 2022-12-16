asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ca08 \n\
/* 0801ca08 */ PUSH {LR} \n\
/* 0801ca0a */ LDR R0, =Lesson1_seqData \n\
/* 0801ca0c */ BL get_soundplayer_by_sound \n\
/* 0801ca10 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801ca12 */ LSLS R1, R1, 0x1 \n\
/* 0801ca14 */ BL set_soundplayer_speed \n\
/* 0801ca18 */ POP {R0} \n\
/* 0801ca1a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
