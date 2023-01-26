asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c4b0 \n\
/* 0802c4b0 */ PUSH {LR} \n\
/* 0802c4b2 */ LDR R0, =s_rat_stop_seqData \n\
/* 0802c4b4 */ BL play_sound \n\
/* 0802c4b8 */ POP {R0} \n\
/* 0802c4ba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
