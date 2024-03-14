asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802327c \n\
/* 0802327c */ PUSH {R4-R7, LR} \n\
/* 0802327e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08023280 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08023282 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08023284 */ PUSH {R5-R7} \n\
/* 08023286 */ SUB SP, 0x14 \n\
/* 08023288 */ LDR R4, =gCurrentEngineData \n\
/* 0802328a */ LDR R2, [R4] \n\
/* 0802328c */ LDRB R0, [R2] \n\
/* 0802328e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08023290 */ EORS R0, R1 @ Set R0 to R0 ^ R1 \n\
/* 08023292 */ NEGS R3, R0 @ Set R3 to -R0 \n\
/* 08023294 */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 08023296 */ LSRS R3, R3, 0x1F \n\
/* 08023298 */ MOVS R0, 0x83 @ Set R0 to 0x83 \n\
/* 0802329a */ LSLS R0, R0, 0x3 \n\
/* 0802329c */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0802329e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080232a0 */ STR R0, [R1] \n\
/* 080232a2 */ LDR R1, =0x424 \n\
/* 080232a4 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080232a6 */ LDR R0, =D_030046a8 \n\
/* 080232a8 */ LDR R0, [R0] \n\
/* 080232aa */ MOVS R1, 0xAA @ Set R1 to 0xAA \n\
/* 080232ac */ LSLS R1, R1, 0x2 \n\
/* 080232ae */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080232b0 */ LDR R0, [R0] \n\
/* 080232b2 */ STR R0, [R2] \n\
/* 080232b4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080232b6 */ LDR R6, =gSpriteHandler \n\
/* 080232b8 */ MOV R8, R4 @ Set R8 to R4 \n\
/* 080232ba */ LDR R7, =0x41c \n\
/* 080232bc */ LSLS R3, R3, 0x10 \n\
/* 080232be */ MOV R9, R3 @ Set R9 to R3 \n\
/* 080232c0 */ MOV R10, R9 @ Set R10 to R9 \n\
 \n\
branch_080232c2: \n\
/* 080232c2 */ LDR R0, [R6] \n\
/* 080232c4 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 080232c6 */ STR R1, [SP] \n\
/* 080232c8 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080232ca */ LSLS R1, R1, 0x4 \n\
/* 080232cc */ STR R1, [SP, 0x4] \n\
/* 080232ce */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080232d0 */ STR R1, [SP, 0x8] \n\
/* 080232d2 */ STR R1, [SP, 0xC] \n\
/* 080232d4 */ STR R1, [SP, 0x10] \n\
/* 080232d6 */ LDR R1, =anim_mannequin_score_num \n\
/* 080232d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080232da */ MOVS R3, 0x58 @ Set R3 to 0x58 \n\
/* 080232dc */ BL sprite_create \n\
/* 080232e0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080232e2 */ LDR R1, [R2] \n\
/* 080232e4 */ LSLS R4, R5, 0x1 \n\
/* 080232e6 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 080232e8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080232ea */ STRH R0, [R1] \n\
/* 080232ec */ LDR R0, [R6] \n\
/* 080232ee */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080232f0 */ LDRSH R1, [R1, R3] \n\
/* 080232f2 */ LSLS R3, R5, 0x3 \n\
/* 080232f4 */ MOVS R2, 0x58 @ Set R2 to 0x58 \n\
/* 080232f6 */ SUBS R2, R2, R3 @ Set R2 to R2 - R3 \n\
/* 080232f8 */ LSLS R2, R2, 0x10 \n\
/* 080232fa */ ASRS R2, R2, 0x10 \n\
/* 080232fc */ BL sprite_set_x \n\
/* 08023300 */ LDR R0, [R6] \n\
/* 08023302 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08023304 */ LDR R1, [R2] \n\
/* 08023306 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08023308 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802330a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802330c */ LDRSH R1, [R1, R3] \n\
/* 0802330e */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08023310 */ LSRS R2, R3, 0x10 \n\
/* 08023312 */ BL sprite_set_visible \n\
/* 08023316 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08023318 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0802331a */ BLS branch_080232c2 \n\
/* 0802331c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802331e */ LDR R6, =gSpriteHandler \n\
/* 08023320 */ LDR R0, =gCurrentEngineData \n\
/* 08023322 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08023324 */ MOVS R7, 0x85 @ Set R7 to 0x85 \n\
/* 08023326 */ LSLS R7, R7, 0x3 \n\
 \n\
branch_08023328: \n\
/* 08023328 */ LDR R0, [R6] \n\
/* 0802332a */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0802332c */ STR R1, [SP] \n\
/* 0802332e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08023330 */ LSLS R1, R1, 0x4 \n\
/* 08023332 */ STR R1, [SP, 0x4] \n\
/* 08023334 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08023336 */ STR R1, [SP, 0x8] \n\
/* 08023338 */ STR R1, [SP, 0xC] \n\
/* 0802333a */ STR R1, [SP, 0x10] \n\
/* 0802333c */ LDR R1, =anim_mannequin_high_score_num \n\
/* 0802333e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023340 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 08023342 */ BL sprite_create \n\
/* 08023346 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08023348 */ LDR R1, [R2] \n\
/* 0802334a */ LSLS R4, R5, 0x1 \n\
/* 0802334c */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802334e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08023350 */ STRH R0, [R1] \n\
/* 08023352 */ LDR R0, [R6] \n\
/* 08023354 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023356 */ LDRSH R1, [R1, R3] \n\
/* 08023358 */ LSLS R3, R5, 0x2 \n\
/* 0802335a */ MOVS R2, 0x60 @ Set R2 to 0x60 \n\
/* 0802335c */ SUBS R2, R2, R3 @ Set R2 to R2 - R3 \n\
/* 0802335e */ LSLS R2, R2, 0x10 \n\
/* 08023360 */ ASRS R2, R2, 0x10 \n\
/* 08023362 */ BL sprite_set_x \n\
/* 08023366 */ LDR R0, [R6] \n\
/* 08023368 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802336a */ LDR R1, [R2] \n\
/* 0802336c */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802336e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08023370 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023372 */ LDRSH R1, [R1, R3] \n\
/* 08023374 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08023376 */ LSRS R2, R3, 0x10 \n\
/* 08023378 */ BL sprite_set_visible \n\
/* 0802337c */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0802337e */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 08023380 */ BLS branch_08023328 \n\
/* 08023382 */ BL func_080231c8 \n\
/* 08023386 */ ADD SP, 0x14 \n\
/* 08023388 */ POP {R3-R5} \n\
/* 0802338a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802338c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802338e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08023390 */ POP {R4-R7} \n\
/* 08023392 */ POP {R0} \n\
/* 08023394 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
