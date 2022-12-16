asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048098 \n\
/* 08048098 */ PUSH {LR} \n\
/* 0804809a */ LDR R1, =s_studio_bgm_seqData \n\
/* 0804809c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804809e */ BL play_sound_in_player \n\
/* 080480a2 */ POP {R0} \n\
/* 080480a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
