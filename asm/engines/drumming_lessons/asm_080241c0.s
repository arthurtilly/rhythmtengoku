asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080241c0 \n\
/* 080241c0 */ PUSH {R4-R7, LR} \n\
/* 080241c2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080241c4 */ PUSH {R7} \n\
/* 080241c6 */ SUB SP, 0xC \n\
/* 080241c8 */ LDR R0, =gCurrentEngineData \n\
/* 080241ca */ LDR R0, [R0] \n\
/* 080241cc */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080241ce */ MOVS R7, 0xD5 @ Set R7 to 0xD5 \n\
/* 080241d0 */ LSLS R7, R7, 0x2 \n\
/* 080241d2 */ ADD R7, R8 @ Add R8 to R7 \n\
/* 080241d4 */ BL func_08024bd0 \n\
/* 080241d8 */ LDR R3, =anim_drum_samurai_snare_roll \n\
/* 080241da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080241dc */ BEQ branch_080241e0 \n\
/* 080241de */ LDR R3, =anim_drum_player_snare_roll \n\
 \n\
branch_080241e0: \n\
/* 080241e0 */ LDR R6, =gSpriteHandler \n\
/* 080241e2 */ LDR R0, [R6] \n\
/* 080241e4 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080241e6 */ LDRSH R1, [R7, R2] \n\
/* 080241e8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080241ea */ STR R2, [SP] \n\
/* 080241ec */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080241ee */ STR R2, [SP, 0x4] \n\
/* 080241f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080241f2 */ STR R2, [SP, 0x8] \n\
/* 080241f4 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 080241f6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080241f8 */ BL sprite_set_anim \n\
/* 080241fc */ LDR R4, [R6] \n\
/* 080241fe */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08024200 */ LDRSH R5, [R7, R0] \n\
/* 08024202 */ BL func_08024bd0 \n\
/* 08024206 */ BL func_08024bd0 \n\
/* 0802420a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802420c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802420e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08024210 */ MOVS R3, 0x57 @ Set R3 to 0x57 \n\
/* 08024212 */ BL sprite_set_x_y \n\
/* 08024216 */ LDR R0, [R6] \n\
/* 08024218 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 0802421a */ LDRSH R1, [R7, R2] \n\
/* 0802421c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802421e */ BL sprite_set_anim_cel \n\
/* 08024222 */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 08024224 */ LDRSH R0, [R7, R1] \n\
/* 08024226 */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 08024228 */ LSLS R1, R1, 0x2 \n\
/* 0802422a */ ADD R1, R8 @ Add R8 to R1 \n\
/* 0802422c */ BL func_08023d78 \n\
/* 08024230 */ ADD SP, 0xC \n\
/* 08024232 */ POP {R3} \n\
/* 08024234 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08024236 */ POP {R4-R7} \n\
/* 08024238 */ POP {R0} \n\
/* 0802423a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
