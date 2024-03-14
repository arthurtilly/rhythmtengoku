asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start metronome_cue_barely \n\
/* 08035bc0 */ PUSH {LR} \n\
/* 08035bc2 */ BL gameplay_get_last_hit_offset \n\
/* 08035bc6 */ ADDS R0, 0x5 @ Add 0x5 to R0 \n\
/* 08035bc8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08035bca */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08035bcc */ BL clamp_int32 \n\
/* 08035bd0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08035bd2 */ LDR R0, =gSpriteHandler \n\
/* 08035bd4 */ LDR R0, [R0] \n\
/* 08035bd6 */ LDR R1, =gCurrentEngineData \n\
/* 08035bd8 */ LDR R1, [R1] \n\
/* 08035bda */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08035bdc */ LDRSH R1, [R1, R3] \n\
/* 08035bde */ LSLS R2, R2, 0x18 \n\
/* 08035be0 */ ASRS R2, R2, 0x18 \n\
/* 08035be2 */ BL sprite_set_anim_cel \n\
/* 08035be6 */ POP {R0} \n\
/* 08035be8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
