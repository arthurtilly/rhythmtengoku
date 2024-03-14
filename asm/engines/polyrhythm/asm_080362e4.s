asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start polyrhythm_retract_pistons \n\
/* 080362e4 */ PUSH {R4-R7, LR} \n\
/* 080362e6 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080362e8 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080362ea */ PUSH {R6, R7} \n\
/* 080362ec */ SUB SP, 0x14 \n\
/* 080362ee */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080362f0 */ LDR R0, =gCurrentEngineData \n\
/* 080362f2 */ LSLS R1, R6, 0x7 \n\
/* 080362f4 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 080362f6 */ LDR R0, [R0] \n\
/* 080362f8 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 080362fa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080362fc */ ADD R0, SP, 0x10 \n\
/* 080362fe */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08036300 */ LDR R1, =polyrhythm_block_appear_anim \n\
/* 08036302 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08036304 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08036306: \n\
/* 08036306 */ LDRB R2, [R4] \n\
/* 08036308 */ LSLS R0, R2, 0x1A \n\
/* 0803630a */ LSRS R0, R0, 0x1D \n\
/* 0803630c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803630e */ BNE branch_0803633c \n\
/* 08036310 */ LDR R0, =gSpriteHandler \n\
/* 08036312 */ LDR R0, [R0] \n\
/* 08036314 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08036316 */ LDRSH R1, [R4, R3] \n\
/* 08036318 */ LSLS R2, R2, 0x1D \n\
/* 0803631a */ LSRS R2, R2, 0x1B \n\
/* 0803631c */ ADD R2, R8 @ Add R8 to R2 \n\
/* 0803631e */ LDR R2, [R2] \n\
/* 08036320 */ STR R7, [SP] \n\
/* 08036322 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08036324 */ STR R3, [SP, 0x4] \n\
/* 08036326 */ STR R7, [SP, 0x8] \n\
/* 08036328 */ BL sprite_set_anim \n\
/* 0803632c */ LDRB R1, [R4] \n\
/* 0803632e */ MOVS R2, 0x39 @ Set R2 to 0x39 \n\
/* 08036330 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08036332 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08036334 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08036336 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08036338 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0803633a */ STRB R1, [R4] \n\
 \n\
branch_0803633c: \n\
/* 0803633c */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0803633e */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08036340 */ CMP R5, 0xF @ Compare R5 and 0xF \n\
/* 08036342 */ BLS branch_08036306 \n\
/* 08036344 */ LDR R0, =gCurrentEngineData \n\
/* 08036346 */ LDR R0, [R0] \n\
/* 08036348 */ MOVS R3, 0x82 @ Set R3 to 0x82 \n\
/* 0803634a */ LSLS R3, R3, 0x1 \n\
/* 0803634c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803634e */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08036350 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08036352 */ STRB R1, [R0] \n\
/* 08036354 */ LDR R0, =s_f_poly_close_seqData \n\
/* 08036356 */ BL play_sound \n\
/* 0803635a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803635c */ ADD R1, SP, 0xC \n\
/* 0803635e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08036360 */ BL polyrhythm_get_pistons \n\
/* 08036364 */ LDR R1, [SP, 0xC] \n\
/* 08036366 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08036368 */ BL polyrhythm_display_arrow \n\
/* 0803636c */ ADD SP, 0x14 \n\
/* 0803636e */ POP {R3, R4} \n\
/* 08036370 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08036372 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08036374 */ POP {R4-R7} \n\
/* 08036376 */ POP {R0} \n\
/* 08036378 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
