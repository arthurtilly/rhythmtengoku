asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_cue_miss \n\
/* 0803cf00 */ PUSH {R4, LR} \n\
/* 0803cf02 */ SUB SP, 0xC \n\
/* 0803cf04 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803cf06 */ BL func_0803c710 \n\
/* 0803cf0a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803cf0c */ BL ninja_get_anim \n\
/* 0803cf10 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803cf12 */ LDR R0, =gSpriteHandler \n\
/* 0803cf14 */ LDR R0, [R0] \n\
/* 0803cf16 */ LDR R4, =gCurrentEngineData \n\
/* 0803cf18 */ LDR R1, [R4] \n\
/* 0803cf1a */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 0803cf1c */ LSLS R3, R3, 0x2 \n\
/* 0803cf1e */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803cf20 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cf22 */ LDRSH R1, [R1, R3] \n\
/* 0803cf24 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803cf26 */ STR R3, [SP] \n\
/* 0803cf28 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803cf2a */ STR R3, [SP, 0x4] \n\
/* 0803cf2c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cf2e */ STR R3, [SP, 0x8] \n\
/* 0803cf30 */ BL sprite_set_anim \n\
/* 0803cf34 */ LDR R0, =s_f_ninja_kabe_seqData \n\
/* 0803cf36 */ BL play_sound \n\
/* 0803cf3a */ LDR R1, [R4] \n\
/* 0803cf3c */ LDR R0, =0x2cf \n\
/* 0803cf3e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803cf40 */ LDRB R0, [R1] \n\
/* 0803cf42 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803cf44 */ STRB R0, [R1] \n\
/* 0803cf46 */ ADD SP, 0xC \n\
/* 0803cf48 */ POP {R4} \n\
/* 0803cf4a */ POP {R0} \n\
/* 0803cf4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
