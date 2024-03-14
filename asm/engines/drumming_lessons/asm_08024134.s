asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024134 \n\
/* 08024134 */ PUSH {R4-R7, LR} \n\
/* 08024136 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08024138 */ PUSH {R7} \n\
/* 0802413a */ SUB SP, 0xC \n\
/* 0802413c */ LDR R0, =gCurrentEngineData \n\
/* 0802413e */ LDR R0, [R0] \n\
/* 08024140 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08024142 */ MOVS R7, 0xD5 @ Set R7 to 0xD5 \n\
/* 08024144 */ LSLS R7, R7, 0x2 \n\
/* 08024146 */ ADD R7, R8 @ Add R8 to R7 \n\
/* 08024148 */ BL func_08024bd0 \n\
/* 0802414c */ LDR R3, =anim_drum_samurai_use_crash \n\
/* 0802414e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024150 */ BEQ branch_08024154 \n\
/* 08024152 */ LDR R3, =anim_drum_player_use_crash \n\
 \n\
branch_08024154: \n\
/* 08024154 */ LDR R6, =gSpriteHandler \n\
/* 08024156 */ LDR R0, [R6] \n\
/* 08024158 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802415a */ LDRSH R1, [R7, R2] \n\
/* 0802415c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802415e */ STR R2, [SP] \n\
/* 08024160 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08024162 */ STR R2, [SP, 0x4] \n\
/* 08024164 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024166 */ STR R2, [SP, 0x8] \n\
/* 08024168 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0802416a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802416c */ BL sprite_set_anim \n\
/* 08024170 */ LDR R4, [R6] \n\
/* 08024172 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08024174 */ LDRSH R5, [R7, R0] \n\
/* 08024176 */ BL func_08024bd0 \n\
/* 0802417a */ BL func_08024bd0 \n\
/* 0802417e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08024180 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08024182 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 08024184 */ MOVS R3, 0x37 @ Set R3 to 0x37 \n\
/* 08024186 */ BL sprite_set_x_y \n\
/* 0802418a */ LDR R0, [R6] \n\
/* 0802418c */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 0802418e */ LDRSH R1, [R7, R2] \n\
/* 08024190 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024192 */ BL sprite_set_anim_cel \n\
/* 08024196 */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 08024198 */ LDRSH R0, [R7, R1] \n\
/* 0802419a */ MOVS R1, 0xDF @ Set R1 to 0xDF \n\
/* 0802419c */ LSLS R1, R1, 0x2 \n\
/* 0802419e */ ADD R1, R8 @ Add R8 to R1 \n\
/* 080241a0 */ BL func_08023d78 \n\
/* 080241a4 */ ADD SP, 0xC \n\
/* 080241a6 */ POP {R3} \n\
/* 080241a8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080241aa */ POP {R4-R7} \n\
/* 080241ac */ POP {R0} \n\
/* 080241ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
