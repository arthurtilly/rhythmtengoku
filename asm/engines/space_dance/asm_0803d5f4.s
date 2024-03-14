asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_cue_hit \n\
/* 0803d5f4 */ PUSH {R4, R5, LR} \n\
/* 0803d5f6 */ SUB SP, 0xC \n\
/* 0803d5f8 */ LDR R5, =gCurrentEngineData \n\
/* 0803d5fa */ LDR R0, [R5] \n\
/* 0803d5fc */ LDRH R4, [R0, 0xC] \n\
/* 0803d5fe */ LDR R2, =space_dance_cue_anim_map \n\
/* 0803d600 */ LDR R0, [R1] \n\
/* 0803d602 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803d604 */ LDRB R0, [R0] \n\
/* 0803d606 */ BL space_dance_get_anim \n\
/* 0803d60a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d60c */ LDR R0, =gSpriteHandler \n\
/* 0803d60e */ LDR R0, [R0] \n\
/* 0803d610 */ LSLS R4, R4, 0x10 \n\
/* 0803d612 */ ASRS R4, R4, 0x10 \n\
/* 0803d614 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803d616 */ STR R1, [SP] \n\
/* 0803d618 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0803d61a */ STR R1, [SP, 0x4] \n\
/* 0803d61c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803d61e */ STR R1, [SP, 0x8] \n\
/* 0803d620 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803d622 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d624 */ BL sprite_set_anim \n\
/* 0803d628 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0803d62a */ BL ticks_to_frames \n\
/* 0803d62e */ LDR R1, [R5] \n\
/* 0803d630 */ STRH R0, [R1, 0x14] \n\
/* 0803d632 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d634 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803d636 */ BL gameplay_set_input_buttons \n\
/* 0803d63a */ BL get_current_mem_id \n\
/* 0803d63e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803d640 */ LSLS R4, R4, 0x10 \n\
/* 0803d642 */ LSRS R4, R4, 0x10 \n\
/* 0803d644 */ LDR R5, =func_0803d5e4 \n\
/* 0803d646 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0803d648 */ BL ticks_to_frames \n\
/* 0803d64c */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803d64e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803d650 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803d652 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d654 */ BL schedule_function_call \n\
/* 0803d658 */ ADD SP, 0xC \n\
/* 0803d65a */ POP {R4, R5} \n\
/* 0803d65c */ POP {R0} \n\
/* 0803d65e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
