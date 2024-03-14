asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f59c \n\
/* 0803f59c */ PUSH {R4-R7, LR} \n\
/* 0803f59e */ SUB SP, 0x14 \n\
/* 0803f5a0 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0803f5a2 */ LDR R4, =gCurrentEngineData \n\
/* 0803f5a4 */ LDR R1, [R4] \n\
/* 0803f5a6 */ MOVS R3, 0xDF @ Set R3 to 0xDF \n\
/* 0803f5a8 */ LSLS R3, R3, 0x2 \n\
/* 0803f5aa */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803f5ac */ LDRB R0, [R0] \n\
/* 0803f5ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f5b0 */ BEQ branch_0803f5c8 \n\
/* 0803f5b2 */ LDR R5, =0x396 \n\
/* 0803f5b4 */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 0803f5b6 */ LDRH R0, [R0] \n\
/* 0803f5b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f5ba */ BNE branch_0803f5c8 \n\
/* 0803f5bc */ MOVS R3, 0xE6 @ Set R3 to 0xE6 \n\
/* 0803f5be */ LSLS R3, R3, 0x2 \n\
/* 0803f5c0 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803f5c2 */ LDRB R0, [R0] \n\
/* 0803f5c4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f5c6 */ BEQ branch_0803f5d8 \n\
 \n\
branch_0803f5c8: \n\
/* 0803f5c8 */ BL gameplay_ignore_this_cue_result \n\
/* 0803f5cc */ B branch_0803f794 \n\
\n\
.ltorg \n\
 \n\
branch_0803f5d8: \n\
/* 0803f5d8 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0803f5da */ BEQ branch_0803f600 \n\
/* 0803f5dc */ LDR R5, =0x37d \n\
/* 0803f5de */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803f5e0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803f5e2 */ STRB R0, [R1] \n\
/* 0803f5e4 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0803f5e6 */ BL ticks_to_frames \n\
/* 0803f5ea */ LDR R1, [R4] \n\
/* 0803f5ec */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0803f5ee */ LSLS R2, R2, 0x2 \n\
/* 0803f5f0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803f5f2 */ LDRB R3, [R7] \n\
/* 0803f5f4 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803f5f6 */ STRB R0, [R1] \n\
/* 0803f5f8 */ B branch_0803f606 \n\
\n\
.ltorg \n\
 \n\
branch_0803f600: \n\
/* 0803f600 */ LDR R5, =0x37d \n\
/* 0803f602 */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 0803f604 */ STRB R2, [R0] \n\
 \n\
branch_0803f606: \n\
/* 0803f606 */ LDRB R5, [R7, 0xA] \n\
/* 0803f608 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0803f60a */ BEQ branch_0803f6a0 \n\
/* 0803f60c */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0803f60e */ BGT branch_0803f61c \n\
/* 0803f610 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0803f612 */ BEQ branch_0803f622 \n\
/* 0803f614 */ B branch_0803f788 \n\
\n\
.ltorg \n\
 \n\
branch_0803f61c: \n\
/* 0803f61c */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0803f61e */ BEQ branch_0803f6f8 \n\
/* 0803f620 */ B branch_0803f788 \n\
 \n\
branch_0803f622: \n\
/* 0803f622 */ BL gameplay_get_last_hit_offset \n\
/* 0803f626 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f628 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803f62a */ BL func_0803f400 \n\
/* 0803f62e */ LDRB R0, [R7] \n\
/* 0803f630 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f632 */ BL func_0803f9a0 \n\
/* 0803f636 */ LDRB R4, [R7] \n\
/* 0803f638 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0803f63a */ BL ticks_to_frames \n\
/* 0803f63e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f640 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803f642 */ BL func_0803ee58 \n\
/* 0803f646 */ LDR R1, =toss_boys_ball_bounce_sfx \n\
/* 0803f648 */ LDRB R0, [R7] \n\
/* 0803f64a */ LSLS R0, R0, 0x2 \n\
/* 0803f64c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f64e */ LDR R0, [R0] \n\
/* 0803f650 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803f652 */ LSLS R1, R1, 0x1 \n\
/* 0803f654 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f656 */ BL play_sound_w_pitch_volume \n\
/* 0803f65a */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0803f65c */ BL toss_boys_get_anim \n\
/* 0803f660 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803f662 */ LDR R0, =gSpriteHandler \n\
/* 0803f664 */ LDR R0, [R0] \n\
/* 0803f666 */ LDR R4, =gCurrentEngineData \n\
/* 0803f668 */ LDR R1, [R4] \n\
/* 0803f66a */ LDR R3, =0x366 \n\
/* 0803f66c */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803f66e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f670 */ LDRSH R1, [R1, R3] \n\
/* 0803f672 */ STR R5, [SP] \n\
/* 0803f674 */ STR R5, [SP, 0x4] \n\
/* 0803f676 */ STR R5, [SP, 0x8] \n\
/* 0803f678 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f67a */ BL sprite_set_anim \n\
/* 0803f67e */ LDR R0, [R4] \n\
/* 0803f680 */ LDR R5, =0x36e \n\
/* 0803f682 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803f684 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803f686 */ STRH R1, [R0] \n\
/* 0803f688 */ B branch_0803f788 \n\
\n\
.ltorg \n\
 \n\
branch_0803f6a0: \n\
/* 0803f6a0 */ LDRB R0, [R7] \n\
/* 0803f6a2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803f6a4 */ BL func_0803fa64 \n\
/* 0803f6a8 */ LDRB R0, [R7] \n\
/* 0803f6aa */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f6ac */ BL func_0803f9a0 \n\
/* 0803f6b0 */ LDR R0, =gSpriteHandler \n\
/* 0803f6b2 */ LDR R0, [R0] \n\
/* 0803f6b4 */ LDR R1, =gCurrentEngineData \n\
/* 0803f6b6 */ LDR R1, [R1] \n\
/* 0803f6b8 */ LDR R2, =0x366 \n\
/* 0803f6ba */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803f6bc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f6be */ LDRSH R1, [R1, R3] \n\
/* 0803f6c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f6c2 */ BL sprite_set_visible \n\
/* 0803f6c6 */ LDRB R0, [R7] \n\
/* 0803f6c8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803f6ca */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0803f6cc */ BL func_0803ee58 \n\
/* 0803f6d0 */ LDR R1, =toss_boys_ball_bounce_sfx \n\
/* 0803f6d2 */ LDRB R0, [R7] \n\
/* 0803f6d4 */ LSLS R0, R0, 0x2 \n\
/* 0803f6d6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f6d8 */ LDR R0, [R0] \n\
/* 0803f6da */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803f6dc */ LSLS R1, R1, 0x1 \n\
/* 0803f6de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f6e0 */ BL play_sound_w_pitch_volume \n\
/* 0803f6e4 */ B branch_0803f788 \n\
\n\
.ltorg \n\
 \n\
branch_0803f6f8: \n\
/* 0803f6f8 */ LDRB R0, [R7] \n\
/* 0803f6fa */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f6fc */ BL func_0803f9a0 \n\
/* 0803f700 */ LDRB R0, [R7] \n\
/* 0803f702 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f704 */ BL func_0803fa64 \n\
/* 0803f708 */ LDR R5, =gSpriteHandler \n\
/* 0803f70a */ LDR R0, [R5] \n\
/* 0803f70c */ LDR R6, =gCurrentEngineData \n\
/* 0803f70e */ LDR R1, [R6] \n\
/* 0803f710 */ LDR R2, =0x366 \n\
/* 0803f712 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803f714 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f716 */ LDRSH R1, [R1, R3] \n\
/* 0803f718 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f71a */ BL sprite_set_visible \n\
/* 0803f71e */ LDRB R4, [R7] \n\
/* 0803f720 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0803f722 */ BL ticks_to_frames \n\
/* 0803f726 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f728 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803f72a */ BL func_0803ee58 \n\
/* 0803f72e */ LDR R1, =toss_boys_ball_pop_sfx  \n\
/* 0803f730 */ LDRB R0, [R7] \n\
/* 0803f732 */ LSLS R0, R0, 0x2 \n\
/* 0803f734 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f736 */ LDR R0, [R0] \n\
/* 0803f738 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803f73a */ LSLS R1, R1, 0x1 \n\
/* 0803f73c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f73e */ BL play_sound_w_pitch_volume \n\
/* 0803f742 */ LDRB R0, [R7] \n\
/* 0803f744 */ ADDS R0, 0x1F @ Add 0x1F to R0 \n\
/* 0803f746 */ BL func_0803e9b0 \n\
/* 0803f74a */ LDRB R4, [R7] \n\
/* 0803f74c */ LSLS R4, R4, 0x2 \n\
/* 0803f74e */ LDR R0, =D_089e86a8 \n\
/* 0803f750 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0803f752 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0803f754 */ BL toss_boys_get_anim \n\
/* 0803f758 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f75a */ LDR R0, [R5] \n\
/* 0803f75c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803f75e */ LDRSH R3, [R4, R5] \n\
/* 0803f760 */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 0803f762 */ LDRSH R2, [R4, R5] \n\
/* 0803f764 */ STR R2, [SP] \n\
/* 0803f766 */ MOVS R2, 0x84 @ Set R2 to 0x84 \n\
/* 0803f768 */ LSLS R2, R2, 0x7 \n\
/* 0803f76a */ STR R2, [SP, 0x4] \n\
/* 0803f76c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803f76e */ STR R2, [SP, 0x8] \n\
/* 0803f770 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803f772 */ STR R4, [SP, 0xC] \n\
/* 0803f774 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0803f776 */ STR R2, [SP, 0x10] \n\
/* 0803f778 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f77a */ BL sprite_create \n\
/* 0803f77e */ LDR R0, [R6] \n\
/* 0803f780 */ MOVS R1, 0xDF @ Set R1 to 0xDF \n\
/* 0803f782 */ LSLS R1, R1, 0x2 \n\
/* 0803f784 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f786 */ STRB R4, [R0] \n\
 \n\
branch_0803f788: \n\
/* 0803f788 */ LDR R0, =gCurrentEngineData \n\
/* 0803f78a */ LDR R0, [R0] \n\
/* 0803f78c */ LDR R2, =0x392 \n\
/* 0803f78e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803f790 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f792 */ STRH R1, [R0] \n\
 \n\
branch_0803f794: \n\
/* 0803f794 */ ADD SP, 0x14 \n\
/* 0803f796 */ POP {R4-R7} \n\
/* 0803f798 */ POP {R0} \n\
/* 0803f79a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
