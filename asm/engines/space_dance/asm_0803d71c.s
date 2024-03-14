asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_cue_miss \n\
/* 0803d71c */ PUSH {R4-R6, LR} \n\
/* 0803d71e */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0803d720 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0803d722 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0803d724 */ PUSH {R4-R6} \n\
/* 0803d726 */ SUB SP, 0x14 \n\
/* 0803d728 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0803d72a */ LDR R6, =gCurrentEngineData \n\
/* 0803d72c */ LDR R0, [R6] \n\
/* 0803d72e */ LDRH R4, [R0, 0xC] \n\
/* 0803d730 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0803d732 */ BL space_dance_get_anim \n\
/* 0803d736 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d738 */ LDR R5, =gSpriteHandler \n\
/* 0803d73a */ LDR R0, [R5] \n\
/* 0803d73c */ LSLS R4, R4, 0x10 \n\
/* 0803d73e */ ASRS R4, R4, 0x10 \n\
/* 0803d740 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803d742 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0803d744 */ STR R1, [SP] \n\
/* 0803d746 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0803d748 */ STR R1, [SP, 0x4] \n\
/* 0803d74a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d74c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803d74e */ STR R3, [SP, 0x8] \n\
/* 0803d750 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803d752 */ BL sprite_set_anim \n\
/* 0803d756 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0803d758 */ BL ticks_to_frames \n\
/* 0803d75c */ LDR R1, [R6] \n\
/* 0803d75e */ STRH R0, [R1, 0x14] \n\
/* 0803d760 */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 0803d762 */ BL space_dance_get_anim \n\
/* 0803d766 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d768 */ LDR R0, [R5] \n\
/* 0803d76a */ LDR R3, =D_089e6ebc \n\
/* 0803d76c */ MOV R4, R10 @ Set R4 to R10 \n\
/* 0803d76e */ LDR R2, [R4] \n\
/* 0803d770 */ LSLS R2, R2, 0x1 \n\
/* 0803d772 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803d774 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d776 */ LDRSH R2, [R2, R3] \n\
/* 0803d778 */ STR R2, [SP] \n\
/* 0803d77a */ LDR R2, =0x4819 \n\
/* 0803d77c */ STR R2, [SP, 0x4] \n\
/* 0803d77e */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0803d780 */ STR R4, [SP, 0x8] \n\
/* 0803d782 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803d784 */ STR R2, [SP, 0xC] \n\
/* 0803d786 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0803d788 */ STR R2, [SP, 0x10] \n\
/* 0803d78a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d78c */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 0803d78e */ BL sprite_create \n\
/* 0803d792 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d794 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803d796 */ BL gameplay_set_input_buttons \n\
/* 0803d79a */ BL get_current_mem_id \n\
/* 0803d79e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803d7a0 */ LSLS R4, R4, 0x10 \n\
/* 0803d7a2 */ LSRS R4, R4, 0x10 \n\
/* 0803d7a4 */ LDR R5, =func_0803d5e4 \n\
/* 0803d7a6 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803d7a8 */ BL ticks_to_frames \n\
/* 0803d7ac */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803d7ae */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803d7b0 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803d7b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d7b4 */ BL schedule_function_call \n\
/* 0803d7b8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d7ba */ BL func_0803d6c0 \n\
/* 0803d7be */ BL beatscript_enable_loops \n\
/* 0803d7c2 */ LDR R0, =s_space_kou_right_seqData \n\
/* 0803d7c4 */ BL stop_sound \n\
/* 0803d7c8 */ LDR R0, =s_space_kou_down_seqData \n\
/* 0803d7ca */ BL stop_sound \n\
/* 0803d7ce */ LDR R0, =s_space_kou_punch_seqData \n\
/* 0803d7d0 */ BL stop_sound \n\
/* 0803d7d4 */ LDR R0, =s_space_ikeo_right_seqData \n\
/* 0803d7d6 */ BL stop_sound \n\
/* 0803d7da */ LDR R0, =s_space_ikeo_down_seqData \n\
/* 0803d7dc */ BL stop_sound \n\
/* 0803d7e0 */ LDR R0, =s_space_ikeo_punch_seqData \n\
/* 0803d7e2 */ BL stop_sound \n\
/* 0803d7e6 */ LDR R0, =s_witch_donats_seqData \n\
/* 0803d7e8 */ BL play_sound \n\
/* 0803d7ec */ ADD SP, 0x14 \n\
/* 0803d7ee */ POP {R3-R5} \n\
/* 0803d7f0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803d7f2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803d7f4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803d7f6 */ POP {R4-R6} \n\
/* 0803d7f8 */ POP {R0} \n\
/* 0803d7fa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
