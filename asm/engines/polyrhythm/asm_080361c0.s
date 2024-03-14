asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start polyrhythm_spawn_piston \n\
/* 080361c0 */ PUSH {R4, R5, LR} \n\
/* 080361c2 */ SUB SP, 0x14 \n\
/* 080361c4 */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 080361c6 */ LSRS R5, R0, 0x4 \n\
/* 080361c8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080361ca */ LSRS R4, R0, 0x5 \n\
/* 080361cc */ LDR R2, =gCurrentEngineData \n\
/* 080361ce */ ANDS R5, R1 @ Set R5 to R5 & R1 \n\
/* 080361d0 */ LSLS R1, R5, 0x7 \n\
/* 080361d2 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 080361d4 */ LDR R2, [R2] \n\
/* 080361d6 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080361d8 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 080361da */ LSLS R0, R0, 0x3 \n\
/* 080361dc */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 080361de */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 080361e0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080361e2 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 080361e4 */ LDRB R3, [R2] \n\
/* 080361e6 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080361e8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080361ea */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 080361ec */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080361ee */ MOVS R1, 0x39 @ Set R1 to 0x39 \n\
/* 080361f0 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080361f2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080361f4 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 080361f6 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080361f8 */ STRB R0, [R2] \n\
/* 080361fa */ LDR R0, =gSpriteHandler \n\
/* 080361fc */ LDR R0, [R0] \n\
/* 080361fe */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08036200 */ LDRSH R1, [R2, R3] \n\
/* 08036202 */ LDR R2, =polyrhythm_block_appear_anim \n\
/* 08036204 */ LSLS R4, R4, 0x2 \n\
/* 08036206 */ ADDS R2, R4, R2 @ Set R2 to R4 + R2 \n\
/* 08036208 */ LDR R2, [R2] \n\
/* 0803620a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803620c */ STR R3, [SP] \n\
/* 0803620e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08036210 */ STR R3, [SP, 0x4] \n\
/* 08036212 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08036214 */ STR R3, [SP, 0x8] \n\
/* 08036216 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08036218 */ BL sprite_set_anim \n\
/* 0803621c */ LDR R0, =polyrhythm_block_appear_sfx \n\
/* 0803621e */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08036220 */ LDR R0, [R4] \n\
/* 08036222 */ BL play_sound \n\
/* 08036226 */ ADD R2, SP, 0x10 \n\
/* 08036228 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803622a */ ADD R1, SP, 0xC \n\
/* 0803622c */ BL polyrhythm_get_pistons \n\
/* 08036230 */ LDR R1, [SP, 0xC] \n\
/* 08036232 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08036234 */ BL polyrhythm_display_arrow \n\
/* 08036238 */ ADD SP, 0x14 \n\
/* 0803623a */ POP {R4, R5} \n\
/* 0803623c */ POP {R0} \n\
/* 0803623e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
