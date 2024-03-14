asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_menu_engine_start \n\
/* 08036c58 */ PUSH {R4-R7, LR} \n\
/* 08036c5a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08036c5c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08036c5e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08036c60 */ PUSH {R5-R7} \n\
/* 08036c62 */ SUB SP, 0x14 \n\
/* 08036c64 */ LDR R5, =gCurrentEngineData \n\
/* 08036c66 */ LDR R1, [R5] \n\
/* 08036c68 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08036c6a */ STRB R0, [R1] \n\
/* 08036c6c */ BL drum_live_menu_init_gfx1 \n\
/* 08036c70 */ BL scene_show_obj_layer \n\
/* 08036c74 */ STR R4, [SP] \n\
/* 08036c76 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08036c78 */ STR R0, [SP, 0x4] \n\
/* 08036c7a */ LDR R0, =0x8001 \n\
/* 08036c7c */ STR R0, [SP, 0x8] \n\
/* 08036c7e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08036c80 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08036c82 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036c84 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08036c86 */ BL scene_set_bg_layer_display \n\
/* 08036c8a */ BL get_current_mem_id \n\
/* 08036c8e */ LSLS R0, R0, 0x10 \n\
/* 08036c90 */ LSRS R0, R0, 0x10 \n\
/* 08036c92 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08036c94 */ MOVS R2, 0x94 @ Set R2 to 0x94 \n\
/* 08036c96 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 08036c98 */ BL text_printer_create_new \n\
/* 08036c9c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08036c9e */ MOVS R1, 0x5C @ Set R1 to 0x5C \n\
/* 08036ca0 */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 08036ca2 */ BL text_printer_set_x_y \n\
/* 08036ca6 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08036ca8 */ LSLS R1, R1, 0x7 \n\
/* 08036caa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08036cac */ BL text_printer_set_layer \n\
/* 08036cb0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08036cb2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08036cb4 */ BL text_printer_center_by_content \n\
/* 08036cb8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08036cba */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08036cbc */ BL text_printer_set_palette \n\
/* 08036cc0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08036cc2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08036cc4 */ BL text_printer_set_colors \n\
/* 08036cc8 */ LDR R1, [R5] \n\
/* 08036cca */ ADDS R1, 0x14 @ Add 0x14 to R1 \n\
/* 08036ccc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08036cce */ BL text_printer_set_x_controller \n\
/* 08036cd2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08036cd4 */ BL gameplay_set_text_printer \n\
/* 08036cd8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08036cda */ BL gameplay_set_text_advance_icon \n\
/* 08036cde */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036ce0 */ BL func_08036e10 \n\
/* 08036ce4 */ LDR R0, [R5] \n\
/* 08036ce6 */ STR R4, [R0, 0x4] \n\
/* 08036ce8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08036cea */ LDR R7, =gSpriteHandler \n\
/* 08036cec */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 08036cee */ LSLS R6, R6, 0xE \n\
/* 08036cf0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08036cf2: \n\
/* 08036cf2 */ LDR R0, [R7] \n\
/* 08036cf4 */ LSLS R2, R4, 0x18 \n\
/* 08036cf6 */ ASRS R2, R2, 0x18 \n\
/* 08036cf8 */ ASRS R1, R6, 0x10 \n\
/* 08036cfa */ STR R1, [SP] \n\
/* 08036cfc */ MOVS R1, 0x94 @ Set R1 to 0x94 \n\
/* 08036cfe */ LSLS R1, R1, 0x7 \n\
/* 08036d00 */ STR R1, [SP, 0x4] \n\
/* 08036d02 */ STR R5, [SP, 0x8] \n\
/* 08036d04 */ STR R5, [SP, 0xC] \n\
/* 08036d06 */ STR R5, [SP, 0x10] \n\
/* 08036d08 */ LDR R1, =anim_drum_live_menu_poster \n\
/* 08036d0a */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08036d0c */ BL sprite_create \n\
/* 08036d10 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08036d12 */ LDR R0, [R7] \n\
/* 08036d14 */ LSLS R1, R1, 0x10 \n\
/* 08036d16 */ ASRS R1, R1, 0x10 \n\
/* 08036d18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036d1a */ LDR R3, =(D_03004b10 + 0x12) \n\
/* 08036d1c */ BL sprite_set_origin_x_y \n\
/* 08036d20 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08036d22 */ LSLS R0, R0, 0x11 \n\
/* 08036d24 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 08036d26 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08036d28 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08036d2a */ BLS branch_08036cf2 \n\
/* 08036d2c */ LDR R5, =gSpriteHandler \n\
/* 08036d2e */ LDR R0, [R5] \n\
/* 08036d30 */ LDR R1, =anim_drum_live_menu_arrow_up \n\
/* 08036d32 */ MOVS R7, 0x50 @ Set R7 to 0x50 \n\
/* 08036d34 */ STR R7, [SP] \n\
/* 08036d36 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08036d38 */ LSLS R2, R2, 0x4 \n\
/* 08036d3a */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08036d3c */ STR R2, [SP, 0x4] \n\
/* 08036d3e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08036d40 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08036d42 */ STR R2, [SP, 0x8] \n\
/* 08036d44 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08036d46 */ STR R6, [SP, 0xC] \n\
/* 08036d48 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08036d4a */ LSLS R2, R2, 0x8 \n\
/* 08036d4c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08036d4e */ STR R2, [SP, 0x10] \n\
/* 08036d50 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036d52 */ MOVS R3, 0x2C @ Set R3 to 0x2C \n\
/* 08036d54 */ BL sprite_create \n\
/* 08036d58 */ LDR R4, =gCurrentEngineData \n\
/* 08036d5a */ LDR R1, [R4] \n\
/* 08036d5c */ STRH R0, [R1, 0x16] \n\
/* 08036d5e */ LDR R0, [R5] \n\
/* 08036d60 */ LDR R1, =anim_drum_live_menu_arrow_down \n\
/* 08036d62 */ STR R7, [SP] \n\
/* 08036d64 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08036d66 */ STR R2, [SP, 0x4] \n\
/* 08036d68 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08036d6a */ STR R2, [SP, 0x8] \n\
/* 08036d6c */ STR R6, [SP, 0xC] \n\
/* 08036d6e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08036d70 */ STR R2, [SP, 0x10] \n\
/* 08036d72 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036d74 */ MOVS R3, 0x2C @ Set R3 to 0x2C \n\
/* 08036d76 */ BL sprite_create \n\
/* 08036d7a */ LDR R3, [R4] \n\
/* 08036d7c */ STRH R0, [R3, 0x18] \n\
/* 08036d7e */ LDR R0, [R5] \n\
/* 08036d80 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 08036d82 */ LDRSH R1, [R3, R2] \n\
/* 08036d84 */ ADDS R3, 0x14 @ Add 0x14 to R3 \n\
/* 08036d86 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036d88 */ BL sprite_set_origin_x_y \n\
/* 08036d8c */ LDR R0, [R5] \n\
/* 08036d8e */ LDR R3, [R4] \n\
/* 08036d90 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08036d92 */ LDRSH R1, [R3, R2] \n\
/* 08036d94 */ ADDS R3, 0x14 @ Add 0x14 to R3 \n\
/* 08036d96 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036d98 */ BL sprite_set_origin_x_y \n\
/* 08036d9c */ LDR R0, [R5] \n\
/* 08036d9e */ LDR R1, =anim_drum_live_menu_start_icon \n\
/* 08036da0 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08036da2 */ STR R2, [SP] \n\
/* 08036da4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08036da6 */ STR R2, [SP, 0x4] \n\
/* 08036da8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08036daa */ STR R2, [SP, 0x8] \n\
/* 08036dac */ STR R6, [SP, 0xC] \n\
/* 08036dae */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08036db0 */ STR R2, [SP, 0x10] \n\
/* 08036db2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036db4 */ MOVS R3, 0xF0 @ Set R3 to 0xF0 \n\
/* 08036db6 */ BL sprite_create \n\
/* 08036dba */ LDR R1, [R4] \n\
/* 08036dbc */ STRH R0, [R1, 0x1A] \n\
/* 08036dbe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036dc0 */ STRB R0, [R1, 0x8] \n\
/* 08036dc2 */ LDR R0, [R4] \n\
/* 08036dc4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08036dc6 */ STRB R1, [R0, 0x9] \n\
/* 08036dc8 */ LDR R0, [R4] \n\
/* 08036dca */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 08036dcc */ STRH R1, [R0, 0xA] \n\
/* 08036dce */ STR R6, [R0, 0x10] \n\
/* 08036dd0 */ STR R6, [R0, 0xC] \n\
/* 08036dd2 */ STRH R6, [R0, 0x14] \n\
/* 08036dd4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036dd6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08036dd8 */ BL gameplay_set_input_buttons \n\
/* 08036ddc */ ADD SP, 0x14 \n\
/* 08036dde */ POP {R3-R5} \n\
/* 08036de0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08036de2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08036de4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08036de6 */ POP {R4-R7} \n\
/* 08036de8 */ POP {R0} \n\
/* 08036dea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
