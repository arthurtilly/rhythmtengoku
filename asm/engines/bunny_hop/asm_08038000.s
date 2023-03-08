asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_engine_start \n\
/* 08038000 */ PUSH {R4-R6, LR} \n\
/* 08038002 */ SUB SP, 0x14 \n\
/* 08038004 */ LDR R6, =D_030055d0 \n\
/* 08038006 */ LDR R1, [R6] \n\
/* 08038008 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803800a */ STRB R0, [R1] \n\
/* 0803800c */ BL bunny_hop_init_gfx1 \n\
/* 08038010 */ BL scene_show_obj_layer \n\
/* 08038014 */ STR R4, [SP] \n\
/* 08038016 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 08038018 */ STR R0, [SP, 0x4] \n\
/* 0803801a */ LDR R0, =0x8001 \n\
/* 0803801c */ STR R0, [SP, 0x8] \n\
/* 0803801e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08038020 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08038022 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038024 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038026 */ BL scene_set_bg_layer_display \n\
/* 0803802a */ STR R4, [SP] \n\
/* 0803802c */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0803802e */ STR R0, [SP, 0x4] \n\
/* 08038030 */ LDR R0, =0x8003 \n\
/* 08038032 */ STR R0, [SP, 0x8] \n\
/* 08038034 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08038036 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08038038 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803803a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803803c */ BL scene_set_bg_layer_display \n\
/* 08038040 */ STR R4, [SP] \n\
/* 08038042 */ MOVS R0, 0x1A @ Set R0 to 0x1A \n\
/* 08038044 */ STR R0, [SP, 0x4] \n\
/* 08038046 */ LDR R0, =0x4002 \n\
/* 08038048 */ STR R0, [SP, 0x8] \n\
/* 0803804a */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803804c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803804e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038050 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038052 */ BL scene_set_bg_layer_display \n\
/* 08038056 */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 08038058 */ LSLS R0, R0, 0x2 \n\
/* 0803805a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803805c */ BL func_0800c660 \n\
/* 08038060 */ LDR R1, [R6] \n\
/* 08038062 */ MOVS R2, 0xB8 @ Set R2 to 0xB8 \n\
/* 08038064 */ LSLS R2, R2, 0x1 \n\
/* 08038066 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08038068 */ STR R0, [R1] \n\
/* 0803806a */ LDR R1, =D_0805a8ac \n\
/* 0803806c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803806e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038070 */ BL bmp_font_obj_print_c \n\
/* 08038074 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08038076 */ LDR R0, =D_03005380 \n\
/* 08038078 */ LDR R0, [R0] \n\
/* 0803807a */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 0803807c */ STR R2, [SP] \n\
/* 0803807e */ STR R4, [SP, 0x4] \n\
/* 08038080 */ STR R4, [SP, 0x8] \n\
/* 08038082 */ STR R4, [SP, 0xC] \n\
/* 08038084 */ STR R4, [SP, 0x10] \n\
/* 08038086 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038088 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 0803808a */ BL func_0804d160 \n\
/* 0803808e */ LDR R1, [R6] \n\
/* 08038090 */ MOVS R3, 0xBA @ Set R3 to 0xBA \n\
/* 08038092 */ LSLS R3, R3, 0x1 \n\
/* 08038094 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08038096 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08038098 */ STRH R0, [R1] \n\
/* 0803809a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803809c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803809e */ BL gameplay_set_input_buttons \n\
/* 080380a2 */ LDR R1, [R6] \n\
/* 080380a4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080380a6 */ ADDS R0, 0xE0 @ Add 0xE0 to R0 \n\
/* 080380a8 */ STR R4, [R0] \n\
/* 080380aa */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080380ac */ STR R4, [R0] \n\
/* 080380ae */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080380b0 */ STR R4, [R0] \n\
/* 080380b2 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080380b4 */ STR R4, [R0] \n\
/* 080380b6 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080380b8 */ STR R4, [R0] \n\
/* 080380ba */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080380bc */ STRB R5, [R0] \n\
/* 080380be */ LDR R0, [R6] \n\
/* 080380c0 */ ADDS R0, 0xF5 @ Add 0xF5 to R0 \n\
/* 080380c2 */ STRB R5, [R0] \n\
/* 080380c4 */ LDR R0, [R6] \n\
/* 080380c6 */ ADDS R0, 0xF6 @ Add 0xF6 to R0 \n\
/* 080380c8 */ STRB R5, [R0] \n\
/* 080380ca */ LDR R0, [R6] \n\
/* 080380cc */ MOVS R1, 0xBB @ Set R1 to 0xBB \n\
/* 080380ce */ LSLS R1, R1, 0x1 \n\
/* 080380d0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080380d2 */ STRB R5, [R0] \n\
/* 080380d4 */ LDR R0, [R6] \n\
/* 080380d6 */ MOVS R2, 0xC4 @ Set R2 to 0xC4 \n\
/* 080380d8 */ LSLS R2, R2, 0x2 \n\
/* 080380da */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080380dc */ STRB R5, [R0] \n\
/* 080380de */ LDR R0, [R6] \n\
/* 080380e0 */ MOVS R3, 0xC6 @ Set R3 to 0xC6 \n\
/* 080380e2 */ LSLS R3, R3, 0x2 \n\
/* 080380e4 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080380e6 */ STRB R5, [R0] \n\
/* 080380e8 */ BL func_08038f2c \n\
/* 080380ec */ LDR R0, [R6] \n\
/* 080380ee */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080380f0 */ ADDS R5, 0x20 @ Add 0x20 to R5 \n\
 \n\
branch_080380f2: \n\
/* 080380f2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080380f4 */ BL func_080388d8 \n\
/* 080380f8 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 080380fa */ LSLS R0, R0, 0x18 \n\
/* 080380fc */ LSRS R4, R0, 0x18 \n\
/* 080380fe */ ADDS R5, 0x20 @ Add 0x20 to R5 \n\
/* 08038100 */ CMP R4, 0x5 @ Compare R4 and 0x5 \n\
/* 08038102 */ BLS branch_080380f2 \n\
/* 08038104 */ LDR R0, =D_030055d0 \n\
/* 08038106 */ LDR R0, [R0] \n\
/* 08038108 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803810a */ ADDS R5, 0xF8 @ Add 0xF8 to R5 \n\
/* 0803810c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0803810e: \n\
/* 0803810e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08038110 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08038112 */ BL func_0803960c \n\
/* 08038116 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 08038118 */ LSLS R0, R0, 0x18 \n\
/* 0803811a */ LSRS R4, R0, 0x18 \n\
/* 0803811c */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0803811e */ CMP R4, 0x9 @ Compare R4 and 0x9 \n\
/* 08038120 */ BLS branch_0803810e \n\
/* 08038122 */ LDR R0, =D_030055d0 \n\
/* 08038124 */ LDR R0, [R0] \n\
/* 08038126 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08038128 */ LSLS R1, R1, 0x1 \n\
/* 0803812a */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 0803812c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0803812e: \n\
/* 0803812e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08038130 */ BL func_08039738 \n\
/* 08038134 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 08038136 */ LSLS R0, R0, 0x18 \n\
/* 08038138 */ LSRS R4, R0, 0x18 \n\
/* 0803813a */ ADDS R5, 0x14 @ Add 0x14 to R5 \n\
/* 0803813c */ CMP R4, 0x13 @ Compare R4 and 0x13 \n\
/* 0803813e */ BLS branch_0803812e \n\
/* 08038140 */ LDR R6, =D_030055d0 \n\
/* 08038142 */ LDR R0, [R6] \n\
/* 08038144 */ MOVS R5, 0xBE @ Set R5 to 0xBE \n\
/* 08038146 */ LSLS R5, R5, 0x1 \n\
/* 08038148 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803814a */ LDR R1, =0xfffe4000 \n\
/* 0803814c */ STR R1, [R0] \n\
/* 0803814e */ LDR R4, =D_03005380 \n\
/* 08038150 */ LDR R0, [R4] \n\
/* 08038152 */ LDR R1, =anim_bunny_hop_moon \n\
/* 08038154 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08038156 */ STR R2, [SP] \n\
/* 08038158 */ LDR R2, =0x8006 \n\
/* 0803815a */ STR R2, [SP, 0x4] \n\
/* 0803815c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803815e */ STR R2, [SP, 0x8] \n\
/* 08038160 */ STR R2, [SP, 0xC] \n\
/* 08038162 */ STR R2, [SP, 0x10] \n\
/* 08038164 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08038166 */ BL func_0804d160 \n\
/* 0803816a */ LDR R2, [R6] \n\
/* 0803816c */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 0803816e */ LSLS R3, R3, 0x1 \n\
/* 08038170 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08038172 */ STRH R0, [R1] \n\
/* 08038174 */ LDR R0, [R4] \n\
/* 08038176 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038178 */ LDRSH R1, [R1, R3] \n\
/* 0803817a */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0803817c */ LDR R3, [R2] \n\
/* 0803817e */ LSLS R3, R3, 0x8 \n\
/* 08038180 */ ASRS R3, R3, 0x10 \n\
/* 08038182 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08038184 */ BL func_0804d5d4 \n\
/* 08038188 */ LDR R0, [R6] \n\
/* 0803818a */ LDRB R0, [R0] \n\
/* 0803818c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803818e */ BLT branch_080381c6 \n\
/* 08038190 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08038192 */ BLE branch_080381c6 \n\
/* 08038194 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08038196 */ BNE branch_080381c6 \n\
/* 08038198 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803819a */ BL func_0803899c \n\
/* 0803819e */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080381a0 */ BL func_08038ce0 \n\
/* 080381a4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080381a6 */ BL func_0803899c \n\
/* 080381aa */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 080381ac */ BL func_08038ce0 \n\
/* 080381b0 */ LDR R1, [R6] \n\
/* 080381b2 */ ADDS R1, 0xF0 @ Add 0xF0 to R1 \n\
/* 080381b4 */ LDR R0, [R1] \n\
/* 080381b6 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 080381b8 */ LSLS R2, R2, 0x6 \n\
/* 080381ba */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080381bc */ STR R0, [R1] \n\
/* 080381be */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080381c0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080381c2 */ BL func_08038fbc \n\
 \n\
branch_080381c6: \n\
/* 080381c6 */ BL get_current_mem_id \n\
/* 080381ca */ LSLS R0, R0, 0x10 \n\
/* 080381cc */ LSRS R0, R0, 0x10 \n\
/* 080381ce */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080381d0 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 080381d2 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 080381d4 */ BL text_printer_create_new \n\
/* 080381d8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080381da */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080381dc */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080381de */ BL text_printer_set_x_y \n\
/* 080381e2 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080381e4 */ LSLS R1, R1, 0x4 \n\
/* 080381e6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080381e8 */ BL text_printer_set_layer \n\
/* 080381ec */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080381ee */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080381f0 */ BL text_printer_center_by_content \n\
/* 080381f4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080381f6 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 080381f8 */ BL text_printer_set_palette \n\
/* 080381fc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080381fe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08038200 */ BL text_printer_set_colors \n\
/* 08038204 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08038206 */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 08038208 */ BL text_printer_set_line_spacing \n\
/* 0803820c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803820e */ BL gameplay_set_text_printer \n\
/* 08038212 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08038214 */ BL gameplay_enable_cue_input_overlap \n\
/* 08038218 */ ADD SP, 0x14 \n\
/* 0803821a */ POP {R4-R6} \n\
/* 0803821c */ POP {R0} \n\
/* 0803821e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
