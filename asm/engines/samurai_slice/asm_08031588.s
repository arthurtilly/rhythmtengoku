asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_cue_barely \n\
/* 08031588 */ PUSH {R4-R6, LR} \n\
/* 0803158a */ LDR R0, =gCurrentEngineData \n\
/* 0803158c */ LDR R2, [R0] \n\
/* 0803158e */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08031590 */ ADDS R6, 0x10 @ Add 0x10 to R6 \n\
/* 08031592 */ LDRB R1, [R1, 0x2] \n\
/* 08031594 */ MOVS R0, 0x34 @ Set R0 to 0x34 \n\
/* 08031596 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08031598 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 0803159a */ MOVS R0, 0xEC @ Set R0 to 0xEC \n\
/* 0803159c */ LSLS R0, R0, 0x1 \n\
/* 0803159e */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 080315a0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080315a2 */ STRH R0, [R1] \n\
/* 080315a4 */ LDR R4, =gSpriteHandler \n\
/* 080315a6 */ LDR R0, [R4] \n\
/* 080315a8 */ MOVS R3, 0xED @ Set R3 to 0xED \n\
/* 080315aa */ LSLS R3, R3, 0x1 \n\
/* 080315ac */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 080315ae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080315b0 */ LDRSH R1, [R1, R2] \n\
/* 080315b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080315b4 */ BL sprite_set_visible \n\
/* 080315b8 */ LDR R0, [R4] \n\
/* 080315ba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080315bc */ LDRSH R1, [R6, R3] \n\
/* 080315be */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 080315c0 */ BL sprite_get_data \n\
/* 080315c4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080315c6 */ LDR R0, =anim_small_demon_hop \n\
/* 080315c8 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080315ca */ BNE branch_080315e0 \n\
/* 080315cc */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080315ce */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 080315d0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080315d2 */ B branch_08031600 \n\
\n\
.ltorg \n\
 \n\
branch_080315e0: \n\
/* 080315e0 */ LDR R0, =anim_med_demon_hop \n\
/* 080315e2 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080315e4 */ BNE branch_080315f4 \n\
/* 080315e6 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080315e8 */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 080315ea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080315ec */ B branch_08031600 \n\
\n\
.ltorg \n\
 \n\
branch_080315f4: \n\
/* 080315f4 */ LDR R0, =anim_propeller_demon_hover \n\
/* 080315f6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080315f8 */ BNE branch_0803160c \n\
/* 080315fa */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080315fc */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 080315fe */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
 \n\
branch_08031600: \n\
/* 08031600 */ STRB R0, [R1] \n\
/* 08031602 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08031604 */ B branch_0803161a \n\
\n\
.ltorg \n\
 \n\
branch_0803160c: \n\
/* 0803160c */ LDR R0, =anim_winged_demon_fly \n\
/* 0803160e */ ADDS R4, R6, 0x0 @ Set R4 to R6 + 0x0 \n\
/* 08031610 */ ADDS R4, 0x30 @ Add 0x30 to R4 \n\
/* 08031612 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031614 */ BNE branch_0803161a \n\
/* 08031616 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08031618 */ STRB R0, [R4] \n\
 \n\
branch_0803161a: \n\
/* 0803161a */ BL func_080317f4 \n\
/* 0803161e */ LDRB R0, [R4] \n\
/* 08031620 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08031622 */ BHI branch_0803168a \n\
/* 08031624 */ LSLS R0, R0, 0x2 \n\
/* 08031626 */ LDR R1, =jtbl_08031638 \n\
/* 08031628 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803162a */ LDR R0, [R0] \n\
/* 0803162c */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08031638: \n\
.word jump_08031650 \n\
.word jump_0803165c \n\
.word jump_08031668 \n\
.word jump_08031674 \n\
.word jump_08031680 \n\
.word jump_08031680 \n\
jump_08031650: \n\
/* 08031650 */ LDR R1, [R6, 0x8] \n\
/* 08031652 */ LDR R2, [R6, 0xC] \n\
/* 08031654 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08031656 */ BL func_08032510 \n\
/* 0803165a */ B branch_0803168a \n\
jump_0803165c: \n\
/* 0803165c */ LDR R1, [R6, 0x8] \n\
/* 0803165e */ LDR R2, [R6, 0xC] \n\
/* 08031660 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 08031662 */ BL func_08032510 \n\
/* 08031666 */ B branch_0803168a \n\
jump_08031668: \n\
/* 08031668 */ LDR R1, [R6, 0x8] \n\
/* 0803166a */ LDR R2, [R6, 0xC] \n\
/* 0803166c */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0803166e */ BL func_08032510 \n\
/* 08031672 */ B branch_0803168a \n\
jump_08031674: \n\
/* 08031674 */ LDR R1, [R6, 0x8] \n\
/* 08031676 */ LDR R2, [R6, 0xC] \n\
/* 08031678 */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 0803167a */ BL func_08032510 \n\
/* 0803167e */ B branch_0803168a \n\
jump_08031680: \n\
/* 08031680 */ LDR R1, [R6, 0x8] \n\
/* 08031682 */ LDR R2, [R6, 0xC] \n\
/* 08031684 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08031686 */ BL func_08032510 \n\
 \n\
branch_0803168a: \n\
/* 0803168a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803168c */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803168e */ STRB R0, [R6, 0x4] \n\
/* 08031690 */ LDR R4, =gSpriteHandler \n\
/* 08031692 */ LDR R0, [R4] \n\
/* 08031694 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031696 */ LDRSH R1, [R6, R2] \n\
/* 08031698 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803169a */ BL sprite_set_visible \n\
/* 0803169e */ LDR R0, [R4] \n\
/* 080316a0 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080316a2 */ LDRSH R1, [R6, R3] \n\
/* 080316a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080316a6 */ BL sprite_set_visible \n\
/* 080316aa */ LDR R1, =gCurrentEngineData \n\
/* 080316ac */ LDR R0, [R1] \n\
/* 080316ae */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 080316b0 */ STRB R5, [R0] \n\
/* 080316b2 */ LDR R2, [R1] \n\
/* 080316b4 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080316b6 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 080316b8 */ STR R5, [R0] \n\
/* 080316ba */ LDR R0, =D_03004b10 \n\
/* 080316bc */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080316be */ LSLS R1, R1, 0x5 \n\
/* 080316c0 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 080316c2 */ STRH R1, [R0] \n\
/* 080316c4 */ MOVS R1, 0xF1 @ Set R1 to 0xF1 \n\
/* 080316c6 */ LSLS R1, R1, 0x1 \n\
/* 080316c8 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 080316ca */ LDRH R0, [R0] \n\
/* 080316cc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080316ce */ BL scene_set_music_track_volume \n\
/* 080316d2 */ POP {R4-R6} \n\
/* 080316d4 */ POP {R0} \n\
/* 080316d6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
