asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a2a8 \n\
/* 0803a2a8 */ PUSH {R4-R6, LR} \n\
/* 0803a2aa */ SUB SP, 0xC \n\
/* 0803a2ac */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803a2ae */ LDR R4, =gCurrentEngineData \n\
/* 0803a2b0 */ LDR R1, [R4] \n\
/* 0803a2b2 */ LDRB R0, [R1, 0x10] \n\
/* 0803a2b4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803a2b6 */ BEQ branch_0803a334 \n\
/* 0803a2b8 */ LDR R5, =gSpriteHandler \n\
/* 0803a2ba */ LDR R0, [R5] \n\
/* 0803a2bc */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0803a2be */ LDRSH R1, [R1, R2] \n\
/* 0803a2c0 */ BL sprite_get_anim_cel \n\
/* 0803a2c4 */ LSLS R0, R0, 0x18 \n\
/* 0803a2c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803a2c8 */ BNE branch_0803a2fe \n\
/* 0803a2ca */ LDR R1, [R4] \n\
/* 0803a2cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a2ce */ LDRB R0, [R1, 0x14] \n\
/* 0803a2d0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803a2d2 */ BNE branch_0803a2d6 \n\
/* 0803a2d4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_0803a2d6: \n\
/* 0803a2d6 */ STRB R2, [R1, 0x14] \n\
/* 0803a2d8 */ LDR R3, [R5] \n\
/* 0803a2da */ LDR R0, [R4] \n\
/* 0803a2dc */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0803a2de */ LDRSH R1, [R0, R2] \n\
/* 0803a2e0 */ LDRB R0, [R0, 0x14] \n\
/* 0803a2e2 */ LDR R2, =anim_rat_text_bubble_l \n\
/* 0803a2e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803a2e6 */ BEQ branch_0803a2ea \n\
/* 0803a2e8 */ LDR R2, =anim_rat_text_bubble_r \n\
 \n\
branch_0803a2ea: \n\
/* 0803a2ea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803a2ec */ STR R0, [SP] \n\
/* 0803a2ee */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0803a2f0 */ STR R0, [SP, 0x4] \n\
/* 0803a2f2 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0803a2f4 */ STR R0, [SP, 0x8] \n\
/* 0803a2f6 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803a2f8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a2fa */ BL sprite_set_anim \n\
 \n\
branch_0803a2fe: \n\
/* 0803a2fe */ LDR R5, =gSpriteHandler \n\
/* 0803a300 */ LDR R0, [R5] \n\
/* 0803a302 */ LDR R4, =gCurrentEngineData \n\
/* 0803a304 */ LDR R1, [R4] \n\
/* 0803a306 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0803a308 */ LDRSH R1, [R1, R2] \n\
/* 0803a30a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803a30c */ STR R2, [SP] \n\
/* 0803a30e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a310 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803a312 */ BL sprite_set_playback \n\
/* 0803a316 */ LDR R0, [R5] \n\
/* 0803a318 */ LDR R1, [R4] \n\
/* 0803a31a */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0803a31c */ LDRSH R1, [R1, R2] \n\
/* 0803a31e */ LDR R2, =func_0803a230 \n\
/* 0803a320 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0803a322 */ BL sprite_set_callback \n\
/* 0803a326 */ LDR R0, [R5] \n\
/* 0803a328 */ LDR R1, [R4] \n\
/* 0803a32a */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0803a32c */ LDRSH R1, [R1, R2] \n\
/* 0803a32e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a330 */ BL sprite_set_visible \n\
 \n\
branch_0803a334: \n\
/* 0803a334 */ ADD SP, 0xC \n\
/* 0803a336 */ POP {R4-R6} \n\
/* 0803a338 */ POP {R0} \n\
/* 0803a33a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
