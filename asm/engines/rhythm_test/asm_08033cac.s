asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_test_engine_start \n\
/* 08033cac */ PUSH {R4-R7, LR} \n\
/* 08033cae */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08033cb0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08033cb2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08033cb4 */ PUSH {R5-R7} \n\
/* 08033cb6 */ SUB SP, 0x14 \n\
/* 08033cb8 */ LDR R1, =gCurrentEngineData \n\
/* 08033cba */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08033cbc */ LDR R1, [R1] \n\
/* 08033cbe */ STR R0, [R1] \n\
/* 08033cc0 */ BL rhythm_test_init_gfx1 \n\
/* 08033cc4 */ BL scene_show_obj_layer \n\
/* 08033cc8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033cca */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08033ccc */ STR R2, [SP] \n\
/* 08033cce */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08033cd0 */ STR R0, [SP, 0x4] \n\
/* 08033cd2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08033cd4 */ STR R0, [SP, 0x8] \n\
/* 08033cd6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08033cd8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08033cda */ BL scene_set_bg_layer_display \n\
/* 08033cde */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08033ce0 */ STR R1, [SP] \n\
/* 08033ce2 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 08033ce4 */ STR R0, [SP, 0x4] \n\
/* 08033ce6 */ LDR R0, =0x8002 \n\
/* 08033ce8 */ STR R0, [SP, 0x8] \n\
/* 08033cea */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08033cec */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08033cee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033cf0 */ MOVS R3, 0x18 @ Set R3 to 0x18 \n\
/* 08033cf2 */ BL scene_set_bg_layer_display \n\
/* 08033cf6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08033cf8 */ STR R2, [SP] \n\
/* 08033cfa */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08033cfc */ STR R0, [SP, 0x4] \n\
/* 08033cfe */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08033d00 */ STR R0, [SP, 0x8] \n\
/* 08033d02 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08033d04 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033d06 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08033d08 */ BL scene_set_bg_layer_display \n\
/* 08033d0c */ BL get_current_mem_id \n\
/* 08033d10 */ LSLS R0, R0, 0x10 \n\
/* 08033d12 */ LSRS R0, R0, 0x10 \n\
/* 08033d14 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08033d16 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08033d18 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 08033d1a */ BL text_printer_create_new \n\
/* 08033d1e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08033d20 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08033d22 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08033d24 */ BL text_printer_set_x_y \n\
/* 08033d28 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08033d2a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08033d2c */ BL text_printer_center_by_content \n\
/* 08033d30 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08033d32 */ BL gameplay_set_text_printer \n\
/* 08033d36 */ LDR R0, =0x48c8 \n\
/* 08033d38 */ BL gameplay_set_text_z \n\
/* 08033d3c */ LDR R5, =gSpriteHandler \n\
/* 08033d3e */ LDR R0, [R5] \n\
/* 08033d40 */ LDR R1, =anim_rhythm_test_button \n\
/* 08033d42 */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 08033d44 */ STR R2, [SP] \n\
/* 08033d46 */ MOVS R6, 0x90 @ Set R6 to 0x90 \n\
/* 08033d48 */ LSLS R6, R6, 0x7 \n\
/* 08033d4a */ STR R6, [SP, 0x4] \n\
/* 08033d4c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08033d4e */ STR R2, [SP, 0x8] \n\
/* 08033d50 */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 08033d52 */ STR R4, [SP, 0xC] \n\
/* 08033d54 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08033d56 */ STR R2, [SP, 0x10] \n\
/* 08033d58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033d5a */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08033d5c */ BL sprite_create \n\
/* 08033d60 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08033d62 */ LDR R1, [R2] \n\
/* 08033d64 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08033d66 */ STRH R0, [R1, 0x4] \n\
/* 08033d68 */ LDR R0, [R5] \n\
/* 08033d6a */ LDR R1, =anim_rhythm_test_monitor_note \n\
/* 08033d6c */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08033d6e */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08033d70 */ STR R2, [SP] \n\
/* 08033d72 */ LDR R2, =0x4864 \n\
/* 08033d74 */ STR R2, [SP, 0x4] \n\
/* 08033d76 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08033d78 */ STR R2, [SP, 0x8] \n\
/* 08033d7a */ STR R4, [SP, 0xC] \n\
/* 08033d7c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08033d7e */ LSLS R2, R2, 0x8 \n\
/* 08033d80 */ STR R2, [SP, 0x10] \n\
/* 08033d82 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08033d84 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08033d86 */ BL sprite_create \n\
/* 08033d8a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08033d8c */ LDR R1, [R2] \n\
/* 08033d8e */ STRH R0, [R1, 0x6] \n\
/* 08033d90 */ STRB R7, [R1, 0x8] \n\
/* 08033d92 */ LDR R0, [R5] \n\
/* 08033d94 */ LDR R1, =anim_rhythm_test_monitor_count_num \n\
/* 08033d96 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08033d98 */ STR R2, [SP] \n\
/* 08033d9a */ STR R6, [SP, 0x4] \n\
/* 08033d9c */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08033d9e */ STR R2, [SP, 0x8] \n\
/* 08033da0 */ STR R4, [SP, 0xC] \n\
/* 08033da2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08033da4 */ LSLS R2, R2, 0x8 \n\
/* 08033da6 */ STR R2, [SP, 0x10] \n\
/* 08033da8 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08033daa */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08033dac */ BL sprite_create \n\
/* 08033db0 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08033db2 */ LDR R1, [R2] \n\
/* 08033db4 */ STRH R0, [R1, 0xA] \n\
/* 08033db6 */ BL func_0803397c \n\
/* 08033dba */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08033dbc */ LDR R0, [R1] \n\
/* 08033dbe */ ADDS R0, 0x98 @ Add 0x98 to R0 \n\
/* 08033dc0 */ BL init_drumtech \n\
/* 08033dc4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08033dc6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08033dc8 */ BL gameplay_set_input_buttons \n\
/* 08033dcc */ ADD SP, 0x14 \n\
/* 08033dce */ POP {R3-R5} \n\
/* 08033dd0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08033dd2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08033dd4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08033dd6 */ POP {R4-R7} \n\
/* 08033dd8 */ POP {R0} \n\
/* 08033dda */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
