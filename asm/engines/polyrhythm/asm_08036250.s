asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start polyrhythm_despawn_piston \n\
/* 08036250 */ PUSH {R4-R7, LR} \n\
/* 08036252 */ SUB SP, 0xC \n\
/* 08036254 */ LSLS R0, R0, 0x10 \n\
/* 08036256 */ LDR R1, =gCurrentEngineData \n\
/* 08036258 */ LSRS R7, R0, 0x10 \n\
/* 0803625a */ ASRS R0, R0, 0x9 \n\
/* 0803625c */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 0803625e */ LDR R1, [R1] \n\
/* 08036260 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08036262 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08036264 */ LDR R6, =polyrhythm_block_appear_anim \n\
 \n\
branch_08036266: \n\
/* 08036266 */ LDRB R2, [R4] \n\
/* 08036268 */ LSLS R0, R2, 0x1A \n\
/* 0803626a */ LSRS R0, R0, 0x1D \n\
/* 0803626c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803626e */ BEQ branch_0803629e \n\
/* 08036270 */ LDR R0, =gSpriteHandler \n\
/* 08036272 */ LDR R0, [R0] \n\
/* 08036274 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08036276 */ LDRSH R1, [R4, R3] \n\
/* 08036278 */ LSLS R2, R2, 0x1D \n\
/* 0803627a */ LSRS R2, R2, 0x1B \n\
/* 0803627c */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 0803627e */ LDR R2, [R2] \n\
/* 08036280 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08036282 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 08036284 */ STR R3, [SP] \n\
/* 08036286 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08036288 */ STR R3, [SP, 0x4] \n\
/* 0803628a */ STR R3, [SP, 0x8] \n\
/* 0803628c */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0803628e */ BL sprite_set_anim \n\
/* 08036292 */ LDRB R0, [R4] \n\
/* 08036294 */ MOVS R2, 0x39 @ Set R2 to 0x39 \n\
/* 08036296 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08036298 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0803629a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803629c */ STRB R0, [R4] \n\
 \n\
branch_0803629e: \n\
/* 0803629e */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 080362a0 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080362a2 */ CMP R5, 0xF @ Compare R5 and 0xF \n\
/* 080362a4 */ BLS branch_08036266 \n\
/* 080362a6 */ LDR R0, =gCurrentEngineData \n\
/* 080362a8 */ LDR R0, [R0] \n\
/* 080362aa */ LSLS R4, R7, 0x10 \n\
/* 080362ac */ ASRS R4, R4, 0x10 \n\
/* 080362ae */ MOVS R3, 0x82 @ Set R3 to 0x82 \n\
/* 080362b0 */ LSLS R3, R3, 0x1 \n\
/* 080362b2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080362b4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080362b6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080362b8 */ STRB R1, [R0] \n\
/* 080362ba */ LDR R0, =s_f_poly_withdraw_seqData \n\
/* 080362bc */ BL play_sound \n\
/* 080362c0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080362c2 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080362c4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080362c6 */ BL polyrhythm_display_arrow \n\
/* 080362ca */ ADD SP, 0xC \n\
/* 080362cc */ POP {R4-R7} \n\
/* 080362ce */ POP {R0} \n\
/* 080362d0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
