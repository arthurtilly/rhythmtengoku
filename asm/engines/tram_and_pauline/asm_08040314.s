asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040314 \n\
/* 08040314 */ PUSH {R4-R7, LR} \n\
/* 08040316 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08040318 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0804031a */ PUSH {R6, R7} \n\
/* 0804031c */ SUB SP, 0xC \n\
/* 0804031e */ LSLS R0, R0, 0x18 \n\
/* 08040320 */ LSRS R5, R0, 0x18 \n\
/* 08040322 */ LDR R2, =gCurrentEngineData \n\
/* 08040324 */ LDR R1, [R2] \n\
/* 08040326 */ LSLS R0, R5, 0x2 \n\
/* 08040328 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804032a */ LSLS R4, R0, 0x2 \n\
/* 0804032c */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0804032e */ LDRB R3, [R1, 0x6] \n\
/* 08040330 */ SUBS R0, R3, 0x2 @ Set R0 to R3 - 0x2 \n\
/* 08040332 */ LSLS R0, R0, 0x18 \n\
/* 08040334 */ LSRS R0, R0, 0x18 \n\
/* 08040336 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 08040338 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804033a */ BHI branch_0804041e \n\
/* 0804033c */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 0804033e */ BNE branch_08040344 \n\
/* 08040340 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08040342 */ STRB R0, [R1, 0x6] \n\
 \n\
branch_08040344: \n\
/* 08040344 */ LDR R0, [R7] \n\
/* 08040346 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08040348 */ LDRB R0, [R0, 0x15] \n\
/* 0804034a */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0804034c */ BHI branch_0804041e \n\
/* 0804034e */ LSLS R0, R0, 0x2 \n\
/* 08040350 */ LDR R1, =jtbl_08040360 \n\
/* 08040352 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040354 */ LDR R0, [R0] \n\
/* 08040356 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08040360: \n\
.word jump_08040378 \n\
.word jump_080403c4 \n\
.word jump_08040378 \n\
.word jump_080403c4 \n\
.word jump_08040378 \n\
.word jump_080403c4 \n\
jump_08040378: \n\
/* 08040378 */ LDR R1, [R7] \n\
/* 0804037a */ LSLS R3, R5, 0x2 \n\
/* 0804037c */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 0804037e */ LSLS R3, R3, 0x2 \n\
/* 08040380 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08040382 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08040384 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08040386 */ STRB R0, [R1, 0x15] \n\
/* 08040388 */ LDR R0, =gSpriteHandler \n\
/* 0804038a */ LDR R0, [R0] \n\
/* 0804038c */ LDR R2, [R7] \n\
/* 0804038e */ ADDS R3, R2, R3 @ Set R3 to R2 + R3 \n\
/* 08040390 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 08040392 */ LDRSH R1, [R3, R4] \n\
/* 08040394 */ LDR R5, =tram_pauline_anim_table \n\
/* 08040396 */ LDRB R4, [R2] \n\
/* 08040398 */ LSLS R2, R4, 0x1 \n\
/* 0804039a */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0804039c */ LSLS R2, R2, 0x3 \n\
/* 0804039e */ ADDS R2, 0x12 @ Add 0x12 to R2 \n\
/* 080403a0 */ LDRB R3, [R3, 0x15] \n\
/* 080403a2 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080403a4 */ LSLS R2, R2, 0x2 \n\
/* 080403a6 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 080403a8 */ LDR R2, [R2] \n\
/* 080403aa */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080403ac */ STR R3, [SP] \n\
/* 080403ae */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080403b0 */ STR R3, [SP, 0x4] \n\
/* 080403b2 */ STR R6, [SP, 0x8] \n\
/* 080403b4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080403b6 */ BL sprite_set_anim \n\
/* 080403ba */ B branch_0804041e \n\
\n\
.ltorg \n\
jump_080403c4: \n\
/* 080403c4 */ LDR R1, [R7] \n\
/* 080403c6 */ LSLS R4, R5, 0x2 \n\
/* 080403c8 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 080403ca */ LSLS R4, R4, 0x2 \n\
/* 080403cc */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080403ce */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080403d0 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080403d2 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080403d4 */ STRB R0, [R1, 0x15] \n\
/* 080403d6 */ LDR R1, =gSpriteHandler \n\
/* 080403d8 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080403da */ LDR R0, [R1] \n\
/* 080403dc */ LDR R2, [R7] \n\
/* 080403de */ ADDS R5, R2, R4 @ Set R5 to R2 + R4 \n\
/* 080403e0 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080403e2 */ LDRSH R1, [R5, R3] \n\
/* 080403e4 */ LDR R6, =tram_pauline_anim_table \n\
/* 080403e6 */ LDRB R3, [R2] \n\
/* 080403e8 */ LSLS R2, R3, 0x1 \n\
/* 080403ea */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080403ec */ LSLS R2, R2, 0x3 \n\
/* 080403ee */ ADDS R2, 0x12 @ Add 0x12 to R2 \n\
/* 080403f0 */ LDRB R5, [R5, 0x15] \n\
/* 080403f2 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 080403f4 */ LSLS R2, R2, 0x2 \n\
/* 080403f6 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 080403f8 */ LDR R2, [R2] \n\
/* 080403fa */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080403fc */ STR R3, [SP] \n\
/* 080403fe */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08040400 */ STR R3, [SP, 0x4] \n\
/* 08040402 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08040404 */ STR R3, [SP, 0x8] \n\
/* 08040406 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040408 */ BL sprite_set_anim \n\
/* 0804040c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804040e */ LDR R0, [R1] \n\
/* 08040410 */ LDR R1, [R7] \n\
/* 08040412 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08040414 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08040416 */ LDRSH R1, [R1, R2] \n\
/* 08040418 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804041a */ BL sprite_set_base_palette \n\
 \n\
branch_0804041e: \n\
/* 0804041e */ ADD SP, 0xC \n\
/* 08040420 */ POP {R3, R4} \n\
/* 08040422 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08040424 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08040426 */ POP {R4-R7} \n\
/* 08040428 */ POP {R0} \n\
/* 0804042a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
