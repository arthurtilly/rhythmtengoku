asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_play_girl_action \n\
/* 0803da40 */ PUSH {R4-R7, LR} \n\
/* 0803da42 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803da44 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803da46 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803da48 */ PUSH {R5-R7} \n\
/* 0803da4a */ SUB SP, 0xC \n\
/* 0803da4c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0803da4e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803da50 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803da52 */ LDR R0, =tap_trial_girl_action_table \n\
/* 0803da54 */ LDR R1, =gCurrentEngineData \n\
/* 0803da56 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0803da58 */ LDR R2, [R1] \n\
/* 0803da5a */ LDRB R1, [R2] \n\
/* 0803da5c */ LSLS R1, R1, 0x2 \n\
/* 0803da5e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803da60 */ LSLS R0, R7, 0x2 \n\
/* 0803da62 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0803da64 */ LSLS R0, R0, 0x2 \n\
/* 0803da66 */ LDR R1, [R1] \n\
/* 0803da68 */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 0803da6a */ LDRH R4, [R2, 0x8] \n\
/* 0803da6c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803da6e */ STRB R7, [R2, 0x10] \n\
/* 0803da70 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803da72 */ LDRSB R0, [R6, R0] \n\
/* 0803da74 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803da76 */ BLT branch_0803da9e \n\
/* 0803da78 */ BL tap_trial_get_anim \n\
/* 0803da7c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803da7e */ LDR R0, =gSpriteHandler \n\
/* 0803da80 */ LDR R0, [R0] \n\
/* 0803da82 */ LSLS R1, R4, 0x10 \n\
/* 0803da84 */ ASRS R1, R1, 0x10 \n\
/* 0803da86 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803da88 */ LDRSB R3, [R6, R3] \n\
/* 0803da8a */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0803da8c */ LDRSB R4, [R6, R4] \n\
/* 0803da8e */ STR R4, [SP] \n\
/* 0803da90 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 0803da92 */ LDRSB R4, [R6, R4] \n\
/* 0803da94 */ STR R4, [SP, 0x4] \n\
/* 0803da96 */ LDRH R4, [R6, 0x6] \n\
/* 0803da98 */ STR R4, [SP, 0x8] \n\
/* 0803da9a */ BL sprite_set_anim \n\
 \n\
branch_0803da9e: \n\
/* 0803da9e */ CMP R7, 0xA @ Compare R7 and 0xA \n\
/* 0803daa0 */ BNE branch_0803dac4 \n\
/* 0803daa2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803daa4 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803daa6 */ BL get_current_mem_id \n\
/* 0803daaa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803daac */ LSLS R4, R4, 0x10 \n\
/* 0803daae */ LSRS R4, R4, 0x10 \n\
/* 0803dab0 */ LDR R5, =tap_trial_play_girl_action \n\
/* 0803dab2 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0803dab4 */ BL ticks_to_frames \n\
/* 0803dab8 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803daba */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803dabc */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803dabe */ MOVS R2, 0xD @ Set R2 to 0xD \n\
/* 0803dac0 */ BL schedule_function_call \n\
 \n\
branch_0803dac4: \n\
/* 0803dac4 */ CMP R7, 0xB @ Compare R7 and 0xB \n\
/* 0803dac6 */ BNE branch_0803dacc \n\
/* 0803dac8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803daca */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_0803dacc: \n\
/* 0803dacc */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803dace */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803dad0 */ BEQ branch_0803db02 \n\
/* 0803dad2 */ LDR R0, =gSpriteHandler \n\
/* 0803dad4 */ LDR R0, [R0] \n\
/* 0803dad6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803dad8 */ LSLS R5, R2, 0x10 \n\
/* 0803dada */ ASRS R5, R5, 0x10 \n\
/* 0803dadc */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803dade */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803dae0 */ BL sprite_get_data \n\
/* 0803dae4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803dae6 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0803dae8 */ BL ticks_to_frames \n\
/* 0803daec */ LSLS R0, R0, 0x10 \n\
/* 0803daee */ LSRS R0, R0, 0x10 \n\
/* 0803daf0 */ LSLS R4, R4, 0x10 \n\
/* 0803daf2 */ ASRS R4, R4, 0x10 \n\
/* 0803daf4 */ STR R0, [SP] \n\
/* 0803daf6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803daf8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803dafa */ MOVS R2, 0x73 @ Set R2 to 0x73 \n\
/* 0803dafc */ MOVS R3, 0x28 @ Set R3 to 0x28 \n\
/* 0803dafe */ BL scene_move_sprite_sine_wave \n\
 \n\
branch_0803db02: \n\
/* 0803db02 */ LDRB R0, [R6, 0x8] \n\
/* 0803db04 */ BL ticks_to_frames \n\
/* 0803db08 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803db0a */ LDR R1, [R2] \n\
/* 0803db0c */ STRH R0, [R1, 0xA] \n\
/* 0803db0e */ ADD SP, 0xC \n\
/* 0803db10 */ POP {R3-R5} \n\
/* 0803db12 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803db14 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803db16 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803db18 */ POP {R4-R7} \n\
/* 0803db1a */ POP {R0} \n\
/* 0803db1c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
