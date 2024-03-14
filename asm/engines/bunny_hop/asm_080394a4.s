asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080394a4 \n\
/* 080394a4 */ PUSH {R4-R7, LR} \n\
/* 080394a6 */ LDR R6, =gCurrentEngineData \n\
/* 080394a8 */ LDR R0, [R6] \n\
/* 080394aa */ MOVS R1, 0xBB @ Set R1 to 0xBB \n\
/* 080394ac */ LSLS R1, R1, 0x1 \n\
/* 080394ae */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080394b0 */ LDRB R0, [R0] \n\
/* 080394b2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080394b4 */ BNE branch_08039514 \n\
/* 080394b6 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080394b8 */ BL ticks_to_frames \n\
/* 080394bc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080394be */ LDR R4, [R6] \n\
/* 080394c0 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 080394c2 */ ADDS R5, 0xE4 @ Add 0xE4 to R5 \n\
/* 080394c4 */ MOVS R7, 0xB4 @ Set R7 to 0xB4 \n\
/* 080394c6 */ LSLS R7, R7, 0x7 \n\
/* 080394c8 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080394ca */ BL __divsi3 \n\
/* 080394ce */ LDR R1, [R5] \n\
/* 080394d0 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 080394d2 */ STR R1, [R5] \n\
/* 080394d4 */ ADDS R4, 0xE0 @ Add 0xE0 to R4 \n\
/* 080394d6 */ LDR R0, [R4] \n\
/* 080394d8 */ ASRS R0, R0, 0x8 \n\
/* 080394da */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 080394dc */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080394de */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080394e0 */ BLT branch_080394fc \n\
/* 080394e2 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080394e4 */ BL ticks_to_frames \n\
/* 080394e8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080394ea */ LDR R4, [R6] \n\
/* 080394ec */ ADDS R4, 0xE8 @ Add 0xE8 to R4 \n\
/* 080394ee */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 080394f0 */ LSLS R0, R0, 0x6 \n\
/* 080394f2 */ BL __divsi3 \n\
/* 080394f6 */ LDR R1, [R4] \n\
/* 080394f8 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 080394fa */ STR R1, [R4] \n\
 \n\
branch_080394fc: \n\
/* 080394fc */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080394fe */ BL ticks_to_frames \n\
/* 08039502 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08039504 */ LDR R4, [R6] \n\
/* 08039506 */ ADDS R4, 0xEC @ Add 0xEC to R4 \n\
/* 08039508 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803950a */ BL __divsi3 \n\
/* 0803950e */ LDR R1, [R4] \n\
/* 08039510 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08039512 */ STR R1, [R4] \n\
 \n\
branch_08039514: \n\
/* 08039514 */ LDR R5, =gCurrentEngineData \n\
/* 08039516 */ LDR R1, [R5] \n\
/* 08039518 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803951a */ ADDS R0, 0xE4 @ Add 0xE4 to R0 \n\
/* 0803951c */ LDR R0, [R0] \n\
/* 0803951e */ LSLS R0, R0, 0x8 \n\
/* 08039520 */ ASRS R3, R0, 0x10 \n\
/* 08039522 */ ADDS R1, 0xE0 @ Add 0xE0 to R1 \n\
/* 08039524 */ LDR R0, [R1] \n\
/* 08039526 */ ASRS R0, R0, 0x8 \n\
/* 08039528 */ LDR R4, =0xfffffea0 \n\
/* 0803952a */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0803952c */ BGE branch_08039530 \n\
/* 0803952e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_08039530: \n\
/* 08039530 */ MOVS R2, 0xB0 @ Set R2 to 0xB0 \n\
/* 08039532 */ LSLS R2, R2, 0x1 \n\
/* 08039534 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08039536 */ ADDS R2, R0, R6 @ Set R2 to R0 + R6 \n\
/* 08039538 */ LSLS R2, R2, 0x10 \n\
/* 0803953a */ ASRS R2, R2, 0x10 \n\
/* 0803953c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803953e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08039540 */ BL scene_set_bg_layer_pos \n\
/* 08039544 */ LDR R1, [R5] \n\
/* 08039546 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08039548 */ ADDS R0, 0xE8 @ Add 0xE8 to R0 \n\
/* 0803954a */ LDR R0, [R0] \n\
/* 0803954c */ LSLS R0, R0, 0x8 \n\
/* 0803954e */ ASRS R3, R0, 0x10 \n\
/* 08039550 */ ADDS R1, 0xE0 @ Add 0xE0 to R1 \n\
/* 08039552 */ LDR R0, [R1] \n\
/* 08039554 */ LSRS R1, R0, 0x1F \n\
/* 08039556 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08039558 */ ASRS R0, R0, 0x9 \n\
/* 0803955a */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0803955c */ BGE branch_08039560 \n\
/* 0803955e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_08039560: \n\
/* 08039560 */ ADDS R2, R0, R6 @ Set R2 to R0 + R6 \n\
/* 08039562 */ LSLS R2, R2, 0x10 \n\
/* 08039564 */ ASRS R2, R2, 0x10 \n\
/* 08039566 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08039568 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0803956a */ BL scene_set_bg_layer_pos \n\
/* 0803956e */ LDR R0, =gSpriteHandler \n\
/* 08039570 */ LDR R4, [R0] \n\
/* 08039572 */ LDR R0, [R5] \n\
/* 08039574 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 08039576 */ LSLS R2, R2, 0x1 \n\
/* 08039578 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803957a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803957c */ LDRSH R3, [R1, R2] \n\
/* 0803957e */ ADDS R0, 0xE0 @ Add 0xE0 to R0 \n\
/* 08039580 */ LDR R0, [R0] \n\
/* 08039582 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08039584 */ LSRS R1, R0, 0x1F \n\
/* 08039586 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08039588 */ ASRS R0, R0, 0x9 \n\
/* 0803958a */ MOVS R1, 0xB0 @ Set R1 to 0xB0 \n\
/* 0803958c */ LSLS R1, R1, 0x1 \n\
/* 0803958e */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08039590 */ BLE branch_08039594 \n\
/* 08039592 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
 \n\
branch_08039594: \n\
/* 08039594 */ LDR R1, =0xfffffec0 \n\
/* 08039596 */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 08039598 */ LSLS R2, R2, 0x10 \n\
/* 0803959a */ ASRS R2, R2, 0x10 \n\
/* 0803959c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803959e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 080395a0 */ BL sprite_set_y \n\
/* 080395a4 */ LDR R0, [R5] \n\
/* 080395a6 */ ADDS R0, 0xEC @ Add 0xEC to R0 \n\
/* 080395a8 */ LDR R0, [R0] \n\
/* 080395aa */ ASRS R0, R0, 0x8 \n\
/* 080395ac */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080395ae */ LSLS R2, R2, 0x1 \n\
/* 080395b0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080395b2 */ BL clamp_int32 \n\
/* 080395b6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080395b8 */ LSLS R1, R1, 0x10 \n\
/* 080395ba */ ASRS R1, R1, 0x10 \n\
/* 080395bc */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080395be */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080395c0 */ BL scene_set_bg_layer_pos \n\
/* 080395c4 */ POP {R4-R7} \n\
/* 080395c6 */ POP {R0} \n\
/* 080395c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
