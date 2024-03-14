asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_play_monkey_action \n\
/* 0803db30 */ PUSH {R4-R7, LR} \n\
/* 0803db32 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803db34 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803db36 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803db38 */ PUSH {R5-R7} \n\
/* 0803db3a */ SUB SP, 0xC \n\
/* 0803db3c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803db3e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803db40 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803db42 */ LDR R2, =tap_trial_monkey_action_table \n\
/* 0803db44 */ LDR R0, =gCurrentEngineData \n\
/* 0803db46 */ LDR R0, [R0] \n\
/* 0803db48 */ LDRB R1, [R0] \n\
/* 0803db4a */ LSLS R1, R1, 0x2 \n\
/* 0803db4c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803db4e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803db50 */ LSLS R0, R2, 0x2 \n\
/* 0803db52 */ ADD R0, R9 @ Add R9 to R0 \n\
/* 0803db54 */ LSLS R0, R0, 0x2 \n\
/* 0803db56 */ LDR R1, [R1] \n\
/* 0803db58 */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 0803db5a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803db5c */ LDRSB R0, [R6, R0] \n\
/* 0803db5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803db60 */ BLT branch_0803db9e \n\
/* 0803db62 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0803db64: \n\
/* 0803db64 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803db66 */ LDRSB R0, [R6, R0] \n\
/* 0803db68 */ BL tap_trial_get_anim \n\
/* 0803db6c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803db6e */ LDR R0, =gSpriteHandler \n\
/* 0803db70 */ LDR R0, [R0] \n\
/* 0803db72 */ LDR R1, =gCurrentEngineData \n\
/* 0803db74 */ LDR R1, [R1] \n\
/* 0803db76 */ LSLS R3, R7, 0x1 \n\
/* 0803db78 */ ADDS R1, 0x12 @ Add 0x12 to R1 \n\
/* 0803db7a */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803db7c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803db7e */ LDRSH R1, [R1, R3] \n\
/* 0803db80 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803db82 */ LDRSB R3, [R6, R3] \n\
/* 0803db84 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0803db86 */ LDRSB R4, [R6, R4] \n\
/* 0803db88 */ STR R4, [SP] \n\
/* 0803db8a */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 0803db8c */ LDRSB R4, [R6, R4] \n\
/* 0803db8e */ STR R4, [SP, 0x4] \n\
/* 0803db90 */ LDRH R4, [R6, 0x6] \n\
/* 0803db92 */ STR R4, [SP, 0x8] \n\
/* 0803db94 */ BL sprite_set_anim \n\
/* 0803db98 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0803db9a */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0803db9c */ BLS branch_0803db64 \n\
 \n\
branch_0803db9e: \n\
/* 0803db9e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0803dba0 */ CMP R0, 0xA @ Compare R0 and 0xA \n\
/* 0803dba2 */ BNE branch_0803dbc6 \n\
/* 0803dba4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803dba6 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0803dba8 */ BL get_current_mem_id \n\
/* 0803dbac */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803dbae */ LSLS R4, R4, 0x10 \n\
/* 0803dbb0 */ LSRS R4, R4, 0x10 \n\
/* 0803dbb2 */ LDR R5, =tap_trial_play_monkey_action \n\
/* 0803dbb4 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0803dbb6 */ BL ticks_to_frames \n\
/* 0803dbba */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803dbbc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803dbbe */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803dbc0 */ MOVS R2, 0xD @ Set R2 to 0xD \n\
/* 0803dbc2 */ BL schedule_function_call \n\
 \n\
branch_0803dbc6: \n\
/* 0803dbc6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803dbc8 */ CMP R2, 0xB @ Compare R2 and 0xB \n\
/* 0803dbca */ BNE branch_0803dbd0 \n\
/* 0803dbcc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803dbce */ MOV R8, R3 @ Set R8 to R3 \n\
 \n\
branch_0803dbd0: \n\
/* 0803dbd0 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0803dbd2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0803dbd4 */ ADD R0, R9 @ Add R9 to R0 \n\
/* 0803dbd6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0803dbd8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803dbda */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803dbdc */ BEQ branch_0803dc2c \n\
/* 0803dbde */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803dbe0 */ LDR R2, =gCurrentEngineData \n\
/* 0803dbe2 */ MOV R8, R2 @ Set R8 to R2 \n\
 \n\
branch_0803dbe4: \n\
/* 0803dbe4 */ LDR R0, =gSpriteHandler \n\
/* 0803dbe6 */ LDR R0, [R0] \n\
/* 0803dbe8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803dbea */ LDR R1, [R3] \n\
/* 0803dbec */ LSLS R5, R7, 0x1 \n\
/* 0803dbee */ ADDS R1, 0x12 @ Add 0x12 to R1 \n\
/* 0803dbf0 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803dbf2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803dbf4 */ LDRSH R1, [R1, R2] \n\
/* 0803dbf6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803dbf8 */ BL sprite_get_data \n\
/* 0803dbfc */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803dbfe */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0803dc00 */ BL ticks_to_frames \n\
/* 0803dc04 */ LSLS R0, R0, 0x10 \n\
/* 0803dc06 */ LSRS R0, R0, 0x10 \n\
/* 0803dc08 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803dc0a */ LDR R1, [R3] \n\
/* 0803dc0c */ ADDS R1, 0x12 @ Add 0x12 to R1 \n\
/* 0803dc0e */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803dc10 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803dc12 */ LDRSH R1, [R1, R2] \n\
/* 0803dc14 */ LSLS R4, R4, 0x10 \n\
/* 0803dc16 */ ASRS R4, R4, 0x10 \n\
/* 0803dc18 */ STR R0, [SP] \n\
/* 0803dc1a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803dc1c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803dc1e */ MOVS R2, 0x73 @ Set R2 to 0x73 \n\
/* 0803dc20 */ MOVS R3, 0x28 @ Set R3 to 0x28 \n\
/* 0803dc22 */ BL scene_move_sprite_sine_wave \n\
/* 0803dc26 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0803dc28 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0803dc2a */ BLS branch_0803dbe4 \n\
 \n\
branch_0803dc2c: \n\
/* 0803dc2c */ LDRB R0, [R6, 0x8] \n\
/* 0803dc2e */ BL ticks_to_frames \n\
/* 0803dc32 */ LDR R1, =gCurrentEngineData \n\
/* 0803dc34 */ LDR R1, [R1] \n\
/* 0803dc36 */ STRH R0, [R1, 0x16] \n\
/* 0803dc38 */ LDR R0, [R6, 0xC] \n\
/* 0803dc3a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803dc3c */ BEQ branch_0803dc92 \n\
/* 0803dc3e */ LDR R2, =sound_player_table \n\
/* 0803dc40 */ LDRB R1, [R0, 0x4] \n\
/* 0803dc42 */ LSLS R1, R1, 0x1B \n\
/* 0803dc44 */ LSRS R1, R1, 0x1B \n\
/* 0803dc46 */ LSLS R0, R1, 0x1 \n\
/* 0803dc48 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803dc4a */ LSLS R0, R0, 0x2 \n\
/* 0803dc4c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803dc4e */ LDR R0, [R0] \n\
/* 0803dc50 */ BL stop_soundplayer \n\
/* 0803dc54 */ LDR R0, [R6, 0xC] \n\
/* 0803dc56 */ BL play_sound \n\
/* 0803dc5a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803dc5c */ LDRH R1, [R6, 0x10] \n\
/* 0803dc5e */ BL set_soundplayer_volume \n\
/* 0803dc62 */ MOVS R3, 0x12 @ Set R3 to 0x12 \n\
/* 0803dc64 */ LDRSH R1, [R6, R3] \n\
/* 0803dc66 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803dc68 */ BL set_soundplayer_pitch \n\
/* 0803dc6c */ BL get_beatscript_tempo \n\
/* 0803dc70 */ LSLS R0, R0, 0x8 \n\
/* 0803dc72 */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 0803dc74 */ BL __udivsi3 \n\
/* 0803dc78 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803dc7a */ LDRH R0, [R6, 0x12] \n\
/* 0803dc7c */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0803dc7e */ LSLS R1, R1, 0x3 \n\
/* 0803dc80 */ BL __udivsi3 \n\
/* 0803dc84 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0803dc86 */ LSLS R4, R4, 0x10 \n\
/* 0803dc88 */ LSRS R4, R4, 0x10 \n\
/* 0803dc8a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803dc8c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803dc8e */ BL set_soundplayer_speed \n\
 \n\
branch_0803dc92: \n\
/* 0803dc92 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0803dc94 */ CMP R0, 0xC @ Compare R0 and 0xC \n\
/* 0803dc96 */ BHI branch_0803dcf0 \n\
/* 0803dc98 */ LSLS R0, R0, 0x2 \n\
/* 0803dc9a */ LDR R1, =jtbl_0803dcbc \n\
/* 0803dc9c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803dc9e */ LDR R0, [R0] \n\
/* 0803dca0 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803dcbc: \n\
.word jump_0803dcf6 \n\
.word jump_0803dcf6 \n\
.word jump_0803dcf6 \n\
.word jump_0803dcf6 \n\
.word branch_0803dcf0 \n\
.word branch_0803dcf0 \n\
.word branch_0803dcf0 \n\
.word branch_0803dcf0 \n\
.word jump_0803dcf6 \n\
.word branch_0803dcf0 \n\
.word jump_0803dcf6 \n\
.word jump_0803dcf6 \n\
.word jump_0803dcf6 \n\
 \n\
branch_0803dcf0: \n\
/* 0803dcf0 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0803dcf2 */ BL tap_trial_play_girl_action \n\
jump_0803dcf6: \n\
/* 0803dcf6 */ ADD SP, 0xC \n\
/* 0803dcf8 */ POP {R3-R5} \n\
/* 0803dcfa */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803dcfc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803dcfe */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803dd00 */ POP {R4-R7} \n\
/* 0803dd02 */ POP {R0} \n\
/* 0803dd04 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
