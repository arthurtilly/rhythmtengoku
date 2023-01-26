asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804803c \n\
/* 0804803c */ PUSH {LR} \n\
/* 0804803e */ LDR R1, =s_studio_bgm_seqData \n\
/* 08048040 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08048042 */ BL play_sound_in_player \n\
/* 08048046 */ POP {R0} \n\
/* 08048048 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
