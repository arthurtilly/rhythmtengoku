asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cdfc \n\
/* 0801cdfc */ PUSH {R4-R7, LR} \n\
/* 0801cdfe */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801ce00 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801ce02 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801ce04 */ PUSH {R5-R7} \n\
/* 0801ce06 */ SUB SP, 0x14 \n\
/* 0801ce08 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ce0a */ BL func_08007324 \n\
/* 0801ce0e */ BL func_080073f0 \n\
/* 0801ce12 */ LDR R0, =D_03005380 \n\
/* 0801ce14 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0801ce16 */ LDR R0, [R0] \n\
/* 0801ce18 */ LDR R1, =anim_title_text \n\
/* 0801ce1a */ MOVS R2, 0x84 @ Set R2 to 0x84 \n\
/* 0801ce1c */ STR R2, [SP] \n\
/* 0801ce1e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801ce20 */ LSLS R2, R2, 0x4 \n\
/* 0801ce22 */ STR R2, [SP, 0x4] \n\
/* 0801ce24 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801ce26 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0801ce28 */ STR R2, [SP, 0x8] \n\
/* 0801ce2a */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 0801ce2c */ STR R6, [SP, 0xC] \n\
/* 0801ce2e */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0801ce30 */ LSLS R4, R4, 0x8 \n\
/* 0801ce32 */ STR R4, [SP, 0x10] \n\
/* 0801ce34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ce36 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801ce38 */ BL func_0804d160 \n\
/* 0801ce3c */ LDR R5, =D_030046a4 \n\
/* 0801ce3e */ LDR R1, [R5] \n\
/* 0801ce40 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801ce42 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ce44 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0801ce46 */ STRH R0, [R1, 0xC] \n\
/* 0801ce48 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801ce4a */ LDR R0, [R1] \n\
/* 0801ce4c */ LDR R1, =anim_title_stars_appear \n\
/* 0801ce4e */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0801ce50 */ STR R2, [SP] \n\
/* 0801ce52 */ LDR R2, =0x4864 \n\
/* 0801ce54 */ STR R2, [SP, 0x4] \n\
/* 0801ce56 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801ce58 */ STR R2, [SP, 0x8] \n\
/* 0801ce5a */ STR R6, [SP, 0xC] \n\
/* 0801ce5c */ STR R4, [SP, 0x10] \n\
/* 0801ce5e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ce60 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801ce62 */ BL func_0804d160 \n\
/* 0801ce66 */ LDR R1, [R5] \n\
/* 0801ce68 */ STRH R0, [R1, 0xE] \n\
/* 0801ce6a */ BL get_current_mem_id \n\
/* 0801ce6e */ LSLS R0, R0, 0x10 \n\
/* 0801ce70 */ LSRS R0, R0, 0x10 \n\
/* 0801ce72 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801ce74 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0801ce76 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801ce78 */ BL text_printer_create_new \n\
/* 0801ce7c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801ce7e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801ce80 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0801ce82 */ BL text_printer_set_x_y \n\
/* 0801ce86 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801ce88 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801ce8a */ BL text_printer_set_layer \n\
/* 0801ce8e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801ce90 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801ce92 */ BL text_printer_center_by_content \n\
/* 0801ce96 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801ce98 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801ce9a */ BL text_printer_set_palette \n\
/* 0801ce9e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801cea0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801cea2 */ BL text_printer_set_colors \n\
/* 0801cea6 */ LDR R0, [R5] \n\
/* 0801cea8 */ STR R4, [R0, 0x8] \n\
/* 0801ceaa */ BL func_0801cdc0 \n\
/* 0801ceae */ BL func_0801cb0c \n\
/* 0801ceb2 */ LDR R0, [R5] \n\
/* 0801ceb4 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0801ceb6 */ STR R1, [R0] \n\
/* 0801ceb8 */ MOVS R1, 0xB4 @ Set R1 to 0xB4 \n\
/* 0801ceba */ LSLS R1, R1, 0x4 \n\
/* 0801cebc */ STR R1, [R0, 0x4] \n\
/* 0801cebe */ STRB R7, [R0, 0x10] \n\
/* 0801cec0 */ LDR R0, =D_089d3984 \n\
/* 0801cec2 */ BL func_08000584 \n\
/* 0801cec6 */ LDR R0, =scene_main_menu \n\
/* 0801cec8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801ceca */ BL func_080006d0 \n\
/* 0801cece */ ADD SP, 0x14 \n\
/* 0801ced0 */ POP {R3-R5} \n\
/* 0801ced2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801ced4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801ced6 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801ced8 */ POP {R4-R7} \n\
/* 0801ceda */ POP {R0} \n\
/* 0801cedc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
