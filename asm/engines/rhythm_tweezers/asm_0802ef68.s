asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_tweezers_cue_update_long \n\
/* 0802ef68 */ PUSH {R4-R7, LR} \n\
/* 0802ef6a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802ef6c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802ef6e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802ef70 */ PUSH {R5-R7} \n\
/* 0802ef72 */ SUB SP, 0x8 \n\
/* 0802ef74 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802ef76 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0802ef78 */ LDR R0, =gCurrentEngineData \n\
/* 0802ef7a */ LDR R6, [R0] \n\
/* 0802ef7c */ ADDS R7, R6, 0x4 @ Set R7 to R6 + 0x4 \n\
/* 0802ef7e */ MOVS R1, 0x74 @ Set R1 to 0x74 \n\
/* 0802ef80 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802ef82 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802ef84 */ LSLS R3, R3, 0x1 \n\
/* 0802ef86 */ CMP R2, R3 @ Check R2 - R3 \n\
/* 0802ef88 */ BLS branch_0802ef94 \n\
/* 0802ef8a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802ef8c */ B branch_0802f128 \n\
\n\
.ltorg \n\
 \n\
branch_0802ef94: \n\
/* 0802ef94 */ LDRB R0, [R5, 0x1] \n\
/* 0802ef96 */ LSLS R0, R0, 0x1E \n\
/* 0802ef98 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ef9a */ BLT branch_0802ef9e \n\
/* 0802ef9c */ B branch_0802f126 \n\
 \n\
branch_0802ef9e: \n\
/* 0802ef9e */ LDR R0, [R5, 0x4] \n\
/* 0802efa0 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802efa2 */ LDRSH R1, [R7, R2] \n\
/* 0802efa4 */ MOVS R3, 0x28 @ Set R3 to 0x28 \n\
/* 0802efa6 */ LDRSH R2, [R5, R3] \n\
/* 0802efa8 */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
/* 0802efaa */ LSLS R1, R1, 0x11 \n\
/* 0802efac */ MOVS R2, 0xFE @ Set R2 to 0xFE \n\
/* 0802efae */ LSLS R2, R2, 0x18 \n\
/* 0802efb0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802efb2 */ ASRS R1, R1, 0x10 \n\
/* 0802efb4 */ BL affine_sprite_set_rotation \n\
/* 0802efb8 */ LDR R3, =gSpriteHandler \n\
/* 0802efba */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802efbc */ LDR R4, [R3] \n\
/* 0802efbe */ LDR R0, [R5, 0x4] \n\
/* 0802efc0 */ BL affine_sprite_get_base_sprite \n\
/* 0802efc4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802efc6 */ LSLS R1, R1, 0x10 \n\
/* 0802efc8 */ ASRS R1, R1, 0x10 \n\
/* 0802efca */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802efcc */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802efce */ BL sprite_get_data \n\
/* 0802efd2 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802efd4 */ LDRH R1, [R5, 0x2C] \n\
/* 0802efd6 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802efd8 */ LDRH R1, [R5, 0x2E] \n\
/* 0802efda */ BL __udivsi3 \n\
/* 0802efde */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802efe0 */ LDR R0, [R5, 0x4] \n\
/* 0802efe2 */ BL affine_sprite_set_anim_cel \n\
/* 0802efe6 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802efe8 */ BL gameplay_get_cue_marking_criteria \n\
/* 0802efec */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802efee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802eff0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802eff2 */ LDRH R0, [R5, 0x2C] \n\
/* 0802eff4 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802eff6 */ STRH R0, [R5, 0x2C] \n\
/* 0802eff8 */ LSLS R0, R0, 0x10 \n\
/* 0802effa */ LSRS R0, R0, 0x10 \n\
/* 0802effc */ LDRH R1, [R5, 0x2E] \n\
/* 0802effe */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0802f000 */ BLS branch_0802f004 \n\
/* 0802f002 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_0802f004: \n\
/* 0802f004 */ LDR R0, =D_03004ac0 \n\
/* 0802f006 */ LDRH R1, [R0] \n\
/* 0802f008 */ MOVS R0, 0xF1 @ Set R0 to 0xF1 \n\
/* 0802f00a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802f00c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802f00e */ BNE branch_0802f012 \n\
/* 0802f010 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_0802f012: \n\
/* 0802f012 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0802f014 */ BEQ branch_0802f0c4 \n\
/* 0802f016 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802f018 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802f01a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f01c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f01e */ BL gameplay_add_cue_result \n\
/* 0802f022 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802f024 */ LDR R0, [R2] \n\
/* 0802f026 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802f028 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f02a */ LDRSH R1, [R3, R2] \n\
/* 0802f02c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802f02e */ BL sprite_set_anim_cel \n\
/* 0802f032 */ LDR R1, =D_03004b10 \n\
/* 0802f034 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802f036 */ STRH R0, [R1, 0x12] \n\
/* 0802f038 */ LDR R0, [R5, 0x4] \n\
/* 0802f03a */ LDR R1, =anim_rhythm_tweezers_hair_stubble \n\
/* 0802f03c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f03e */ STR R3, [SP] \n\
/* 0802f040 */ STR R3, [SP, 0x4] \n\
/* 0802f042 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f044 */ BL affine_sprite_set_anim \n\
/* 0802f048 */ LDR R0, [R5, 0x4] \n\
/* 0802f04a */ LDR R1, =0xfffffe00 \n\
/* 0802f04c */ BL affine_sprite_set_rotation \n\
/* 0802f050 */ LDR R0, [R6, 0x4] \n\
/* 0802f052 */ LDR R1, =anim_tweezers_pluck_hit \n\
/* 0802f054 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802f056 */ STR R2, [SP] \n\
/* 0802f058 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f05a */ STR R2, [SP, 0x4] \n\
/* 0802f05c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802f05e */ BL affine_sprite_set_anim \n\
/* 0802f062 */ LDR R0, [R6, 0x4] \n\
/* 0802f064 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802f066 */ BL affine_sprite_set_visible \n\
/* 0802f06a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802f06c */ STRB R0, [R7, 0x5] \n\
/* 0802f06e */ LDRB R1, [R5, 0x1] \n\
/* 0802f070 */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 0802f072 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802f074 */ STRB R0, [R5, 0x1] \n\
/* 0802f076 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f078 */ STRB R0, [R7, 0x10] \n\
/* 0802f07a */ MOVS R0, 0xF1 @ Set R0 to 0xF1 \n\
/* 0802f07c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f07e */ BL gameplay_set_input_buttons \n\
/* 0802f082 */ LDR R0, =s_f_hair_tuneru_seqData \n\
/* 0802f084 */ BL stop_sound \n\
/* 0802f088 */ LDR R0, =s_f_hair_nuki_long_seqData \n\
/* 0802f08a */ BL play_sound \n\
/* 0802f08e */ LDR R3, =gCurrentEngineData \n\
/* 0802f090 */ LDR R1, [R3] \n\
/* 0802f092 */ ADDS R1, 0x88 @ Add 0x88 to R1 \n\
/* 0802f094 */ LDRH R0, [R1] \n\
/* 0802f096 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802f098 */ STRH R0, [R1] \n\
/* 0802f09a */ LDR R0, [R1] \n\
/* 0802f09c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802f09e */ BNE branch_0802f0c4 \n\
/* 0802f0a0 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0802f0a2 */ LDR R0, [R1] \n\
/* 0802f0a4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802f0a6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f0a8 */ LDRSH R1, [R2, R3] \n\
/* 0802f0aa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f0ac */ STR R2, [SP] \n\
/* 0802f0ae */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f0b0 */ BL sprite_set_playback \n\
/* 0802f0b4 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802f0b6 */ LDR R0, [R3] \n\
/* 0802f0b8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802f0ba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f0bc */ LDRSH R1, [R2, R3] \n\
/* 0802f0be */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802f0c0 */ BL sprite_set_anim_cel \n\
 \n\
branch_0802f0c4: \n\
/* 0802f0c4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802f0c6 */ BEQ branch_0802f126 \n\
/* 0802f0c8 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802f0ca */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802f0cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f0ce */ BL gameplay_add_cue_result \n\
/* 0802f0d2 */ LDR R0, [R5, 0x4] \n\
/* 0802f0d4 */ LDR R1, =anim_rhythm_tweezers_long_hair \n\
/* 0802f0d6 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802f0d8 */ STR R2, [SP] \n\
/* 0802f0da */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802f0dc */ STR R4, [SP, 0x4] \n\
/* 0802f0de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f0e0 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802f0e2 */ BL affine_sprite_set_anim \n\
/* 0802f0e6 */ LDR R0, [R5, 0x4] \n\
/* 0802f0e8 */ LDR R1, =0xfffffe00 \n\
/* 0802f0ea */ BL affine_sprite_set_rotation \n\
/* 0802f0ee */ LDR R0, [R7] \n\
/* 0802f0f0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802f0f2 */ BL affine_sprite_set_visible \n\
/* 0802f0f6 */ LDRB R1, [R5, 0x1] \n\
/* 0802f0f8 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0802f0fa */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802f0fc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802f0fe */ STRB R0, [R5, 0x1] \n\
/* 0802f100 */ STRB R4, [R7, 0x10] \n\
/* 0802f102 */ MOVS R0, 0xF1 @ Set R0 to 0xF1 \n\
/* 0802f104 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f106 */ BL gameplay_set_input_buttons \n\
/* 0802f10a */ LDR R0, =s_f_hair_tuneru_seqData \n\
/* 0802f10c */ BL stop_sound \n\
/* 0802f110 */ LDR R0, =s_witch_donats_seqData  \n\
/* 0802f112 */ BL play_sound \n\
/* 0802f116 */ BL beatscript_enable_loops \n\
/* 0802f11a */ LDR R0, =gCurrentEngineData \n\
/* 0802f11c */ LDR R1, [R0] \n\
/* 0802f11e */ ADDS R1, 0x8A @ Add 0x8A to R1 \n\
/* 0802f120 */ LDRH R0, [R1] \n\
/* 0802f122 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802f124 */ STRH R0, [R1] \n\
 \n\
branch_0802f126: \n\
/* 0802f126 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0802f128: \n\
/* 0802f128 */ ADD SP, 0x8 \n\
/* 0802f12a */ POP {R3-R5} \n\
/* 0802f12c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802f12e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802f130 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802f132 */ POP {R4-R7} \n\
/* 0802f134 */ POP {R1} \n\
/* 0802f136 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
