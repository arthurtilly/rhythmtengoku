asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f1f4 \n\
/* 0803f1f4 */ PUSH {R4-R7, LR} \n\
/* 0803f1f6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803f1f8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803f1fa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803f1fc */ PUSH {R5-R7} \n\
/* 0803f1fe */ SUB SP, 0x10 \n\
/* 0803f200 */ STR R0, [SP, 0xC] \n\
/* 0803f202 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0803f204 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0803f206 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803f208 */ LDR R5, =gCurrentEngineData \n\
/* 0803f20a */ LDR R0, [R5] \n\
/* 0803f20c */ MOVS R2, 0xDF @ Set R2 to 0xDF \n\
/* 0803f20e */ LSLS R2, R2, 0x2 \n\
/* 0803f210 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803f212 */ LDRB R2, [R1] \n\
/* 0803f214 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0803f216 */ BEQ branch_0803f21a \n\
/* 0803f218 */ B branch_0803f356 \n\
 \n\
branch_0803f21a: \n\
/* 0803f21a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803f21c */ STRB R0, [R1] \n\
/* 0803f21e */ LDR R0, [R5] \n\
/* 0803f220 */ LDR R3, =0x396 \n\
/* 0803f222 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0803f224 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803f226 */ STRH R2, [R1] \n\
/* 0803f228 */ MOVS R7, 0xE6 @ Set R7 to 0xE6 \n\
/* 0803f22a */ LSLS R7, R7, 0x2 \n\
/* 0803f22c */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0803f22e */ STRB R4, [R0] \n\
/* 0803f230 */ LDR R0, [R5] \n\
/* 0803f232 */ LDR R2, =0x371 \n\
/* 0803f234 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803f236 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0803f238 */ STRB R1, [R0] \n\
/* 0803f23a */ LDR R0, [R5] \n\
/* 0803f23c */ SUBS R3, 0x26 @ Subtract 0x26 from R3 \n\
/* 0803f23e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803f240 */ MOV R1, SP @ Set R1 to SP \n\
/* 0803f242 */ LDRB R1, [R1, 0xC] \n\
/* 0803f244 */ STRB R1, [R0] \n\
/* 0803f246 */ LDR R0, [R5] \n\
/* 0803f248 */ SUBS R7, 0x24 @ Subtract 0x24 from R7 \n\
/* 0803f24a */ ADDS R1, R0, R7 @ Set R1 to R0 + R7 \n\
/* 0803f24c */ STRH R6, [R1] \n\
/* 0803f24e */ LDR R6, =0x372 \n\
/* 0803f250 */ ADDS R1, R0, R6 @ Set R1 to R0 + R6 \n\
/* 0803f252 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0803f254 */ STRH R7, [R1] \n\
/* 0803f256 */ LDR R1, =0x37d \n\
/* 0803f258 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f25a */ STRB R4, [R0] \n\
/* 0803f25c */ LDR R1, [R5] \n\
/* 0803f25e */ ADDS R2, R1, R2 @ Set R2 to R1 + R2 \n\
/* 0803f260 */ LDRB R0, [R2] \n\
/* 0803f262 */ LSLS R0, R0, 0x2 \n\
/* 0803f264 */ LDR R2, =D_089e86a8 \n\
/* 0803f266 */ ADDS R6, R0, R2 @ Set R6 to R0 + R2 \n\
/* 0803f268 */ ADDS R3, R1, R3 @ Set R3 to R1 + R3 \n\
/* 0803f26a */ LDRB R0, [R3] \n\
/* 0803f26c */ LSLS R0, R0, 0x2 \n\
/* 0803f26e */ ADDS R7, R0, R2 @ Set R7 to R0 + R2 \n\
/* 0803f270 */ MOVS R2, 0xDE @ Set R2 to 0xDE \n\
/* 0803f272 */ LSLS R2, R2, 0x2 \n\
/* 0803f274 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803f276 */ LDR R4, [R1] \n\
/* 0803f278 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803f27a */ BLT branch_0803f28c \n\
/* 0803f27c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803f27e */ BL get_task_state \n\
/* 0803f282 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f284 */ BEQ branch_0803f28c \n\
/* 0803f286 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803f288 */ BL force_cancel_task \n\
 \n\
branch_0803f28c: \n\
/* 0803f28c */ LDR R3, =gCurrentEngineData \n\
/* 0803f28e */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0803f290 */ LDR R0, [R3] \n\
/* 0803f292 */ LDR R4, =0x372 \n\
/* 0803f294 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803f296 */ LDRH R0, [R0] \n\
/* 0803f298 */ BL ticks_to_frames \n\
/* 0803f29c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803f29e */ SUBS R1, 0x5 @ Subtract 0x5 from R1 \n\
/* 0803f2a0 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0803f2a2 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0803f2a4 */ LDR R5, [R1] \n\
/* 0803f2a6 */ LDR R2, =0x366 \n\
/* 0803f2a8 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0803f2aa */ ADDS R1, R5, R2 @ Set R1 to R5 + R2 \n\
/* 0803f2ac */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803f2ae */ LDRSH R3, [R1, R4] \n\
/* 0803f2b0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803f2b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f2b4 */ LDRSH R1, [R6, R2] \n\
/* 0803f2b6 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0803f2b8 */ LDRSH R2, [R6, R3] \n\
/* 0803f2ba */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803f2bc */ LDRSH R3, [R7, R4] \n\
/* 0803f2be */ MOVS R6, 0x2 @ Set R6 to 0x2 \n\
/* 0803f2c0 */ LDRSH R4, [R7, R6] \n\
/* 0803f2c2 */ STR R4, [SP] \n\
/* 0803f2c4 */ MOVS R7, 0xDD @ Set R7 to 0xDD \n\
/* 0803f2c6 */ LSLS R7, R7, 0x2 \n\
/* 0803f2c8 */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 0803f2ca */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803f2cc */ LDRSH R4, [R5, R6] \n\
/* 0803f2ce */ STR R4, [SP, 0x4] \n\
/* 0803f2d0 */ LSLS R0, R0, 0x10 \n\
/* 0803f2d2 */ LSRS R0, R0, 0x10 \n\
/* 0803f2d4 */ STR R0, [SP, 0x8] \n\
/* 0803f2d6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0803f2d8 */ BL scene_set_sprite_motion_sine_wave \n\
/* 0803f2dc */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803f2de */ LDR R2, [R7] \n\
/* 0803f2e0 */ MOVS R3, 0xDE @ Set R3 to 0xDE \n\
/* 0803f2e2 */ LSLS R3, R3, 0x2 \n\
/* 0803f2e4 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0803f2e6 */ STR R0, [R1] \n\
/* 0803f2e8 */ LDR R4, =gSpriteHandler \n\
/* 0803f2ea */ LDR R0, [R4] \n\
/* 0803f2ec */ ADD R2, R9 @ Add R9 to R2 \n\
/* 0803f2ee */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803f2f0 */ LDRSH R1, [R2, R6] \n\
/* 0803f2f2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803f2f4 */ BL sprite_set_visible \n\
/* 0803f2f8 */ LDR R0, [R4] \n\
/* 0803f2fa */ LDR R1, [R7] \n\
/* 0803f2fc */ MOVS R7, 0xD9 @ Set R7 to 0xD9 \n\
/* 0803f2fe */ LSLS R7, R7, 0x2 \n\
/* 0803f300 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0803f302 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f304 */ LDRSH R1, [R1, R2] \n\
/* 0803f306 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f308 */ BL sprite_set_anim_cel \n\
/* 0803f30c */ LDR R0, =s_f_toss_ball_seqData \n\
/* 0803f30e */ BL play_sound \n\
/* 0803f312 */ LDR R0, =toss_boys_arrow_anim_ids \n\
/* 0803f314 */ LDR R3, [SP, 0xC] \n\
/* 0803f316 */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 0803f318 */ LDRB R0, [R0] \n\
/* 0803f31a */ BL toss_boys_get_anim \n\
/* 0803f31e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803f320 */ LDR R0, [R4] \n\
/* 0803f322 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0803f324 */ LDR R1, [R6] \n\
/* 0803f326 */ MOVS R5, 0xE8 @ Set R5 to 0xE8 \n\
/* 0803f328 */ LSLS R5, R5, 0x2 \n\
/* 0803f32a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803f32c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803f32e */ LDRSH R1, [R1, R7] \n\
/* 0803f330 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803f332 */ STR R3, [SP] \n\
/* 0803f334 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f336 */ STR R3, [SP, 0x4] \n\
/* 0803f338 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0803f33a */ STR R3, [SP, 0x8] \n\
/* 0803f33c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f33e */ BL sprite_set_anim \n\
/* 0803f342 */ LDR R0, [R4] \n\
/* 0803f344 */ LDR R1, [R6] \n\
/* 0803f346 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803f348 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f34a */ LDRSH R1, [R1, R2] \n\
/* 0803f34c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803f34e */ BL sprite_set_visible \n\
/* 0803f352 */ BL func_0803e908 \n\
 \n\
branch_0803f356: \n\
/* 0803f356 */ ADD SP, 0x10 \n\
/* 0803f358 */ POP {R3-R5} \n\
/* 0803f35a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803f35c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803f35e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803f360 */ POP {R4-R7} \n\
/* 0803f362 */ POP {R0} \n\
/* 0803f364 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
