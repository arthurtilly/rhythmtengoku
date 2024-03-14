asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08041444 \n\
/* 08041444 */ PUSH {R4-R7, LR} \n\
/* 08041446 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08041448 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804144a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804144c */ PUSH {R5-R7} \n\
/* 0804144e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08041450 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08041452 */ BNE branch_08041480 \n\
/* 08041454 */ LDR R2, =mechanical_horse_player_horse_sfx \n\
/* 08041456 */ LDR R0, =gCurrentEngineData \n\
/* 08041458 */ LDR R1, [R0] \n\
/* 0804145a */ MOVS R3, 0xB3 @ Set R3 to 0xB3 \n\
/* 0804145c */ LSLS R3, R3, 0x2 \n\
/* 0804145e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08041460 */ LDRB R0, [R0] \n\
/* 08041462 */ LSLS R0, R0, 0x2 \n\
/* 08041464 */ LDRB R1, [R1, 0x7] \n\
/* 08041466 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041468 */ LSLS R0, R0, 0x2 \n\
/* 0804146a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0804146c */ LDR R0, [R0] \n\
/* 0804146e */ BL play_sound \n\
/* 08041472 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08041474 */ B branch_080414e4 \n\
\n\
.ltorg \n\
 \n\
branch_08041480: \n\
/* 08041480 */ LDR R3, =mechanical_horse_teacher_horse_sfx \n\
/* 08041482 */ LDR R5, =gCurrentEngineData \n\
/* 08041484 */ LDR R2, [R5] \n\
/* 08041486 */ MOVS R1, 0xB3 @ Set R1 to 0xB3 \n\
/* 08041488 */ LSLS R1, R1, 0x2 \n\
/* 0804148a */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0804148c */ LDRB R1, [R0] \n\
/* 0804148e */ LSLS R4, R6, 0x1 \n\
/* 08041490 */ ADDS R0, R4, R6 @ Set R0 to R4 + R6 \n\
/* 08041492 */ LSLS R0, R0, 0x3 \n\
/* 08041494 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08041496 */ LSLS R1, R1, 0x2 \n\
/* 08041498 */ LDRB R2, [R2, 0x7] \n\
/* 0804149a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804149c */ LSLS R1, R1, 0x2 \n\
/* 0804149e */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080414a0 */ LDR R0, [R1] \n\
/* 080414a2 */ BL play_sound \n\
/* 080414a6 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080414a8 */ LDR R5, [R5] \n\
/* 080414aa */ LDRB R0, [R5, 0x6] \n\
/* 080414ac */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080414ae */ LSLS R2, R2, 0x1 \n\
/* 080414b0 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080414b2 */ BNE branch_080414b6 \n\
/* 080414b4 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
 \n\
branch_080414b6: \n\
/* 080414b6 */ LDR R0, [R5, 0x24] \n\
/* 080414b8 */ ASRS R0, R0, 0x8 \n\
/* 080414ba */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080414bc */ SUBS R1, 0x80 @ Subtract 0x80 from R1 \n\
/* 080414be */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080414c0 */ BGE branch_080414c4 \n\
/* 080414c2 */ NEGS R1, R1 @ Set R1 to -R1 \n\
 \n\
branch_080414c4: \n\
/* 080414c4 */ CMP R1, 0x7F @ Compare R1 and 0x7F \n\
/* 080414c6 */ BLE branch_080414da \n\
/* 080414c8 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080414ca */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 080414cc */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080414ce */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080414d0 */ LSLS R2, R2, 0x1 \n\
/* 080414d2 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 080414d4 */ BL clamp_int32 \n\
/* 080414d8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
 \n\
branch_080414da: \n\
/* 080414da */ LSLS R1, R2, 0x10 \n\
/* 080414dc */ LSRS R1, R1, 0x10 \n\
/* 080414de */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080414e0 */ BL set_soundplayer_volume \n\
 \n\
branch_080414e4: \n\
/* 080414e4 */ LDR R2, =gSpriteHandler \n\
/* 080414e6 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 080414e8 */ LDR R0, [R2] \n\
/* 080414ea */ LDR R5, =gCurrentEngineData \n\
/* 080414ec */ LDR R2, [R5] \n\
/* 080414ee */ ADDS R1, R4, R6 @ Set R1 to R4 + R6 \n\
/* 080414f0 */ LSLS R4, R1, 0x3 \n\
/* 080414f2 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080414f4 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080414f6 */ LDRSH R1, [R2, R3] \n\
/* 080414f8 */ LDRB R2, [R2, 0x7] \n\
/* 080414fa */ LSLS R2, R2, 0x18 \n\
/* 080414fc */ ASRS R2, R2, 0x18 \n\
/* 080414fe */ BL sprite_set_anim_cel \n\
/* 08041502 */ LDR R0, [R5] \n\
/* 08041504 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08041506 */ LDRB R1, [R0, 0x7] \n\
/* 08041508 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0804150a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804150c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0804150e */ STRB R1, [R0, 0x7] \n\
/* 08041510 */ MOVS R3, 0xFF @ Set R3 to 0xFF \n\
/* 08041512 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08041514 */ LSLS R1, R1, 0x18 \n\
/* 08041516 */ LSRS R1, R1, 0x18 \n\
/* 08041518 */ LDR R2, =D_0805aa00 \n\
/* 0804151a */ LDR R3, [R5] \n\
/* 0804151c */ MOVS R7, 0xB3 @ Set R7 to 0xB3 \n\
/* 0804151e */ LSLS R7, R7, 0x2 \n\
/* 08041520 */ ADDS R0, R3, R7 @ Set R0 to R3 + R7 \n\
/* 08041522 */ LDRB R0, [R0] \n\
/* 08041524 */ LSLS R0, R0, 0x2 \n\
/* 08041526 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08041528 */ LDR R0, [R0] \n\
/* 0804152a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804152c */ BLE branch_08041534 \n\
/* 0804152e */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 08041530 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08041532 */ STRB R1, [R0, 0x7] \n\
 \n\
branch_08041534: \n\
/* 08041534 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08041536 */ LDR R0, [R2] \n\
/* 08041538 */ LDR R2, [R5] \n\
/* 0804153a */ LSLS R4, R6, 0x2 \n\
/* 0804153c */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0804153e */ MOVS R3, 0x34 @ Set R3 to 0x34 \n\
/* 08041540 */ LDRSH R1, [R2, R3] \n\
/* 08041542 */ ADDS R2, 0x37 @ Add 0x37 to R2 \n\
/* 08041544 */ LDRB R2, [R2] \n\
/* 08041546 */ LSLS R2, R2, 0x18 \n\
/* 08041548 */ ASRS R2, R2, 0x18 \n\
/* 0804154a */ BL sprite_set_anim_cel \n\
/* 0804154e */ LDR R0, [R5] \n\
/* 08041550 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08041552 */ ADDS R0, 0x37 @ Add 0x37 to R0 \n\
/* 08041554 */ LDRB R1, [R0] \n\
/* 08041556 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08041558 */ STRB R1, [R0] \n\
/* 0804155a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804155c */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0804155e */ LDR R2, =D_0805aa10 \n\
/* 08041560 */ LDR R3, [R5] \n\
/* 08041562 */ ADDS R0, R3, R7 @ Set R0 to R3 + R7 \n\
/* 08041564 */ LDRB R0, [R0] \n\
/* 08041566 */ LSLS R0, R0, 0x2 \n\
/* 08041568 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0804156a */ LDR R0, [R0] \n\
/* 0804156c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804156e */ BLE branch_08041578 \n\
/* 08041570 */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 08041572 */ ADDS R0, 0x37 @ Add 0x37 to R0 \n\
/* 08041574 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08041576 */ STRB R1, [R0] \n\
 \n\
branch_08041578: \n\
/* 08041578 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0804157a */ BNE branch_08041598 \n\
/* 0804157c */ LDR R0, [R5] \n\
/* 0804157e */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 08041580 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08041582 */ STRB R2, [R0] \n\
/* 08041584 */ LDR R2, [R5] \n\
/* 08041586 */ LDR R1, =D_0805aa20 \n\
/* 08041588 */ ADDS R0, R2, R7 @ Set R0 to R2 + R7 \n\
/* 0804158a */ LDRB R0, [R0] \n\
/* 0804158c */ LSLS R0, R0, 0x2 \n\
/* 0804158e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041590 */ LDR R1, [R2, 0x2C] \n\
/* 08041592 */ LDR R0, [R0] \n\
/* 08041594 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08041596 */ STR R1, [R2, 0x2C] \n\
 \n\
branch_08041598: \n\
/* 08041598 */ POP {R3-R5} \n\
/* 0804159a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804159c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804159e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080415a0 */ POP {R4-R7} \n\
/* 080415a2 */ POP {R0} \n\
/* 080415a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
