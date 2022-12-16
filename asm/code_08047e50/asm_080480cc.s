asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080480cc \n\
/* 080480cc */ PUSH {LR} \n\
/* 080480ce */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080480d0 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080480d2 */ BEQ branch_080480e4 \n\
/* 080480d4 */ LDR R1, =s_intro_stick_seqData \n\
/* 080480d6 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080480d8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080480da */ BL play_sound_in_player_w_pitch_volume \n\
/* 080480de */ B branch_080480ec \n\
\n\
.ltorg \n\
 \n\
branch_080480e4: \n\
/* 080480e4 */ LDR R1, =s_intro_stick_seqData \n\
/* 080480e6 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080480e8 */ BL play_sound_in_player \n\
 \n\
branch_080480ec: \n\
/* 080480ec */ POP {R0} \n\
/* 080480ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
