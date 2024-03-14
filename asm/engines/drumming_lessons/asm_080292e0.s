asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080292e0 \n\
/* 080292e0 */ PUSH {R4-R6, LR} \n\
/* 080292e2 */ SUB SP, 0xC \n\
/* 080292e4 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080292e6 */ LDR R0, =gCurrentEngineData \n\
/* 080292e8 */ LDR R0, [R0] \n\
/* 080292ea */ MOVS R1, 0xD5 @ Set R1 to 0xD5 \n\
/* 080292ec */ LSLS R1, R1, 0x2 \n\
/* 080292ee */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 080292f0 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080292f2 */ BEQ branch_08029358 \n\
/* 080292f4 */ LDR R4, =gSpriteHandler \n\
/* 080292f6 */ LDR R0, [R4] \n\
/* 080292f8 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 080292fa */ LDRSH R1, [R5, R2] \n\
/* 080292fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080292fe */ BL sprite_set_visible \n\
/* 08029302 */ LDR R0, [R4] \n\
/* 08029304 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08029306 */ LDRSH R1, [R5, R2] \n\
/* 08029308 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802930a */ BL sprite_set_visible \n\
/* 0802930e */ LDR R0, [R4] \n\
/* 08029310 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08029312 */ LDRSH R1, [R5, R2] \n\
/* 08029314 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029316 */ BL sprite_set_visible \n\
/* 0802931a */ LDR R0, [R4] \n\
/* 0802931c */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0802931e */ LDRSH R1, [R5, R2] \n\
/* 08029320 */ LDR R2, =anim_drum_student_drink_coffee \n\
/* 08029322 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08029324 */ STR R3, [SP] \n\
/* 08029326 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029328 */ STR R3, [SP, 0x4] \n\
/* 0802932a */ STR R3, [SP, 0x8] \n\
/* 0802932c */ BL sprite_set_anim \n\
/* 08029330 */ LDR R0, [R4] \n\
/* 08029332 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08029334 */ LDRSH R1, [R5, R2] \n\
/* 08029336 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029338 */ BL sprite_set_anim_cel \n\
/* 0802933c */ LDR R0, [R4] \n\
/* 0802933e */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08029340 */ LDRSH R1, [R5, R2] \n\
/* 08029342 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08029344 */ BL sprite_set_visible \n\
/* 08029348 */ B branch_080293a0 \n\
\n\
.ltorg \n\
 \n\
branch_08029358: \n\
/* 08029358 */ LDR R4, =gSpriteHandler \n\
/* 0802935a */ LDR R0, [R4] \n\
/* 0802935c */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0802935e */ LDRSH R1, [R5, R2] \n\
/* 08029360 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08029362 */ BL sprite_set_visible \n\
/* 08029366 */ LDR R0, [R4] \n\
/* 08029368 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0802936a */ LDRSH R1, [R5, R2] \n\
/* 0802936c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802936e */ BL sprite_set_visible \n\
/* 08029372 */ LDR R0, [R4] \n\
/* 08029374 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08029376 */ LDRSH R1, [R5, R2] \n\
/* 08029378 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802937a */ BL sprite_set_visible \n\
/* 0802937e */ LDR R0, [R4] \n\
/* 08029380 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08029382 */ LDRSH R1, [R5, R2] \n\
/* 08029384 */ LDR R2, =anim_drum_student_body \n\
/* 08029386 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08029388 */ STR R3, [SP] \n\
/* 0802938a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802938c */ STR R3, [SP, 0x4] \n\
/* 0802938e */ STR R6, [SP, 0x8] \n\
/* 08029390 */ BL sprite_set_anim \n\
/* 08029394 */ LDR R0, [R4] \n\
/* 08029396 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08029398 */ LDRSH R1, [R5, R2] \n\
/* 0802939a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802939c */ BL sprite_set_visible \n\
 \n\
branch_080293a0: \n\
/* 080293a0 */ ADD SP, 0xC \n\
/* 080293a2 */ POP {R4-R6} \n\
/* 080293a4 */ POP {R0} \n\
/* 080293a6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
