asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_engine_start \n\
/* 08039e68 */ PUSH {R4-R7, LR} \n\
/* 08039e6a */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08039e6c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08039e6e */ PUSH {R6, R7} \n\
/* 08039e70 */ SUB SP, 0x14 \n\
/* 08039e72 */ LDR R5, =gCurrentEngineData \n\
/* 08039e74 */ LDR R1, [R5] \n\
/* 08039e76 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08039e78 */ STRB R0, [R1] \n\
/* 08039e7a */ BL rat_race_init_gfx1 \n\
/* 08039e7e */ BL scene_show_obj_layer \n\
/* 08039e82 */ STR R4, [SP] \n\
/* 08039e84 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08039e86 */ STR R0, [SP, 0x4] \n\
/* 08039e88 */ STR R4, [SP, 0x8] \n\
/* 08039e8a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08039e8c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08039e8e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039e90 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039e92 */ BL scene_set_bg_layer_display \n\
/* 08039e96 */ STR R4, [SP] \n\
/* 08039e98 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08039e9a */ STR R0, [SP, 0x4] \n\
/* 08039e9c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08039e9e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08039ea0 */ STR R0, [SP, 0x8] \n\
/* 08039ea2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08039ea4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08039ea6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039ea8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039eaa */ BL scene_set_bg_layer_display \n\
/* 08039eae */ STR R4, [SP] \n\
/* 08039eb0 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08039eb2 */ STR R0, [SP, 0x4] \n\
/* 08039eb4 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 08039eb6 */ STR R7, [SP, 0x8] \n\
/* 08039eb8 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08039eba */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08039ebc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039ebe */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039ec0 */ BL scene_set_bg_layer_display \n\
/* 08039ec4 */ STR R4, [SP] \n\
/* 08039ec6 */ MOVS R0, 0x1A @ Set R0 to 0x1A \n\
/* 08039ec8 */ STR R0, [SP, 0x4] \n\
/* 08039eca */ LDR R0, =0x4003 \n\
/* 08039ecc */ STR R0, [SP, 0x8] \n\
/* 08039ece */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08039ed0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08039ed2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039ed4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039ed6 */ BL scene_set_bg_layer_display \n\
/* 08039eda */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 08039edc */ LSLS R0, R0, 0x2 \n\
/* 08039ede */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08039ee0 */ BL func_0800c660 \n\
/* 08039ee4 */ LDR R1, [R5] \n\
/* 08039ee6 */ STR R0, [R1, 0x4] \n\
/* 08039ee8 */ LDR R1, =D_0805a8b4 \n\
/* 08039eea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039eec */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039eee */ BL bmp_font_obj_print_c \n\
/* 08039ef2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08039ef4 */ LDR R2, [R5] \n\
/* 08039ef6 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08039ef8 */ STR R0, [R2, 0xC] \n\
/* 08039efa */ LDR R6, =D_03005380 \n\
/* 08039efc */ LDR R0, [R6] \n\
/* 08039efe */ MOVS R2, 0x5A @ Set R2 to 0x5A \n\
/* 08039f00 */ STR R2, [SP] \n\
/* 08039f02 */ STR R4, [SP, 0x4] \n\
/* 08039f04 */ STR R4, [SP, 0x8] \n\
/* 08039f06 */ STR R4, [SP, 0xC] \n\
/* 08039f08 */ STR R4, [SP, 0x10] \n\
/* 08039f0a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039f0c */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08039f0e */ BL func_0804d160 \n\
/* 08039f12 */ LDR R1, [R5] \n\
/* 08039f14 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039f16 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08039f18 */ STRH R0, [R1, 0x8] \n\
/* 08039f1a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08039f1c */ STRB R3, [R1, 0x10] \n\
/* 08039f1e */ LDR R0, [R5] \n\
/* 08039f20 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08039f22 */ STRB R1, [R0, 0x14] \n\
/* 08039f24 */ LDR R0, [R6] \n\
/* 08039f26 */ LDR R1, =anim_rat_text_bubble_l \n\
/* 08039f28 */ MOVS R2, 0x68 @ Set R2 to 0x68 \n\
/* 08039f2a */ STR R2, [SP] \n\
/* 08039f2c */ STR R7, [SP, 0x4] \n\
/* 08039f2e */ STR R4, [SP, 0x8] \n\
/* 08039f30 */ STR R4, [SP, 0xC] \n\
/* 08039f32 */ STR R4, [SP, 0x10] \n\
/* 08039f34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039f36 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08039f38 */ BL func_0804d160 \n\
/* 08039f3c */ LDR R1, [R5] \n\
/* 08039f3e */ STRH R0, [R1, 0x12] \n\
/* 08039f40 */ LDR R0, [R6] \n\
/* 08039f42 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 08039f44 */ LDRSH R1, [R1, R2] \n\
/* 08039f46 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039f48 */ BL func_0804d770 \n\
/* 08039f4c */ LDR R5, [R5] \n\
/* 08039f4e */ LDRB R0, [R5] \n\
/* 08039f50 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08039f52 */ BNE branch_08039f78 \n\
/* 08039f54 */ LDR R0, =0xffff7800 \n\
/* 08039f56 */ STR R0, [R5, 0x18] \n\
/* 08039f58 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08039f5a */ STRB R3, [R5, 0x1C] \n\
/* 08039f5c */ B branch_08039f80 \n\
\n\
.ltorg \n\
 \n\
branch_08039f78: \n\
/* 08039f78 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08039f7a */ LSLS R0, R0, 0x7 \n\
/* 08039f7c */ STR R0, [R5, 0x18] \n\
/* 08039f7e */ STRB R7, [R5, 0x1C] \n\
 \n\
branch_08039f80: \n\
/* 08039f80 */ LDR R4, =gCurrentEngineData \n\
/* 08039f82 */ LDR R0, [R4] \n\
/* 08039f84 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039f86 */ STR R2, [R0, 0x20] \n\
/* 08039f88 */ STR R2, [R0, 0x24] \n\
/* 08039f8a */ STR R2, [R0, 0x28] \n\
/* 08039f8c */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 08039f8e */ STRB R2, [R0] \n\
/* 08039f90 */ LDR R0, [R4] \n\
/* 08039f92 */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 08039f94 */ LSLS R1, R1, 0x7 \n\
/* 08039f96 */ STR R1, [R0, 0x30] \n\
/* 08039f98 */ STR R2, [R0, 0x34] \n\
/* 08039f9a */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 08039f9c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08039f9e */ STRB R1, [R0] \n\
/* 08039fa0 */ LDR R0, [R4] \n\
/* 08039fa2 */ STR R2, [R0, 0x70] \n\
/* 08039fa4 */ ADDS R0, 0xD2 @ Add 0xD2 to R0 \n\
/* 08039fa6 */ STRB R1, [R0] \n\
/* 08039fa8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08039faa */ BL gameplay_set_input_buttons \n\
/* 08039fae */ LDR R0, [R4] \n\
/* 08039fb0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08039fb2 */ ADDS R5, 0x3C @ Add 0x3C to R5 \n\
/* 08039fb4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08039fb6: \n\
/* 08039fb6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08039fb8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08039fba */ BL func_0803aba4 \n\
/* 08039fbe */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 08039fc0 */ LSLS R0, R0, 0x18 \n\
/* 08039fc2 */ LSRS R4, R0, 0x18 \n\
/* 08039fc4 */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 08039fc6 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08039fc8 */ BLS branch_08039fb6 \n\
/* 08039fca */ LDR R5, =D_03005380 \n\
/* 08039fcc */ LDR R0, [R5] \n\
/* 08039fce */ LDR R1, =anim_rat_race_player_label \n\
/* 08039fd0 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08039fd2 */ STR R2, [SP] \n\
/* 08039fd4 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08039fd6 */ STR R2, [SP, 0x4] \n\
/* 08039fd8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039fda */ STR R2, [SP, 0x8] \n\
/* 08039fdc */ STR R2, [SP, 0xC] \n\
/* 08039fde */ STR R2, [SP, 0x10] \n\
/* 08039fe0 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08039fe2 */ BL func_0804d160 \n\
/* 08039fe6 */ LDR R4, =gCurrentEngineData \n\
/* 08039fe8 */ LDR R2, [R4] \n\
/* 08039fea */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08039fec */ ADDS R1, 0x6C @ Add 0x6C to R1 \n\
/* 08039fee */ STRH R0, [R1] \n\
/* 08039ff0 */ LDR R0, [R5] \n\
/* 08039ff2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039ff4 */ LDRSH R1, [R1, R3] \n\
/* 08039ff6 */ LDR R2, [R2, 0x44] \n\
/* 08039ff8 */ LSLS R2, R2, 0x8 \n\
/* 08039ffa */ ASRS R2, R2, 0x10 \n\
/* 08039ffc */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 08039ffe */ BL func_0804d5d4 \n\
/* 0803a002 */ BL func_0803a678 \n\
/* 0803a006 */ LDR R0, [R4] \n\
/* 0803a008 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803a00a */ ADDS R5, 0x88 @ Add 0x88 to R5 \n\
/* 0803a00c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0803a00e: \n\
/* 0803a00e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803a010 */ BL func_0803baa0 \n\
/* 0803a014 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 0803a016 */ LSLS R0, R0, 0x18 \n\
/* 0803a018 */ LSRS R4, R0, 0x18 \n\
/* 0803a01a */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 0803a01c */ CMP R4, 0x8 @ Compare R4 and 0x8 \n\
/* 0803a01e */ BLS branch_0803a00e \n\
/* 0803a020 */ LDR R5, =gCurrentEngineData \n\
/* 0803a022 */ LDR R0, [R5] \n\
/* 0803a024 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803a026 */ ADDS R1, 0xD0 @ Add 0xD0 to R1 \n\
/* 0803a028 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803a02a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803a02c */ STRH R4, [R1] \n\
/* 0803a02e */ ADDS R0, 0xD3 @ Add 0xD3 to R0 \n\
/* 0803a030 */ STRB R6, [R0] \n\
/* 0803a032 */ LDR R0, [R5] \n\
/* 0803a034 */ ADDS R0, 0xD4 @ Add 0xD4 to R0 \n\
/* 0803a036 */ STR R4, [R0] \n\
/* 0803a038 */ LDR R0, =D_03005380 \n\
/* 0803a03a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803a03c */ LDR R0, [R0] \n\
/* 0803a03e */ LDR R1, =anim_rat_race_blank \n\
/* 0803a040 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 0803a042 */ STR R2, [SP] \n\
/* 0803a044 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a046 */ STR R2, [SP, 0x4] \n\
/* 0803a048 */ STR R4, [SP, 0x8] \n\
/* 0803a04a */ STR R4, [SP, 0xC] \n\
/* 0803a04c */ STR R4, [SP, 0x10] \n\
/* 0803a04e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a050 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0803a052 */ BL func_0804d160 \n\
/* 0803a056 */ LDR R1, [R5] \n\
/* 0803a058 */ ADDS R1, 0xD8 @ Add 0xD8 to R1 \n\
/* 0803a05a */ STRH R0, [R1] \n\
/* 0803a05c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803a05e */ LDR R0, [R2] \n\
/* 0803a060 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a062 */ LDRSH R1, [R1, R3] \n\
/* 0803a064 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0803a066 */ LSLS R2, R2, 0x1 \n\
/* 0803a068 */ BL func_0804d614 \n\
/* 0803a06c */ LDR R0, [R5] \n\
/* 0803a06e */ ADDS R0, 0xDA @ Add 0xDA to R0 \n\
/* 0803a070 */ STRB R6, [R0] \n\
/* 0803a072 */ LDR R0, [R5] \n\
/* 0803a074 */ ADDS R0, 0xDE @ Add 0xDE to R0 \n\
/* 0803a076 */ STRB R6, [R0] \n\
/* 0803a078 */ LDR R1, [R5] \n\
/* 0803a07a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803a07c */ ADDS R0, 0xE2 @ Add 0xE2 to R0 \n\
/* 0803a07e */ STRH R4, [R0] \n\
/* 0803a080 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0803a082 */ STRH R4, [R0] \n\
/* 0803a084 */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 0803a086 */ MOVS R6, 0x40 @ Set R6 to 0x40 \n\
/* 0803a088 */ STRB R6, [R0] \n\
/* 0803a08a */ BL func_0800c42c \n\
/* 0803a08e */ LDR R1, [R5] \n\
/* 0803a090 */ ADDS R1, 0xDF @ Add 0xDF to R1 \n\
/* 0803a092 */ STRB R0, [R1] \n\
/* 0803a094 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803a096 */ LDR R0, [R1] \n\
/* 0803a098 */ LDR R1, =anim_rat_traffic_light \n\
/* 0803a09a */ STR R6, [SP] \n\
/* 0803a09c */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0803a09e */ STR R2, [SP, 0x4] \n\
/* 0803a0a0 */ STR R4, [SP, 0x8] \n\
/* 0803a0a2 */ STR R4, [SP, 0xC] \n\
/* 0803a0a4 */ STR R4, [SP, 0x10] \n\
/* 0803a0a6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a0a8 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0803a0aa */ BL func_0804d160 \n\
/* 0803a0ae */ LDR R1, [R5] \n\
/* 0803a0b0 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803a0b2 */ ADDS R2, 0xDC @ Add 0xDC to R2 \n\
/* 0803a0b4 */ STRH R0, [R2] \n\
/* 0803a0b6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a0b8 */ LDRSH R0, [R2, R3] \n\
/* 0803a0ba */ ADDS R1, 0xDF @ Add 0xDF to R1 \n\
/* 0803a0bc */ LDRB R1, [R1] \n\
/* 0803a0be */ LSLS R1, R1, 0x18 \n\
/* 0803a0c0 */ ASRS R1, R1, 0x18 \n\
/* 0803a0c2 */ BL assign_sprite_affine_param \n\
/* 0803a0c6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803a0c8 */ LDR R0, [R1] \n\
/* 0803a0ca */ LDR R1, [R5] \n\
/* 0803a0cc */ ADDS R1, 0xDC @ Add 0xDC to R1 \n\
/* 0803a0ce */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a0d0 */ LDRSH R1, [R1, R2] \n\
/* 0803a0d2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a0d4 */ BL func_0804d770 \n\
/* 0803a0d8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803a0da */ LDR R0, [R3] \n\
/* 0803a0dc */ LDR R1, [R5] \n\
/* 0803a0de */ ADDS R1, 0xDC @ Add 0xDC to R1 \n\
/* 0803a0e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a0e2 */ LDRSH R1, [R1, R2] \n\
/* 0803a0e4 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 0803a0e6 */ BL func_0804d648 \n\
/* 0803a0ea */ LDR R1, [R5] \n\
/* 0803a0ec */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803a0ee */ ADDS R0, 0xE8 @ Add 0xE8 to R0 \n\
/* 0803a0f0 */ STR R4, [R0] \n\
/* 0803a0f2 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0803a0f4 */ ADDS R5, 0xEC @ Add 0xEC to R5 \n\
 \n\
branch_0803a0f6: \n\
/* 0803a0f6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803a0f8 */ BL func_0803bc40 \n\
/* 0803a0fc */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 0803a0fe */ LSLS R0, R0, 0x18 \n\
/* 0803a100 */ LSRS R4, R0, 0x18 \n\
/* 0803a102 */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 0803a104 */ CMP R4, 0x5 @ Compare R4 and 0x5 \n\
/* 0803a106 */ BLS branch_0803a0f6 \n\
/* 0803a108 */ LDR R2, =gCurrentEngineData \n\
/* 0803a10a */ LDR R0, [R2] \n\
/* 0803a10c */ MOVS R3, 0x8E @ Set R3 to 0x8E \n\
/* 0803a10e */ LSLS R3, R3, 0x1 \n\
/* 0803a110 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803a112 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a114 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803a116 */ STRB R1, [R0] \n\
/* 0803a118 */ LDR R0, [R2] \n\
/* 0803a11a */ LDR R1, =0x11d \n\
/* 0803a11c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a11e */ STRB R3, [R0] \n\
/* 0803a120 */ LDR R0, [R2] \n\
/* 0803a122 */ MOVS R2, 0x8F @ Set R2 to 0x8F \n\
/* 0803a124 */ LSLS R2, R2, 0x1 \n\
/* 0803a126 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803a128 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0803a12a */ STRB R0, [R1] \n\
/* 0803a12c */ ADD SP, 0x14 \n\
/* 0803a12e */ POP {R3, R4} \n\
/* 0803a130 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803a132 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803a134 */ POP {R4-R7} \n\
/* 0803a136 */ POP {R0} \n\
/* 0803a138 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
