asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c9f8 \n\
/* 0803c9f8 */ PUSH {R4-R7, LR} \n\
/* 0803c9fa */ SUB SP, 0xC \n\
/* 0803c9fc */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0803c9fe */ LDR R6, =gSpriteHandler \n\
/* 0803ca00 */ LDR R0, [R6] \n\
/* 0803ca02 */ LDR R5, =gCurrentEngineData \n\
/* 0803ca04 */ LDR R1, [R5] \n\
/* 0803ca06 */ MOVS R4, 0xB4 @ Set R4 to 0xB4 \n\
/* 0803ca08 */ LSLS R4, R4, 0x2 \n\
/* 0803ca0a */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803ca0c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ca0e */ LDRSH R1, [R1, R2] \n\
/* 0803ca10 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803ca12 */ BL sprite_set_visible \n\
/* 0803ca16 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803ca18 */ BL ninja_get_anim \n\
/* 0803ca1c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803ca1e */ LDR R0, [R6] \n\
/* 0803ca20 */ LDR R1, [R5] \n\
/* 0803ca22 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803ca24 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ca26 */ LDRSH R1, [R1, R3] \n\
/* 0803ca28 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803ca2a */ STR R3, [SP] \n\
/* 0803ca2c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ca2e */ STR R3, [SP, 0x4] \n\
/* 0803ca30 */ STR R3, [SP, 0x8] \n\
/* 0803ca32 */ BL sprite_set_anim \n\
/* 0803ca36 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0803ca38 */ BEQ branch_0803ca6c \n\
/* 0803ca3a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803ca3c */ BL ticks_to_frames \n\
/* 0803ca40 */ LSLS R0, R0, 0x10 \n\
/* 0803ca42 */ LSRS R0, R0, 0x10 \n\
/* 0803ca44 */ LDR R1, [R5] \n\
/* 0803ca46 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803ca48 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ca4a */ LDRSH R3, [R1, R2] \n\
/* 0803ca4c */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0803ca4e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0803ca50 */ MOVS R2, 0x69 @ Set R2 to 0x69 \n\
/* 0803ca52 */ STR R2, [SP] \n\
/* 0803ca54 */ STR R0, [SP, 0x4] \n\
/* 0803ca56 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803ca58 */ MOVS R2, 0x42 @ Set R2 to 0x42 \n\
/* 0803ca5a */ MOVS R3, 0x8C @ Set R3 to 0x8C \n\
/* 0803ca5c */ BL scene_set_sprite_motion_lerp \n\
/* 0803ca60 */ B branch_0803ca82 \n\
\n\
.ltorg \n\
 \n\
branch_0803ca6c: \n\
/* 0803ca6c */ LDR R0, [R6] \n\
/* 0803ca6e */ LDR R1, [R5] \n\
/* 0803ca70 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 0803ca72 */ LSLS R3, R3, 0x2 \n\
/* 0803ca74 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803ca76 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ca78 */ LDRSH R1, [R1, R2] \n\
/* 0803ca7a */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 0803ca7c */ MOVS R3, 0x69 @ Set R3 to 0x69 \n\
/* 0803ca7e */ BL sprite_set_x_y \n\
 \n\
branch_0803ca82: \n\
/* 0803ca82 */ ADD SP, 0xC \n\
/* 0803ca84 */ POP {R4-R7} \n\
/* 0803ca86 */ POP {R0} \n\
/* 0803ca88 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
