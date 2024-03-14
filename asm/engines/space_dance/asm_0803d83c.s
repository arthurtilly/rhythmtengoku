asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_input_event \n\
/* 0803d83c */ PUSH {R4-R6, LR} \n\
/* 0803d83e */ SUB SP, 0xC \n\
/* 0803d840 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803d842 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d844 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0803d846 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 0803d848 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d84a */ BEQ branch_0803d854 \n\
/* 0803d84c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803d84e */ BL space_dance_get_anim \n\
/* 0803d852 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
 \n\
branch_0803d854: \n\
/* 0803d854 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803d856 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0803d858 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d85a */ BEQ branch_0803d864 \n\
/* 0803d85c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d85e */ BL space_dance_get_anim \n\
/* 0803d862 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
 \n\
branch_0803d864: \n\
/* 0803d864 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803d866 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0803d868 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d86a */ BEQ branch_0803d874 \n\
/* 0803d86c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803d86e */ BL space_dance_get_anim \n\
/* 0803d872 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
 \n\
branch_0803d874: \n\
/* 0803d874 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0803d876 */ BEQ branch_0803d8f2 \n\
/* 0803d878 */ LDR R0, =gSpriteHandler \n\
/* 0803d87a */ LDR R0, [R0] \n\
/* 0803d87c */ LDR R6, =gCurrentEngineData \n\
/* 0803d87e */ LDR R1, [R6] \n\
/* 0803d880 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0803d882 */ LDRSH R1, [R1, R2] \n\
/* 0803d884 */ STR R5, [SP] \n\
/* 0803d886 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803d888 */ STR R2, [SP, 0x4] \n\
/* 0803d88a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d88c */ STR R2, [SP, 0x8] \n\
/* 0803d88e */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0803d890 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d892 */ BL sprite_set_anim \n\
/* 0803d896 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0803d898 */ BL ticks_to_frames \n\
/* 0803d89c */ LDR R1, [R6] \n\
/* 0803d89e */ STRH R0, [R1, 0x14] \n\
/* 0803d8a0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d8a2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803d8a4 */ BL gameplay_set_input_buttons \n\
/* 0803d8a8 */ BL get_current_mem_id \n\
/* 0803d8ac */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803d8ae */ LSLS R4, R4, 0x10 \n\
/* 0803d8b0 */ LSRS R4, R4, 0x10 \n\
/* 0803d8b2 */ LDR R5, =func_0803d82c \n\
/* 0803d8b4 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0803d8b6 */ BL ticks_to_frames \n\
/* 0803d8ba */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803d8bc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803d8be */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803d8c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d8c2 */ BL schedule_function_call \n\
/* 0803d8c6 */ LDR R0, =s_tebyoushi_pati_seqData \n\
/* 0803d8c8 */ BL play_sound \n\
/* 0803d8cc */ LDR R1, [R6] \n\
/* 0803d8ce */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803d8d0 */ ADDS R0, 0x35 @ Add 0x35 to R0 \n\
/* 0803d8d2 */ LDRB R0, [R0] \n\
/* 0803d8d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d8d6 */ BEQ branch_0803d8f2 \n\
/* 0803d8d8 */ LDRH R0, [R1, 0x36] \n\
/* 0803d8da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d8dc */ BNE branch_0803d8f2 \n\
/* 0803d8de */ LDR R0, =s_warai_solo_seqData \n\
/* 0803d8e0 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0803d8e2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d8e4 */ BL play_sound_w_pitch_volume \n\
/* 0803d8e8 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0803d8ea */ BL ticks_to_frames \n\
/* 0803d8ee */ LDR R1, [R6] \n\
/* 0803d8f0 */ STRH R0, [R1, 0x36] \n\
 \n\
branch_0803d8f2: \n\
/* 0803d8f2 */ BL beatscript_enable_loops \n\
/* 0803d8f6 */ ADD SP, 0xC \n\
/* 0803d8f8 */ POP {R4-R6} \n\
/* 0803d8fa */ POP {R0} \n\
/* 0803d8fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
