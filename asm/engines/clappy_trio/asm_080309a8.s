asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start clappy_trio_cue_barely \n\
/* 080309a8 */ PUSH {R4, LR} \n\
/* 080309aa */ SUB SP, 0xC \n\
/* 080309ac */ LDR R0, =gCurrentEngineData \n\
/* 080309ae */ LDR R4, [R0] \n\
/* 080309b0 */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 080309b2 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080309b4 */ BL clappy_trio_get_anim \n\
/* 080309b8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080309ba */ LDR R0, =gSpriteHandler \n\
/* 080309bc */ LDR R0, [R0] \n\
/* 080309be */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 080309c0 */ LDRSH R1, [R4, R3] \n\
/* 080309c2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080309c4 */ STR R3, [SP] \n\
/* 080309c6 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080309c8 */ STR R3, [SP, 0x4] \n\
/* 080309ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080309cc */ STR R3, [SP, 0x8] \n\
/* 080309ce */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080309d0 */ BL sprite_set_anim \n\
/* 080309d4 */ LDR R0, =s_tebyoushi_pati_seqData \n\
/* 080309d6 */ BL play_sound \n\
/* 080309da */ BL beatscript_enable_loops \n\
/* 080309de */ ADD SP, 0xC \n\
/* 080309e0 */ POP {R4} \n\
/* 080309e2 */ POP {R0} \n\
/* 080309e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
