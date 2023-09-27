asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047ea4 \n\
/* 08047ea4 */ PUSH {R4, LR} \n\
/* 08047ea6 */ LDR R1, =L2_pat00_seqData \n\
/* 08047ea8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047eaa */ BL play_sound_in_player \n\
/* 08047eae */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08047eb0 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08047eb2 */ BL ticks_to_frames \n\
/* 08047eb6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08047eb8 */ LSLS R1, R1, 0x10 \n\
/* 08047eba */ LSRS R1, R1, 0x10 \n\
/* 08047ebc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08047ebe */ BL fade_in_soundplayer \n\
/* 08047ec2 */ POP {R4} \n\
/* 08047ec4 */ POP {R0} \n\
/* 08047ec6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
