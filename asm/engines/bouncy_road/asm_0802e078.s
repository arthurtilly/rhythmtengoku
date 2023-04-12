asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e078 \n\
/* 0802e078 */ PUSH {R4, R5, LR} \n\
/* 0802e07a */ SUB SP, 0x20 \n\
/* 0802e07c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802e07e */ LDR R0, [R5, 0x14] \n\
/* 0802e080 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802e082 */ STR R0, [R5, 0x14] \n\
/* 0802e084 */ LDR R1, [R5, 0x18] \n\
/* 0802e086 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0802e088 */ BCC branch_0802e0dc \n\
/* 0802e08a */ LDR R0, [R5] \n\
/* 0802e08c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e08e */ BL affine_sprite_play_anim \n\
/* 0802e092 */ LDRB R1, [R5, 0x4] \n\
/* 0802e094 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802e096 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802e098 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802e09a */ STRB R0, [R5, 0x4] \n\
/* 0802e09c */ LSLS R0, R0, 0x1B \n\
/* 0802e09e */ LSRS R0, R0, 0x1C \n\
/* 0802e0a0 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802e0a2 */ BNE branch_0802e0a6 \n\
/* 0802e0a4 */ B branch_0802e200 \n\
 \n\
branch_0802e0a6: \n\
/* 0802e0a6 */ LDR R0, =D_030055d0 \n\
/* 0802e0a8 */ LDR R0, [R0] \n\
/* 0802e0aa */ LDR R0, [R0, 0x3C] \n\
/* 0802e0ac */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e0ae */ BL affine_sprite_set_anim_frame \n\
/* 0802e0b2 */ LDRB R0, [R5, 0x4] \n\
/* 0802e0b4 */ LSLS R0, R0, 0x1A \n\
/* 0802e0b6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e0b8 */ BGE branch_0802e0d0 \n\
/* 0802e0ba */ BL func_0802dfa4 \n\
/* 0802e0be */ LDR R0, =s_change_goal_seqData \n\
/* 0802e0c0 */ BL play_sound \n\
/* 0802e0c4 */ B branch_0802e200 \n\
\n\
.ltorg \n\
 \n\
branch_0802e0d0: \n\
/* 0802e0d0 */ LDRB R1, [R5, 0xE] \n\
/* 0802e0d2 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0802e0d4 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0802e0d6 */ BL func_0802df44 \n\
/* 0802e0da */ B branch_0802e200 \n\
 \n\
branch_0802e0dc: \n\
/* 0802e0dc */ BL func_0800c398 \n\
/* 0802e0e0 */ LDR R1, [R5, 0x10] \n\
/* 0802e0e2 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0802e0e4 */ STR R1, [R5, 0x10] \n\
/* 0802e0e6 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802e0e8 */ BGE branch_0802e182 \n\
/* 0802e0ea */ LDRH R0, [R5, 0xA] \n\
/* 0802e0ec */ LSLS R0, R0, 0x8 \n\
/* 0802e0ee */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0802e0f0 */ STR R0, [R5, 0x10] \n\
/* 0802e0f2 */ LDRB R0, [R5, 0xE] \n\
/* 0802e0f4 */ SUBS R0, 0xB @ Subtract 0xB from R0 \n\
/* 0802e0f6 */ LSLS R0, R0, 0x18 \n\
/* 0802e0f8 */ LSRS R0, R0, 0x18 \n\
/* 0802e0fa */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802e0fc */ BHI branch_0802e130 \n\
/* 0802e0fe */ LDRB R0, [R5, 0xE] \n\
/* 0802e100 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0802e102 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e104 */ STRB R1, [R0, 0x19] \n\
/* 0802e106 */ BL gameplay_get_marking_criteria \n\
/* 0802e10a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802e10c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802e10e */ ADDS R0, 0x26 @ Add 0x26 to R0 \n\
/* 0802e110 */ LDRB R0, [R0] \n\
/* 0802e112 */ BL gameplay_set_marking_criteria \n\
/* 0802e116 */ LDR R0, =D_030055d0 \n\
/* 0802e118 */ LDR R0, [R0] \n\
/* 0802e11a */ LDRH R1, [R5, 0x8] \n\
/* 0802e11c */ MOVS R2, 0xEA @ Set R2 to 0xEA \n\
/* 0802e11e */ LSLS R2, R2, 0x1 \n\
/* 0802e120 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802e122 */ STRH R1, [R0] \n\
/* 0802e124 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802e126 */ BL gameplay_spawn_cue \n\
/* 0802e12a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802e12c */ BL gameplay_set_marking_criteria \n\
 \n\
branch_0802e130: \n\
/* 0802e130 */ LDRB R0, [R5, 0xE] \n\
/* 0802e132 */ SUBS R0, 0xC @ Subtract 0xC from R0 \n\
/* 0802e134 */ LSLS R0, R0, 0x18 \n\
/* 0802e136 */ LSRS R0, R0, 0x18 \n\
/* 0802e138 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802e13a */ BLS branch_0802e16c \n\
/* 0802e13c */ LDRH R0, [R5, 0x8] \n\
/* 0802e13e */ BL func_0802deb0 \n\
/* 0802e142 */ LDRB R0, [R5, 0xE] \n\
/* 0802e144 */ CMP R0, 0xE @ Compare R0 and 0xE \n\
/* 0802e146 */ BHI branch_0802e15c \n\
/* 0802e148 */ LDR R0, =D_030055d0 \n\
/* 0802e14a */ LDR R1, [R0] \n\
/* 0802e14c */ LDRB R0, [R5, 0xE] \n\
/* 0802e14e */ LSLS R0, R0, 0x2 \n\
/* 0802e150 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0802e152 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802e154 */ LDR R0, [R1] \n\
/* 0802e156 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e158 */ BL affine_sprite_set_anim_frame \n\
 \n\
branch_0802e15c: \n\
/* 0802e15c */ LDRB R1, [R5, 0xE] \n\
/* 0802e15e */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0802e160 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0802e162 */ BL func_0802df44 \n\
/* 0802e166 */ B branch_0802e17c \n\
\n\
.ltorg \n\
 \n\
branch_0802e16c: \n\
/* 0802e16c */ LDRB R0, [R5, 0xE] \n\
/* 0802e16e */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0802e170 */ LDRB R0, [R0, 0x18] \n\
/* 0802e172 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e174 */ BNE branch_0802e17c \n\
/* 0802e176 */ LDRH R0, [R5, 0x8] \n\
/* 0802e178 */ BL func_0802debc \n\
 \n\
branch_0802e17c: \n\
/* 0802e17c */ LDRB R0, [R5, 0xE] \n\
/* 0802e17e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802e180 */ STRB R0, [R5, 0xE] \n\
 \n\
branch_0802e182: \n\
/* 0802e182 */ ADD R1, SP, 0xC \n\
/* 0802e184 */ ADD R0, SP, 0x8 \n\
/* 0802e186 */ BL func_0802e3a4 \n\
/* 0802e18a */ LDR R0, [SP, 0x8] \n\
/* 0802e18c */ LDR R1, [SP, 0xC] \n\
/* 0802e18e */ LDR R2, [R5, 0x14] \n\
/* 0802e190 */ LDR R3, [R5, 0x18] \n\
/* 0802e192 */ BL math_lerp \n\
/* 0802e196 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802e198 */ LDRB R0, [R5, 0x4] \n\
/* 0802e19a */ LSLS R0, R0, 0x1B \n\
/* 0802e19c */ LSRS R0, R0, 0x1C \n\
/* 0802e19e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802e1a0 */ BEQ branch_0802e1aa \n\
/* 0802e1a2 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802e1a4 */ BEQ branch_0802e1b2 \n\
/* 0802e1a6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e1a8 */ B branch_0802e1ba \n\
 \n\
branch_0802e1aa: \n\
/* 0802e1aa */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802e1ac */ BL func_0802dfc8 \n\
/* 0802e1b0 */ B branch_0802e1b8 \n\
 \n\
branch_0802e1b2: \n\
/* 0802e1b2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802e1b4 */ BL func_0802e024 \n\
 \n\
branch_0802e1b8: \n\
/* 0802e1b8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
 \n\
branch_0802e1ba: \n\
/* 0802e1ba */ LDRB R0, [R5, 0x4] \n\
/* 0802e1bc */ LSLS R0, R0, 0x1F \n\
/* 0802e1be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e1c0 */ BEQ branch_0802e200 \n\
/* 0802e1c2 */ ADD R2, SP, 0x10 \n\
/* 0802e1c4 */ ADD R3, SP, 0x14 \n\
/* 0802e1c6 */ ADD R0, SP, 0x18 \n\
/* 0802e1c8 */ STR R0, [SP] \n\
/* 0802e1ca */ ADD R0, SP, 0x1C \n\
/* 0802e1cc */ STR R0, [SP, 0x4] \n\
/* 0802e1ce */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802e1d0 */ BL func_0802e270 \n\
/* 0802e1d4 */ LDR R0, [R5] \n\
/* 0802e1d6 */ LDR R1, [SP, 0x10] \n\
/* 0802e1d8 */ LSLS R1, R1, 0x10 \n\
/* 0802e1da */ ASRS R1, R1, 0x10 \n\
/* 0802e1dc */ LDR R2, [SP, 0x14] \n\
/* 0802e1de */ LSLS R2, R2, 0x10 \n\
/* 0802e1e0 */ ASRS R2, R2, 0x10 \n\
/* 0802e1e2 */ LDR R3, [SP, 0x18] \n\
/* 0802e1e4 */ LSLS R3, R3, 0x10 \n\
/* 0802e1e6 */ LSRS R3, R3, 0x10 \n\
/* 0802e1e8 */ BL affine_sprite_set_x_y_z \n\
/* 0802e1ec */ LDR R0, [R5] \n\
/* 0802e1ee */ LDR R1, [SP, 0x1C] \n\
/* 0802e1f0 */ LSLS R1, R1, 0x10 \n\
/* 0802e1f2 */ ASRS R1, R1, 0x10 \n\
/* 0802e1f4 */ BL affine_sprite_set_scale \n\
/* 0802e1f8 */ LDR R0, [R5] \n\
/* 0802e1fa */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802e1fc */ BL affine_sprite_play_anim \n\
 \n\
branch_0802e200: \n\
/* 0802e200 */ ADD SP, 0x20 \n\
/* 0802e202 */ POP {R4, R5} \n\
/* 0802e204 */ POP {R0} \n\
/* 0802e206 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
