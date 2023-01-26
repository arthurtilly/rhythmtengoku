asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080481ac \n\
/* 080481ac */ PUSH {LR} \n\
/* 080481ae */ LDR R1, =s_studio_bgm_seqData \n\
/* 080481b0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080481b2 */ BL play_sound_in_player \n\
/* 080481b6 */ POP {R0} \n\
/* 080481b8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
