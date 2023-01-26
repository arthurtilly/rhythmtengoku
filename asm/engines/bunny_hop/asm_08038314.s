asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038314 \n\
/* 08038314 */ PUSH {R4, LR} \n\
/* 08038316 */ LDR R4, =bunny_hop_bgm_drum_fills \n\
/* 08038318 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0803831a */ BL agb_random \n\
/* 0803831e */ LSLS R0, R0, 0x10 \n\
/* 08038320 */ LSRS R0, R0, 0xE \n\
/* 08038322 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08038324 */ LDR R0, [R0] \n\
/* 08038326 */ BL play_sound \n\
/* 0803832a */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803832c */ LSLS R1, R1, 0x1 \n\
/* 0803832e */ BL set_soundplayer_speed \n\
/* 08038332 */ POP {R4} \n\
/* 08038334 */ POP {R0} \n\
/* 08038336 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
