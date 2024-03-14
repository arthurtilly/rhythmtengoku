asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803b258 \n\
/* 0803b258 */ PUSH {R4-R7, LR} \n\
/* 0803b25a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803b25c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803b25e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803b260 */ PUSH {R5-R7} \n\
/* 0803b262 */ SUB SP, 0xC \n\
/* 0803b264 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0803b266 */ LDR R0, =gCurrentEngineData \n\
/* 0803b268 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803b26a */ LDR R2, [R0] \n\
/* 0803b26c */ LDR R4, [R2, 0x54] \n\
/* 0803b26e */ ASRS R1, R4, 0x8 \n\
/* 0803b270 */ LDR R3, [R7, 0x8] \n\
/* 0803b272 */ ASRS R0, R3, 0x8 \n\
/* 0803b274 */ SUBS R0, 0x28 @ Subtract 0x28 from R0 \n\
/* 0803b276 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0803b278 */ CMP R1, 0x18 @ Compare R1 and 0x18 \n\
/* 0803b27a */ BGT branch_0803b364 \n\
/* 0803b27c */ LDR R0, =0xfffff800 \n\
/* 0803b27e */ ADDS R1, R3, R0 @ Set R1 to R3 + R0 \n\
/* 0803b280 */ SUBS R1, R4, R1 @ Set R1 to R4 - R1 \n\
/* 0803b282 */ STR R1, [R2, 0x34] \n\
/* 0803b284 */ LDR R0, [R7, 0x8] \n\
/* 0803b286 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803b288 */ STR R0, [R7, 0x8] \n\
/* 0803b28a */ STR R0, [R2, 0x30] \n\
/* 0803b28c */ LDR R4, =gSpriteHandler \n\
/* 0803b28e */ LDR R0, [R4] \n\
/* 0803b290 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b292 */ LDRSH R1, [R7, R2] \n\
/* 0803b294 */ LDR R2, =anim_rat_collide_run \n\
/* 0803b296 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803b298 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0803b29a */ STR R3, [SP] \n\
/* 0803b29c */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 0803b29e */ STR R6, [SP, 0x4] \n\
/* 0803b2a0 */ MOVS R5, 0x4 @ Set R5 to 0x4 \n\
/* 0803b2a2 */ STR R5, [SP, 0x8] \n\
/* 0803b2a4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b2a6 */ BL sprite_set_anim \n\
/* 0803b2aa */ LDR R0, [R4] \n\
/* 0803b2ac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b2ae */ LDRSH R1, [R7, R2] \n\
/* 0803b2b0 */ LDR R3, =func_0803aef4 \n\
/* 0803b2b2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803b2b4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803b2b6 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0803b2b8 */ BL sprite_set_callback \n\
/* 0803b2bc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803b2be */ STRB R0, [R7, 0xC] \n\
/* 0803b2c0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803b2c2 */ STRB R0, [R7, 0x4] \n\
/* 0803b2c4 */ LDR R0, [R4] \n\
/* 0803b2c6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803b2c8 */ LDR R1, [R2] \n\
/* 0803b2ca */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 0803b2cc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b2ce */ LDRSH R1, [R1, R3] \n\
/* 0803b2d0 */ LDR R2, =anim_rat_collide_stop \n\
/* 0803b2d2 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0803b2d4 */ STR R3, [SP] \n\
/* 0803b2d6 */ STR R6, [SP, 0x4] \n\
/* 0803b2d8 */ STR R5, [SP, 0x8] \n\
/* 0803b2da */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b2dc */ BL sprite_set_anim \n\
/* 0803b2e0 */ LDR R0, [R4] \n\
/* 0803b2e2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803b2e4 */ LDR R3, [R1] \n\
/* 0803b2e6 */ ADDS R3, 0x4C @ Add 0x4C to R3 \n\
/* 0803b2e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b2ea */ LDRSH R1, [R3, R2] \n\
/* 0803b2ec */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803b2ee */ BL sprite_set_callback \n\
/* 0803b2f2 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803b2f4 */ LDR R0, [R3] \n\
/* 0803b2f6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803b2f8 */ ADDS R1, 0x58 @ Add 0x58 to R1 \n\
/* 0803b2fa */ LDRB R0, [R1] \n\
/* 0803b2fc */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803b2fe */ LSLS R0, R0, 0x18 \n\
/* 0803b300 */ LSRS R0, R0, 0x18 \n\
/* 0803b302 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803b304 */ BHI branch_0803b32c \n\
/* 0803b306 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803b308 */ STRB R0, [R1] \n\
/* 0803b30a */ LDR R0, [R3] \n\
/* 0803b30c */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 0803b30e */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 0803b310 */ STRB R1, [R0] \n\
/* 0803b312 */ B branch_0803b33a \n\
\n\
.ltorg \n\
 \n\
branch_0803b32c: \n\
/* 0803b32c */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803b32e */ STRB R0, [R1] \n\
/* 0803b330 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803b332 */ LDR R0, [R1] \n\
/* 0803b334 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 0803b336 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803b338 */ STRB R2, [R0] \n\
 \n\
branch_0803b33a: \n\
/* 0803b33a */ LDR R4, =gCurrentEngineData \n\
/* 0803b33c */ LDR R0, [R4] \n\
/* 0803b33e */ ADDS R0, 0xE4 @ Add 0xE4 to R0 \n\
/* 0803b340 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803b342 */ LSLS R1, R1, 0x5 \n\
/* 0803b344 */ STRH R1, [R0] \n\
/* 0803b346 */ LDR R0, =s_rat_crush_R_seqData \n\
/* 0803b348 */ BL play_sound \n\
/* 0803b34c */ LDR R0, [R4] \n\
/* 0803b34e */ MOVS R3, 0x8F @ Set R3 to 0x8F \n\
/* 0803b350 */ LSLS R3, R3, 0x1 \n\
/* 0803b352 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0803b354 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803b356 */ LDRSB R0, [R1, R0] \n\
/* 0803b358 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b35a */ BLT branch_0803b364 \n\
/* 0803b35c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803b35e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b360 */ BL gameplay_add_cue_result \n\
 \n\
branch_0803b364: \n\
/* 0803b364 */ ADD SP, 0xC \n\
/* 0803b366 */ POP {R3-R5} \n\
/* 0803b368 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803b36a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803b36c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803b36e */ POP {R4-R7} \n\
/* 0803b370 */ POP {R0} \n\
/* 0803b372 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
