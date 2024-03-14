asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023e50 \n\
/* 08023e50 */ PUSH {R4-R7, LR} \n\
/* 08023e52 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08023e54 */ PUSH {R7} \n\
/* 08023e56 */ SUB SP, 0xC \n\
/* 08023e58 */ LDR R0, =gCurrentEngineData \n\
/* 08023e5a */ LDR R0, [R0] \n\
/* 08023e5c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08023e5e */ MOVS R7, 0xD5 @ Set R7 to 0xD5 \n\
/* 08023e60 */ LSLS R7, R7, 0x2 \n\
/* 08023e62 */ ADD R7, R8 @ Add R8 to R7 \n\
/* 08023e64 */ BL func_08024bd0 \n\
/* 08023e68 */ LDR R3, =anim_drum_samurai_use_snare_l \n\
/* 08023e6a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023e6c */ BEQ branch_08023e70 \n\
/* 08023e6e */ LDR R3, =anim_drum_player_use_snare_l \n\
 \n\
branch_08023e70: \n\
/* 08023e70 */ LDR R6, =gSpriteHandler \n\
/* 08023e72 */ LDR R0, [R6] \n\
/* 08023e74 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08023e76 */ LDRSH R1, [R7, R2] \n\
/* 08023e78 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08023e7a */ STR R2, [SP] \n\
/* 08023e7c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023e7e */ STR R2, [SP, 0x4] \n\
/* 08023e80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023e82 */ STR R2, [SP, 0x8] \n\
/* 08023e84 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08023e86 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023e88 */ BL sprite_set_anim \n\
/* 08023e8c */ LDR R4, [R6] \n\
/* 08023e8e */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08023e90 */ LDRSH R5, [R7, R0] \n\
/* 08023e92 */ BL func_08024bd0 \n\
/* 08023e96 */ BL func_08024bd0 \n\
/* 08023e9a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08023e9c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08023e9e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023ea0 */ MOVS R3, 0x57 @ Set R3 to 0x57 \n\
/* 08023ea2 */ BL sprite_set_x_y \n\
/* 08023ea6 */ LDR R0, [R6] \n\
/* 08023ea8 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 08023eaa */ LDRSH R1, [R7, R2] \n\
/* 08023eac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023eae */ BL sprite_set_anim_cel \n\
/* 08023eb2 */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 08023eb4 */ LDRSH R0, [R7, R1] \n\
/* 08023eb6 */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 08023eb8 */ LSLS R1, R1, 0x2 \n\
/* 08023eba */ ADD R1, R8 @ Add R8 to R1 \n\
/* 08023ebc */ BL func_08023d78 \n\
/* 08023ec0 */ ADD SP, 0xC \n\
/* 08023ec2 */ POP {R3} \n\
/* 08023ec4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08023ec6 */ POP {R4-R7} \n\
/* 08023ec8 */ POP {R0} \n\
/* 08023eca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
