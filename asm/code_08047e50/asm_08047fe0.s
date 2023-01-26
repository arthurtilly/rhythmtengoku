asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047fe0 \n\
/* 08047fe0 */ PUSH {LR} \n\
/* 08047fe2 */ LDR R1, =s_studio_bgm_seqData \n\
/* 08047fe4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08047fe6 */ BL play_sound_in_player \n\
/* 08047fea */ POP {R0} \n\
/* 08047fec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
