asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start metronome_cue_hit \n\
/* 08035b64 */ PUSH {R4-R6, LR} \n\
/* 08035b66 */ BL gameplay_get_last_hit_offset \n\
/* 08035b6a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08035b6c */ LDR R6, =gSpriteHandler \n\
/* 08035b6e */ LDR R0, [R6] \n\
/* 08035b70 */ LDR R5, =gCurrentEngineData \n\
/* 08035b72 */ LDR R1, [R5] \n\
/* 08035b74 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 08035b76 */ LDRSH R1, [R1, R2] \n\
/* 08035b78 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035b7a */ BL sprite_set_anim_cel \n\
/* 08035b7e */ ADDS R4, 0x5 @ Add 0x5 to R4 \n\
/* 08035b80 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08035b82 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08035b84 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08035b86 */ BL clamp_int32 \n\
/* 08035b8a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08035b8c */ LDR R0, [R6] \n\
/* 08035b8e */ LDR R1, [R5] \n\
/* 08035b90 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08035b92 */ LDRSH R1, [R1, R3] \n\
/* 08035b94 */ LSLS R2, R2, 0x18 \n\
/* 08035b96 */ ASRS R2, R2, 0x18 \n\
/* 08035b98 */ BL sprite_set_anim_cel \n\
/* 08035b9c */ LDR R0, =s_metro_hit_seqData \n\
/* 08035b9e */ BL play_sound \n\
/* 08035ba2 */ LDR R0, =s_metro_hato_seqData \n\
/* 08035ba4 */ BL play_sound \n\
/* 08035ba8 */ POP {R4-R6} \n\
/* 08035baa */ POP {R0} \n\
/* 08035bac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
