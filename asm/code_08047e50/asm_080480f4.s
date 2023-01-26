asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080480f4 \n\
/* 080480f4 */ PUSH {LR} \n\
/* 080480f6 */ LDR R1, =s_studio_bgm_seqData \n\
/* 080480f8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080480fa */ BL play_sound_in_player \n\
/* 080480fe */ POP {R0} \n\
/* 08048100 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
