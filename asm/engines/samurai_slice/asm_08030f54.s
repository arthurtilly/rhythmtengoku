asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_engine_update \n\
/* 08030f54 */ PUSH {R4-R7, LR} \n\
/* 08030f56 */ SUB SP, 0xC \n\
/* 08030f58 */ BL func_080321c8 \n\
/* 08030f5c */ BL func_08032478 \n\
/* 08030f60 */ BL func_080327a4 \n\
/* 08030f64 */ LDR R7, =gCurrentEngineData \n\
/* 08030f66 */ LDR R0, [R7] \n\
/* 08030f68 */ MOVS R2, 0xE9 @ Set R2 to 0xE9 \n\
/* 08030f6a */ LSLS R2, R2, 0x1 \n\
/* 08030f6c */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08030f6e */ LDRH R2, [R1] \n\
/* 08030f70 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030f72 */ LDRSH R0, [R1, R3] \n\
/* 08030f74 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08030f76 */ BLE branch_08030ffe \n\
/* 08030f78 */ SUBS R0, R2, 0x1 @ Set R0 to R2 - 0x1 \n\
/* 08030f7a */ STRH R0, [R1] \n\
/* 08030f7c */ LSLS R0, R0, 0x10 \n\
/* 08030f7e */ ASRS R0, R0, 0x10 \n\
/* 08030f80 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08030f82 */ BNE branch_08030fe8 \n\
/* 08030f84 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08030f86 */ LSLS R0, R0, 0x1 \n\
/* 08030f88 */ BL set_beatscript_speed \n\
/* 08030f8c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030f8e */ BL scene_set_music_pitch_env \n\
/* 08030f92 */ LDR R5, =gSpriteHandler \n\
/* 08030f94 */ LDR R6, [R5] \n\
/* 08030f96 */ LDR R0, [R7] \n\
/* 08030f98 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 08030f9a */ LDRSH R4, [R0, R1] \n\
/* 08030f9c */ BL get_beatscript_tempo \n\
/* 08030fa0 */ LSLS R0, R0, 0x8 \n\
/* 08030fa2 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 08030fa4 */ BL __udivsi3 \n\
/* 08030fa8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08030faa */ LSLS R2, R2, 0x10 \n\
/* 08030fac */ LSRS R2, R2, 0x10 \n\
/* 08030fae */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08030fb0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08030fb2 */ BL sprite_set_anim_speed \n\
/* 08030fb6 */ LDR R5, [R5] \n\
/* 08030fb8 */ LDR R0, [R7] \n\
/* 08030fba */ MOVS R2, 0xED @ Set R2 to 0xED \n\
/* 08030fbc */ LSLS R2, R2, 0x1 \n\
/* 08030fbe */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08030fc0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030fc2 */ LDRSH R4, [R0, R3] \n\
/* 08030fc4 */ BL get_beatscript_tempo \n\
/* 08030fc8 */ LSLS R0, R0, 0x8 \n\
/* 08030fca */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 08030fcc */ BL __udivsi3 \n\
/* 08030fd0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08030fd2 */ LSLS R2, R2, 0x10 \n\
/* 08030fd4 */ LSRS R2, R2, 0x10 \n\
/* 08030fd6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08030fd8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08030fda */ BL sprite_set_anim_speed \n\
/* 08030fde */ B branch_08030ffe \n\
\n\
.ltorg \n\
 \n\
branch_08030fe8: \n\
/* 08030fe8 */ CMP R0, 0x56 @ Compare R0 and 0x56 \n\
/* 08030fea */ BGT branch_08030ffe \n\
/* 08030fec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08030fee */ BL scene_show_bg_layer \n\
/* 08030ff2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08030ff4 */ BL scene_show_bg_layer \n\
/* 08030ff8 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08030ffa */ BL scene_show_bg_layer \n\
 \n\
branch_08030ffe: \n\
/* 08030ffe */ LDR R1, =gCurrentEngineData \n\
/* 08031000 */ LDR R0, [R1] \n\
/* 08031002 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08031004 */ LSLS R2, R2, 0x1 \n\
/* 08031006 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08031008 */ LDRB R0, [R0] \n\
/* 0803100a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0803100c */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0803100e */ BLS branch_08031012 \n\
/* 08031010 */ B branch_08031128 \n\
 \n\
branch_08031012: \n\
/* 08031012 */ LSLS R0, R0, 0x2 \n\
/* 08031014 */ LDR R1, =jtbl_08031024 \n\
/* 08031016 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08031018 */ LDR R0, [R0] \n\
/* 0803101a */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08031024: \n\
.word branch_08031128 \n\
.word jump_08031038 \n\
.word jump_0803108c \n\
.word jump_080310bc \n\
.word jump_080310f8 \n\
jump_08031038: \n\
/* 08031038 */ LDR R2, [R4] \n\
/* 0803103a */ MOVS R5, 0xEE @ Set R5 to 0xEE \n\
/* 0803103c */ LSLS R5, R5, 0x1 \n\
/* 0803103e */ ADDS R1, R2, R5 @ Set R1 to R2 + R5 \n\
/* 08031040 */ LDR R0, [R1] \n\
/* 08031042 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08031044 */ LSLS R3, R3, 0x1 \n\
/* 08031046 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08031048 */ STR R0, [R1] \n\
/* 0803104a */ ASRS R0, R0, 0x8 \n\
/* 0803104c */ CMP R0, 0x77 @ Compare R0 and 0x77 \n\
/* 0803104e */ BLE branch_08031068 \n\
/* 08031050 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08031052 */ LSLS R0, R0, 0x7 \n\
/* 08031054 */ STR R0, [R1] \n\
/* 08031056 */ LDR R0, =gSpriteHandler \n\
/* 08031058 */ LDR R0, [R0] \n\
/* 0803105a */ ADDS R3, 0xDA @ Add 0xDA to R3 \n\
/* 0803105c */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0803105e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031060 */ LDRSH R1, [R1, R2] \n\
/* 08031062 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031064 */ BL sprite_set_visible \n\
 \n\
branch_08031068: \n\
/* 08031068 */ LDR R0, =gSpriteHandler \n\
/* 0803106a */ LDR R0, [R0] \n\
/* 0803106c */ LDR R2, [R4] \n\
/* 0803106e */ MOVS R3, 0xED @ Set R3 to 0xED \n\
/* 08031070 */ LSLS R3, R3, 0x1 \n\
/* 08031072 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08031074 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08031076 */ LDRSH R1, [R1, R3] \n\
/* 08031078 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0803107a */ LDR R2, [R2] \n\
/* 0803107c */ LSLS R2, R2, 0x8 \n\
/* 0803107e */ ASRS R2, R2, 0x10 \n\
/* 08031080 */ BL sprite_set_y \n\
/* 08031084 */ B branch_08031128 \n\
\n\
.ltorg \n\
jump_0803108c: \n\
/* 0803108c */ LDR R5, =gSpriteHandler \n\
/* 0803108e */ LDR R0, [R5] \n\
/* 08031090 */ LDR R1, [R4] \n\
/* 08031092 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08031094 */ LDRSH R1, [R1, R2] \n\
/* 08031096 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08031098 */ BL sprite_get_data \n\
/* 0803109c */ LDR R1, =anim_samurai_beat_3 \n\
/* 0803109e */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080310a0 */ BNE branch_08031128 \n\
/* 080310a2 */ LDR R0, [R5] \n\
/* 080310a4 */ LDR R1, [R4] \n\
/* 080310a6 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 080310a8 */ LDRSH R1, [R1, R3] \n\
/* 080310aa */ LDR R2, =anim_samurai_beat_2 \n\
/* 080310ac */ B branch_080310dc \n\
\n\
.ltorg \n\
jump_080310bc: \n\
/* 080310bc */ LDR R5, =gSpriteHandler \n\
/* 080310be */ LDR R0, [R5] \n\
/* 080310c0 */ LDR R1, [R4] \n\
/* 080310c2 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 080310c4 */ LDRSH R1, [R1, R2] \n\
/* 080310c6 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 080310c8 */ BL sprite_get_data \n\
/* 080310cc */ LDR R1, =anim_samurai_beat_2 \n\
/* 080310ce */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080310d0 */ BNE branch_08031128 \n\
/* 080310d2 */ LDR R0, [R5] \n\
/* 080310d4 */ LDR R1, [R4] \n\
/* 080310d6 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 080310d8 */ LDRSH R1, [R1, R3] \n\
/* 080310da */ LDR R2, =anim_samurai_beat_1 \n\
 \n\
branch_080310dc: \n\
/* 080310dc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080310de */ STR R3, [SP] \n\
/* 080310e0 */ STR R3, [SP, 0x4] \n\
/* 080310e2 */ STR R3, [SP, 0x8] \n\
/* 080310e4 */ BL sprite_set_anim \n\
/* 080310e8 */ B branch_08031128 \n\
\n\
.ltorg \n\
jump_080310f8: \n\
/* 080310f8 */ LDR R5, =gSpriteHandler \n\
/* 080310fa */ LDR R0, [R5] \n\
/* 080310fc */ LDR R1, [R4] \n\
/* 080310fe */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08031100 */ LDRSH R1, [R1, R2] \n\
/* 08031102 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08031104 */ BL sprite_get_data \n\
/* 08031108 */ LDR R1, =anim_samurai_beat_1 \n\
/* 0803110a */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0803110c */ BNE branch_08031128 \n\
/* 0803110e */ LDR R0, [R5] \n\
/* 08031110 */ LDR R1, [R4] \n\
/* 08031112 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 08031114 */ LDRSH R1, [R1, R3] \n\
/* 08031116 */ LDR R2, =anim_samurai_finish2 \n\
/* 08031118 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803111a */ STR R3, [SP] \n\
/* 0803111c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803111e */ STR R3, [SP, 0x4] \n\
/* 08031120 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08031122 */ STR R3, [SP, 0x8] \n\
/* 08031124 */ BL sprite_set_anim \n\
 \n\
branch_08031128: \n\
/* 08031128 */ ADD SP, 0xC \n\
/* 0803112a */ POP {R4-R7} \n\
/* 0803112c */ POP {R0} \n\
/* 0803112e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
