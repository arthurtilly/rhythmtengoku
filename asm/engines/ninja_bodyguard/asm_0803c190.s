asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c190 \n\
/* 0803c190 */ PUSH {R4-R6, LR} \n\
/* 0803c192 */ SUB SP, 0xC \n\
/* 0803c194 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803c196 */ BL scene_show_bg_layer \n\
/* 0803c19a */ LDR R5, =gSpriteHandler \n\
/* 0803c19c */ LDR R0, [R5] \n\
/* 0803c19e */ LDR R4, =gCurrentEngineData \n\
/* 0803c1a0 */ LDR R1, [R4] \n\
/* 0803c1a2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803c1a4 */ LDRSH R1, [R1, R2] \n\
/* 0803c1a6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c1a8 */ BL sprite_set_visible \n\
/* 0803c1ac */ LDR R0, [R5] \n\
/* 0803c1ae */ LDR R1, [R4] \n\
/* 0803c1b0 */ MOVS R6, 0xB4 @ Set R6 to 0xB4 \n\
/* 0803c1b2 */ LSLS R6, R6, 0x2 \n\
/* 0803c1b4 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0803c1b6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c1b8 */ LDRSH R1, [R1, R3] \n\
/* 0803c1ba */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c1bc */ BL sprite_set_visible \n\
/* 0803c1c0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803c1c2 */ BL ninja_get_anim \n\
/* 0803c1c6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803c1c8 */ LDR R0, [R5] \n\
/* 0803c1ca */ LDR R1, [R4] \n\
/* 0803c1cc */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0803c1ce */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c1d0 */ LDRSH R1, [R1, R3] \n\
/* 0803c1d2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803c1d4 */ STR R3, [SP] \n\
/* 0803c1d6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c1d8 */ STR R3, [SP, 0x4] \n\
/* 0803c1da */ STR R3, [SP, 0x8] \n\
/* 0803c1dc */ BL sprite_set_anim \n\
/* 0803c1e0 */ LDR R0, [R5] \n\
/* 0803c1e2 */ LDR R2, [R4] \n\
/* 0803c1e4 */ MOVS R3, 0xBB @ Set R3 to 0xBB \n\
/* 0803c1e6 */ LSLS R3, R3, 0x2 \n\
/* 0803c1e8 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0803c1ea */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c1ec */ LDRSH R1, [R1, R3] \n\
/* 0803c1ee */ LDR R3, =0x2ee \n\
/* 0803c1f0 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803c1f2 */ LDRB R2, [R2] \n\
/* 0803c1f4 */ BL sprite_set_visible \n\
/* 0803c1f8 */ ADD SP, 0xC \n\
/* 0803c1fa */ POP {R4-R6} \n\
/* 0803c1fc */ POP {R0} \n\
/* 0803c1fe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
