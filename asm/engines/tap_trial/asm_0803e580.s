asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_cue_miss \n\
/* 0803e580 */ PUSH {R4-R6, LR} \n\
/* 0803e582 */ SUB SP, 0xC \n\
/* 0803e584 */ LDR R5, =gCurrentEngineData \n\
/* 0803e586 */ LDR R0, [R5] \n\
/* 0803e588 */ LDRB R1, [R0, 0x1E] \n\
/* 0803e58a */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0803e58c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803e58e */ STRB R1, [R0, 0x1E] \n\
/* 0803e590 */ LDR R0, [R5] \n\
/* 0803e592 */ LDRB R4, [R0, 0x10] \n\
/* 0803e594 */ CMP R4, 0xB @ Compare R4 and 0xB \n\
/* 0803e596 */ BEQ branch_0803e5e4 \n\
/* 0803e598 */ CMP R4, 0xD @ Compare R4 and 0xD \n\
/* 0803e59a */ BNE branch_0803e61a \n\
/* 0803e59c */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 0803e59e */ BL tap_trial_get_anim \n\
/* 0803e5a2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e5a4 */ LDR R0, =gSpriteHandler \n\
/* 0803e5a6 */ LDR R0, [R0] \n\
/* 0803e5a8 */ LDR R1, [R5] \n\
/* 0803e5aa */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0803e5ac */ LDRSH R1, [R1, R3] \n\
/* 0803e5ae */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803e5b0 */ STR R3, [SP] \n\
/* 0803e5b2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803e5b4 */ STR R3, [SP, 0x4] \n\
/* 0803e5b6 */ STR R6, [SP, 0x8] \n\
/* 0803e5b8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e5ba */ BL sprite_set_anim \n\
/* 0803e5be */ LDR R1, [R5] \n\
/* 0803e5c0 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 0803e5c2 */ STRB R0, [R1, 0x10] \n\
/* 0803e5c4 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0803e5c6 */ BL ticks_to_frames \n\
/* 0803e5ca */ LDR R1, [R5] \n\
/* 0803e5cc */ STRH R0, [R1, 0xA] \n\
/* 0803e5ce */ LDR R0, =s_f_tap_miss1_seqData \n\
/* 0803e5d0 */ BL play_sound \n\
/* 0803e5d4 */ B branch_0803e61a \n\
\n\
.ltorg \n\
 \n\
branch_0803e5e4: \n\
/* 0803e5e4 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 0803e5e6 */ BL tap_trial_get_anim \n\
/* 0803e5ea */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e5ec */ LDR R0, =gSpriteHandler \n\
/* 0803e5ee */ LDR R0, [R0] \n\
/* 0803e5f0 */ LDR R1, [R5] \n\
/* 0803e5f2 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0803e5f4 */ LDRSH R1, [R1, R3] \n\
/* 0803e5f6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803e5f8 */ STR R3, [SP] \n\
/* 0803e5fa */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803e5fc */ STR R3, [SP, 0x4] \n\
/* 0803e5fe */ STR R6, [SP, 0x8] \n\
/* 0803e600 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e602 */ BL sprite_set_anim \n\
/* 0803e606 */ LDR R0, [R5] \n\
/* 0803e608 */ STRB R4, [R0, 0x10] \n\
/* 0803e60a */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0803e60c */ BL ticks_to_frames \n\
/* 0803e610 */ LDR R1, [R5] \n\
/* 0803e612 */ STRH R0, [R1, 0xA] \n\
/* 0803e614 */ LDR R0, =s_f_tap_miss2_seqData \n\
/* 0803e616 */ BL play_sound \n\
 \n\
branch_0803e61a: \n\
/* 0803e61a */ BL func_0803e208 \n\
/* 0803e61e */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0803e620 */ BL ticks_to_frames \n\
/* 0803e624 */ LDR R1, =gCurrentEngineData \n\
/* 0803e626 */ LDR R1, [R1] \n\
/* 0803e628 */ STRH R0, [R1, 0x1C] \n\
/* 0803e62a */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0803e62c */ BL func_0803e420 \n\
/* 0803e630 */ ADD SP, 0xC \n\
/* 0803e632 */ POP {R4-R6} \n\
/* 0803e634 */ POP {R0} \n\
/* 0803e636 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
