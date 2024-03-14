asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_cue_hit \n\
/* 080312b8 */ PUSH {R4-R6, LR} \n\
/* 080312ba */ LDR R0, =gCurrentEngineData \n\
/* 080312bc */ LDR R2, [R0] \n\
/* 080312be */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 080312c0 */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 080312c2 */ LDRB R1, [R1, 0x2] \n\
/* 080312c4 */ MOVS R0, 0x34 @ Set R0 to 0x34 \n\
/* 080312c6 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 080312c8 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 080312ca */ MOVS R0, 0xEC @ Set R0 to 0xEC \n\
/* 080312cc */ LSLS R0, R0, 0x1 \n\
/* 080312ce */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 080312d0 */ LDRH R0, [R1] \n\
/* 080312d2 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080312d4 */ STRH R0, [R1] \n\
/* 080312d6 */ LDR R0, =gSpriteHandler \n\
/* 080312d8 */ LDR R0, [R0] \n\
/* 080312da */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080312dc */ LDRSH R1, [R5, R2] \n\
/* 080312de */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 080312e0 */ BL sprite_get_data \n\
/* 080312e4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080312e6 */ LDR R0, =anim_small_demon_hop \n\
/* 080312e8 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080312ea */ BNE branch_08031300 \n\
/* 080312ec */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080312ee */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 080312f0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080312f2 */ B branch_08031320 \n\
\n\
.ltorg \n\
 \n\
branch_08031300: \n\
/* 08031300 */ LDR R0, =anim_med_demon_hop \n\
/* 08031302 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031304 */ BNE branch_08031314 \n\
/* 08031306 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08031308 */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 0803130a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803130c */ B branch_08031320 \n\
\n\
.ltorg \n\
 \n\
branch_08031314: \n\
/* 08031314 */ LDR R0, =anim_propeller_demon_hover \n\
/* 08031316 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031318 */ BNE branch_0803132c \n\
/* 0803131a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803131c */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 0803131e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
 \n\
branch_08031320: \n\
/* 08031320 */ STRB R0, [R1] \n\
/* 08031322 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08031324 */ B branch_0803133a \n\
\n\
.ltorg \n\
 \n\
branch_0803132c: \n\
/* 0803132c */ LDR R0, =anim_winged_demon_fly \n\
/* 0803132e */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 08031330 */ ADDS R6, 0x30 @ Add 0x30 to R6 \n\
/* 08031332 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031334 */ BNE branch_0803133a \n\
/* 08031336 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08031338 */ STRB R0, [R6] \n\
 \n\
branch_0803133a: \n\
/* 0803133a */ LDRB R0, [R6] \n\
/* 0803133c */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0803133e */ BHI branch_080313f2 \n\
/* 08031340 */ LSLS R0, R0, 0x2 \n\
/* 08031342 */ LDR R1, =jtbl_08031354 \n\
/* 08031344 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08031346 */ LDR R0, [R0] \n\
/* 08031348 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08031354: \n\
.word jump_0803136c \n\
.word jump_08031374 \n\
.word jump_0803137c \n\
.word jump_0803139c \n\
.word jump_080313b2 \n\
.word jump_080313b2 \n\
jump_0803136c: \n\
/* 0803136c */ LDR R1, [R5, 0x8] \n\
/* 0803136e */ LDR R2, [R5, 0xC] \n\
/* 08031370 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08031372 */ B branch_0803138c \n\
jump_08031374: \n\
/* 08031374 */ LDR R1, [R5, 0x8] \n\
/* 08031376 */ LDR R2, [R5, 0xC] \n\
/* 08031378 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803137a */ B branch_0803138c \n\
jump_0803137c: \n\
/* 0803137c */ LDR R1, [R5, 0x8] \n\
/* 0803137e */ LDR R2, [R5, 0xC] \n\
/* 08031380 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08031382 */ BL func_08032510 \n\
/* 08031386 */ LDR R1, [R5, 0x8] \n\
/* 08031388 */ LDR R2, [R5, 0xC] \n\
/* 0803138a */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
 \n\
branch_0803138c: \n\
/* 0803138c */ BL func_08032510 \n\
/* 08031390 */ LDR R1, [R5, 0x8] \n\
/* 08031392 */ LDR R2, [R5, 0xC] \n\
/* 08031394 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08031396 */ BL func_08032510 \n\
/* 0803139a */ B branch_080313f2 \n\
jump_0803139c: \n\
/* 0803139c */ LDR R1, [R5, 0x8] \n\
/* 0803139e */ LDR R2, [R5, 0xC] \n\
/* 080313a0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080313a2 */ BL func_08032510 \n\
/* 080313a6 */ LDR R1, [R5, 0x8] \n\
/* 080313a8 */ LDR R2, [R5, 0xC] \n\
/* 080313aa */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080313ac */ BL func_08032510 \n\
/* 080313b0 */ B branch_080313f2 \n\
jump_080313b2: \n\
/* 080313b2 */ LDR R1, [R5, 0x8] \n\
/* 080313b4 */ LDR R2, [R5, 0xC] \n\
/* 080313b6 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 080313b8 */ BL func_08032510 \n\
/* 080313bc */ LDR R1, [R5, 0x8] \n\
/* 080313be */ LDR R2, [R5, 0xC] \n\
/* 080313c0 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080313c2 */ BL func_08032510 \n\
/* 080313c6 */ LDR R1, [R5, 0x8] \n\
/* 080313c8 */ LDR R0, =0xfffff800 \n\
/* 080313ca */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080313cc */ LDR R2, [R5, 0xC] \n\
/* 080313ce */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 080313d0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080313d2 */ BL func_08032510 \n\
/* 080313d6 */ LDR R1, [R5, 0x8] \n\
/* 080313d8 */ LDR R2, [R5, 0xC] \n\
/* 080313da */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 080313dc */ LSLS R4, R4, 0x4 \n\
/* 080313de */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080313e0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080313e2 */ BL func_08032510 \n\
/* 080313e6 */ LDR R1, [R5, 0x8] \n\
/* 080313e8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080313ea */ LDR R2, [R5, 0xC] \n\
/* 080313ec */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080313ee */ BL func_08032510 \n\
 \n\
branch_080313f2: \n\
/* 080313f2 */ LDR R4, =gSpriteHandler \n\
/* 080313f4 */ LDR R0, [R4] \n\
/* 080313f6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080313f8 */ LDRSH R1, [R5, R2] \n\
/* 080313fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080313fc */ BL sprite_set_visible \n\
/* 08031400 */ LDR R0, [R4] \n\
/* 08031402 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08031404 */ LDRSH R1, [R5, R2] \n\
/* 08031406 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031408 */ BL sprite_set_visible \n\
/* 0803140c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803140e */ STRB R0, [R5, 0x4] \n\
/* 08031410 */ LDR R0, =gCurrentEngineData \n\
/* 08031412 */ LDR R0, [R0] \n\
/* 08031414 */ MOVS R1, 0xE8 @ Set R1 to 0xE8 \n\
/* 08031416 */ LSLS R1, R1, 0x1 \n\
/* 08031418 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803141a */ LDRB R1, [R0] \n\
/* 0803141c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803141e */ BNE branch_08031426 \n\
/* 08031420 */ LDRB R0, [R6] \n\
/* 08031422 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08031424 */ BEQ branch_08031430 \n\
 \n\
branch_08031426: \n\
/* 08031426 */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08031428 */ BNE branch_080314cc \n\
/* 0803142a */ LDRB R0, [R6] \n\
/* 0803142c */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0803142e */ BNE branch_080314cc \n\
 \n\
branch_08031430: \n\
/* 08031430 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08031432 */ BL set_beatscript_speed \n\
/* 08031436 */ LDR R0, =0xfffff400 \n\
/* 08031438 */ BL scene_set_music_pitch_env \n\
/* 0803143c */ LDR R4, =gCurrentEngineData \n\
/* 0803143e */ LDR R2, [R4] \n\
/* 08031440 */ MOVS R0, 0xE9 @ Set R0 to 0xE9 \n\
/* 08031442 */ LSLS R0, R0, 0x1 \n\
/* 08031444 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 08031446 */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
/* 08031448 */ STRH R0, [R1] \n\
/* 0803144a */ MOVS R1, 0xEC @ Set R1 to 0xEC \n\
/* 0803144c */ LSLS R1, R1, 0x1 \n\
/* 0803144e */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08031450 */ LDRH R0, [R0] \n\
/* 08031452 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08031454 */ BHI branch_08031470 \n\
/* 08031456 */ LDR R1, =s_sword_ho_seqData \n\
/* 08031458 */ B branch_0803147e \n\
\n\
.ltorg \n\
 \n\
branch_08031470: \n\
/* 08031470 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08031472 */ BHI branch_0803147c \n\
/* 08031474 */ LDR R1, =s_sword_hi_seqData \n\
/* 08031476 */ B branch_0803147e \n\
\n\
.ltorg \n\
 \n\
branch_0803147c: \n\
/* 0803147c */ LDR R1, =s_sword_orya_seqData \n\
 \n\
branch_0803147e: \n\
/* 0803147e */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08031480 */ BL play_sound_in_player \n\
/* 08031484 */ LDR R1, [R4] \n\
/* 08031486 */ MOVS R2, 0xEA @ Set R2 to 0xEA \n\
/* 08031488 */ LSLS R2, R2, 0x1 \n\
/* 0803148a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803148c */ STR R0, [R1] \n\
/* 0803148e */ LDR R5, =gCurrentEngineData \n\
/* 08031490 */ LDR R0, [R5] \n\
/* 08031492 */ MOVS R4, 0xEA @ Set R4 to 0xEA \n\
/* 08031494 */ LSLS R4, R4, 0x1 \n\
/* 08031496 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08031498 */ LDR R0, [R0] \n\
/* 0803149a */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0803149c */ BL set_soundplayer_speed \n\
/* 080314a0 */ LDR R0, [R5] \n\
/* 080314a2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080314a4 */ LDR R0, [R0] \n\
/* 080314a6 */ LDR R1, =0xfffff400 \n\
/* 080314a8 */ BL set_soundplayer_pitch \n\
/* 080314ac */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080314ae */ BL scene_hide_bg_layer \n\
/* 080314b2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080314b4 */ BL scene_hide_bg_layer \n\
/* 080314b8 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080314ba */ BL scene_hide_bg_layer \n\
/* 080314be */ B branch_0803153e \n\
\n\
.ltorg \n\
 \n\
branch_080314cc: \n\
/* 080314cc */ LDR R4, =gCurrentEngineData \n\
/* 080314ce */ LDR R0, [R4] \n\
/* 080314d0 */ MOVS R1, 0xEC @ Set R1 to 0xEC \n\
/* 080314d2 */ LSLS R1, R1, 0x1 \n\
/* 080314d4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080314d6 */ LDRH R0, [R0] \n\
/* 080314d8 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080314da */ BHI branch_080314e8 \n\
/* 080314dc */ LDR R1, =s_sword_ho_seqData \n\
/* 080314de */ B branch_080314f6 \n\
\n\
.ltorg \n\
 \n\
branch_080314e8: \n\
/* 080314e8 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 080314ea */ BHI branch_080314f4 \n\
/* 080314ec */ LDR R1, =s_sword_hi_seqData \n\
/* 080314ee */ B branch_080314f6 \n\
\n\
.ltorg \n\
 \n\
branch_080314f4: \n\
/* 080314f4 */ LDR R1, =s_sword_orya_seqData \n\
 \n\
branch_080314f6: \n\
/* 080314f6 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080314f8 */ BL play_sound_in_player \n\
/* 080314fc */ LDR R1, [R4] \n\
/* 080314fe */ MOVS R2, 0xEA @ Set R2 to 0xEA \n\
/* 08031500 */ LSLS R2, R2, 0x1 \n\
/* 08031502 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08031504 */ STR R0, [R1] \n\
/* 08031506 */ LDR R5, =gCurrentEngineData \n\
/* 08031508 */ LDR R0, [R5] \n\
/* 0803150a */ MOVS R4, 0xEA @ Set R4 to 0xEA \n\
/* 0803150c */ LSLS R4, R4, 0x1 \n\
/* 0803150e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08031510 */ LDR R0, [R0] \n\
/* 08031512 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08031514 */ LSLS R1, R1, 0x1 \n\
/* 08031516 */ BL set_soundplayer_speed \n\
/* 0803151a */ LDR R0, [R5] \n\
/* 0803151c */ ADDS R4, R0, R4 @ Set R4 to R0 + R4 \n\
/* 0803151e */ LDR R4, [R4] \n\
/* 08031520 */ MOVS R1, 0xEC @ Set R1 to 0xEC \n\
/* 08031522 */ LSLS R1, R1, 0x1 \n\
/* 08031524 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08031526 */ LDRH R0, [R0] \n\
/* 08031528 */ LSLS R0, R0, 0x7 \n\
/* 0803152a */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0803152c */ LSLS R1, R1, 0x2 \n\
/* 0803152e */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08031530 */ BLE branch_08031534 \n\
/* 08031532 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
 \n\
branch_08031534: \n\
/* 08031534 */ LSLS R1, R0, 0x10 \n\
/* 08031536 */ ASRS R1, R1, 0x10 \n\
/* 08031538 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803153a */ BL set_soundplayer_pitch \n\
 \n\
branch_0803153e: \n\
/* 0803153e */ BL func_080317f4 \n\
/* 08031542 */ LDR R5, =gCurrentEngineData \n\
/* 08031544 */ LDR R0, [R5] \n\
/* 08031546 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08031548 */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0803154a */ LDRB R0, [R1] \n\
/* 0803154c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803154e */ BNE branch_08031576 \n\
/* 08031550 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08031552 */ STRB R0, [R1] \n\
/* 08031554 */ LDR R4, =gSpriteHandler \n\
/* 08031556 */ LDR R0, [R4] \n\
/* 08031558 */ LDR R1, [R5] \n\
/* 0803155a */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 0803155c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803155e */ LDRSH R1, [R1, R2] \n\
/* 08031560 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031562 */ BL sprite_set_anim_cel \n\
/* 08031566 */ LDR R0, [R4] \n\
/* 08031568 */ LDR R1, [R5] \n\
/* 0803156a */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 0803156c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803156e */ LDRSH R1, [R1, R2] \n\
/* 08031570 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08031572 */ BL sprite_set_visible \n\
 \n\
branch_08031576: \n\
/* 08031576 */ POP {R4-R6} \n\
/* 08031578 */ POP {R0} \n\
/* 0803157a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
