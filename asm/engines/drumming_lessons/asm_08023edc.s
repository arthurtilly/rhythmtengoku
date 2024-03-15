asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023edc \n\
/* 08023edc */ PUSH {R4-R7, LR} \n\
/* 08023ede */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08023ee0 */ PUSH {R7} \n\
/* 08023ee2 */ SUB SP, 0xC \n\
/* 08023ee4 */ LDR R0, =gCurrentEngineData \n\
/* 08023ee6 */ LDR R0, [R0] \n\
/* 08023ee8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08023eea */ MOVS R7, 0xD5 @ Set R7 to 0xD5 \n\
/* 08023eec */ LSLS R7, R7, 0x2 \n\
/* 08023eee */ ADD R7, R8 @ Add R8 to R7 \n\
/* 08023ef0 */ BL func_08024bd0 \n\
/* 08023ef4 */ LDR R3, =anim_drum_samurai_use_snare_r \n\
/* 08023ef6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023ef8 */ BEQ branch_08023efc \n\
/* 08023efa */ LDR R3, =anim_drum_player_use_snare_r \n\
 \n\
branch_08023efc: \n\
/* 08023efc */ LDR R6, =gSpriteHandler \n\
/* 08023efe */ LDR R0, [R6] \n\
/* 08023f00 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08023f02 */ LDRSH R1, [R7, R2] \n\
/* 08023f04 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08023f06 */ STR R2, [SP] \n\
/* 08023f08 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023f0a */ STR R2, [SP, 0x4] \n\
/* 08023f0c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023f0e */ STR R2, [SP, 0x8] \n\
/* 08023f10 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08023f12 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023f14 */ BL sprite_set_anim \n\
/* 08023f18 */ LDR R4, [R6] \n\
/* 08023f1a */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08023f1c */ LDRSH R5, [R7, R0] \n\
/* 08023f1e */ BL func_08024bd0 \n\
/* 08023f22 */ BL func_08024bd0 \n\
/* 08023f26 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08023f28 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08023f2a */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 08023f2c */ MOVS R3, 0x55 @ Set R3 to 0x55 \n\
/* 08023f2e */ BL sprite_set_x_y \n\
/* 08023f32 */ LDR R0, [R6] \n\
/* 08023f34 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 08023f36 */ LDRSH R1, [R7, R2] \n\
/* 08023f38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023f3a */ BL sprite_set_anim_cel \n\
/* 08023f3e */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 08023f40 */ LDRSH R0, [R7, R1] \n\
/* 08023f42 */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 08023f44 */ LSLS R1, R1, 0x2 \n\
/* 08023f46 */ ADD R1, R8 @ Add R8 to R1 \n\
/* 08023f48 */ BL func_08023d78 \n\
/* 08023f4c */ ADD SP, 0xC \n\
/* 08023f4e */ POP {R3} \n\
/* 08023f50 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08023f52 */ POP {R4-R7} \n\
/* 08023f54 */ POP {R0} \n\
/* 08023f56 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
