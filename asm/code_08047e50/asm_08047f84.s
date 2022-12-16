asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047f84 \n\
/* 08047f84 */ PUSH {LR} \n\
/* 08047f86 */ LDR R1, =s_studio_bgm_seqData \n\
/* 08047f88 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08047f8a */ BL play_sound_in_player \n\
/* 08047f8e */ POP {R0} \n\
/* 08047f90 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
