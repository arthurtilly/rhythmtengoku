asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start clappy_trio_engine_start \n\
/* 08030588 */ PUSH {R4-R6, LR} \n\
/* 0803058a */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803058c */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803058e */ PUSH {R5, R6} \n\
/* 08030590 */ SUB SP, 0x14 \n\
/* 08030592 */ LDR R4, =gCurrentEngineData \n\
/* 08030594 */ LDR R2, [R4] \n\
/* 08030596 */ LSRS R1, R0, 0x2 \n\
/* 08030598 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803059a */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0803059c */ STRB R1, [R2] \n\
/* 0803059e */ LDR R2, [R4] \n\
/* 080305a0 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 080305a2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080305a4 */ STRB R0, [R2, 0x1] \n\
/* 080305a6 */ BL func_0803055c \n\
/* 080305aa */ BL scene_show_obj_layer \n\
/* 080305ae */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080305b0 */ BL scene_hide_bg_layer \n\
/* 080305b4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080305b6 */ BL scene_hide_bg_layer \n\
/* 080305ba */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080305bc */ BL scene_hide_bg_layer \n\
/* 080305c0 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080305c2 */ STR R0, [SP] \n\
/* 080305c4 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080305c6 */ STR R0, [SP, 0x4] \n\
/* 080305c8 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 080305ca */ STR R6, [SP, 0x8] \n\
/* 080305cc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080305ce */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080305d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080305d2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080305d4 */ BL scene_set_bg_layer_display \n\
/* 080305d8 */ LDR R0, [R4] \n\
/* 080305da */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080305dc */ BL func_080303a4 \n\
/* 080305e0 */ LDR R1, [R4] \n\
/* 080305e2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080305e4 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080305e6 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080305e8 */ LSLS R0, R0, 0x1 \n\
/* 080305ea */ STRH R0, [R1, 0x18] \n\
/* 080305ec */ BL get_current_mem_id \n\
/* 080305f0 */ LSLS R0, R0, 0x10 \n\
/* 080305f2 */ LSRS R0, R0, 0x10 \n\
/* 080305f4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080305f6 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 080305f8 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 080305fa */ BL text_printer_create_new \n\
/* 080305fe */ LDR R1, [R4] \n\
/* 08030600 */ STR R0, [R1, 0x14] \n\
/* 08030602 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08030604 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08030606 */ BL text_printer_set_x_y \n\
/* 0803060a */ LDR R0, [R4] \n\
/* 0803060c */ LDR R0, [R0, 0x14] \n\
/* 0803060e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08030610 */ BL text_printer_center_by_content \n\
/* 08030614 */ LDR R0, [R4] \n\
/* 08030616 */ LDR R0, [R0, 0x14] \n\
/* 08030618 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803061a */ BL text_printer_set_palette \n\
/* 0803061e */ LDR R0, [R4] \n\
/* 08030620 */ LDR R0, [R0, 0x14] \n\
/* 08030622 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08030624 */ BL text_printer_set_colors \n\
/* 08030628 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0803062a */ BL clappy_trio_get_anim \n\
/* 0803062e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08030630 */ LDR R5, =gSpriteHandler \n\
/* 08030632 */ LDR R0, [R5] \n\
/* 08030634 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08030636 */ STR R2, [SP] \n\
/* 08030638 */ LDR R2, =0x47f6 \n\
/* 0803063a */ STR R2, [SP, 0x4] \n\
/* 0803063c */ STR R6, [SP, 0x8] \n\
/* 0803063e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08030640 */ STR R3, [SP, 0xC] \n\
/* 08030642 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08030644 */ LSLS R2, R2, 0x8 \n\
/* 08030646 */ STR R2, [SP, 0x10] \n\
/* 08030648 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803064a */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803064c */ BL sprite_create \n\
/* 08030650 */ LDR R1, [R4] \n\
/* 08030652 */ STRH R0, [R1, 0x12] \n\
/* 08030654 */ LDR R0, [R5] \n\
/* 08030656 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 08030658 */ LDRSH R1, [R1, R2] \n\
/* 0803065a */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 0803065c */ BL sprite_set_y \n\
/* 08030660 */ LDR R0, [R4] \n\
/* 08030662 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08030664 */ STRB R3, [R0, 0x10] \n\
/* 08030666 */ LDR R0, [R4] \n\
/* 08030668 */ STRB R3, [R0, 0x11] \n\
/* 0803066a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803066c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803066e */ BL gameplay_set_input_buttons \n\
/* 08030672 */ ADD SP, 0x14 \n\
/* 08030674 */ POP {R3, R4} \n\
/* 08030676 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08030678 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803067a */ POP {R4-R6} \n\
/* 0803067c */ POP {R0} \n\
/* 0803067e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
