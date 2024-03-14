asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mr_upbeat_engine_start \n\
/* 08035254 */ PUSH {R4, R5, LR} \n\
/* 08035256 */ SUB SP, 0x14 \n\
/* 08035258 */ LDR R4, =gCurrentEngineData \n\
/* 0803525a */ LDR R1, [R4] \n\
/* 0803525c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803525e */ STRB R0, [R1] \n\
/* 08035260 */ BL mr_upbeat_init_gfx1 \n\
/* 08035264 */ BL scene_show_obj_layer \n\
/* 08035268 */ BL func_08034f64 \n\
/* 0803526c */ BL func_08034dd0 \n\
/* 08035270 */ BL func_08034b14 \n\
/* 08035274 */ LDR R0, =gSpriteHandler \n\
/* 08035276 */ LDR R0, [R0] \n\
/* 08035278 */ LDR R1, =anim_mr_upbeat_beep \n\
/* 0803527a */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 0803527c */ STR R2, [SP] \n\
/* 0803527e */ LDR R2, =0x4864 \n\
/* 08035280 */ STR R2, [SP, 0x4] \n\
/* 08035282 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035284 */ STR R2, [SP, 0x8] \n\
/* 08035286 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08035288 */ STR R2, [SP, 0xC] \n\
/* 0803528a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803528c */ LSLS R2, R2, 0x8 \n\
/* 0803528e */ STR R2, [SP, 0x10] \n\
/* 08035290 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08035292 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08035294 */ BL sprite_create \n\
/* 08035298 */ LDR R1, [R4] \n\
/* 0803529a */ STRH R0, [R1, 0x34] \n\
/* 0803529c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803529e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080352a0 */ STR R0, [R1, 0x3C] \n\
/* 080352a2 */ BL func_08034e40 \n\
/* 080352a6 */ LDR R0, [R4] \n\
/* 080352a8 */ STR R5, [R0, 0x38] \n\
/* 080352aa */ BL get_current_mem_id \n\
/* 080352ae */ LSLS R0, R0, 0x10 \n\
/* 080352b0 */ LSRS R0, R0, 0x10 \n\
/* 080352b2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080352b4 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 080352b6 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 080352b8 */ BL text_printer_create_new \n\
/* 080352bc */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080352be */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080352c0 */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 080352c2 */ BL text_printer_set_x_y \n\
/* 080352c6 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 080352c8 */ LSLS R1, R1, 0x7 \n\
/* 080352ca */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080352cc */ BL text_printer_set_layer \n\
/* 080352d0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080352d2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080352d4 */ BL text_printer_center_by_content \n\
/* 080352d8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080352da */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080352dc */ BL text_printer_set_palette \n\
/* 080352e0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080352e2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080352e4 */ BL text_printer_set_colors \n\
/* 080352e8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080352ea */ BL gameplay_set_text_printer \n\
/* 080352ee */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080352f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080352f2 */ BL gameplay_set_input_buttons \n\
/* 080352f6 */ ADD SP, 0x14 \n\
/* 080352f8 */ POP {R4, R5} \n\
/* 080352fa */ POP {R0} \n\
/* 080352fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
