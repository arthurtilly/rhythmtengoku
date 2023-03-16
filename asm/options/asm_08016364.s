asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016364 \n\
/* 08016364 */ PUSH {R4-R7, LR} \n\
/* 08016366 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08016368 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801636a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801636c */ PUSH {R5-R7} \n\
/* 0801636e */ SUB SP, 0x14 \n\
/* 08016370 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016372 */ BL func_08007324 \n\
/* 08016376 */ BL func_080073f0 \n\
/* 0801637a */ BL func_08016328 \n\
/* 0801637e */ LDR R5, =D_03005380 \n\
/* 08016380 */ LDR R0, [R5] \n\
/* 08016382 */ LDR R1, =anim_options_banner \n\
/* 08016384 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08016386 */ STR R2, [SP] \n\
/* 08016388 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0801638a */ LSLS R2, R2, 0x7 \n\
/* 0801638c */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0801638e */ STR R2, [SP, 0x4] \n\
/* 08016390 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08016392 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08016394 */ STR R3, [SP, 0x8] \n\
/* 08016396 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08016398 */ STR R4, [SP, 0xC] \n\
/* 0801639a */ STR R4, [SP, 0x10] \n\
/* 0801639c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801639e */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080163a0 */ BL func_0804d160 \n\
/* 080163a4 */ LDR R0, [R5] \n\
/* 080163a6 */ LDR R1, =anim_options_cursor_barista \n\
/* 080163a8 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 080163aa */ STR R2, [SP] \n\
/* 080163ac */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080163ae */ STR R3, [SP, 0x4] \n\
/* 080163b0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080163b2 */ STR R2, [SP, 0x8] \n\
/* 080163b4 */ STR R4, [SP, 0xC] \n\
/* 080163b6 */ STR R4, [SP, 0x10] \n\
/* 080163b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080163ba */ MOVS R3, 0x68 @ Set R3 to 0x68 \n\
/* 080163bc */ BL func_0804d160 \n\
/* 080163c0 */ LDR R6, =D_030046a4 \n\
/* 080163c2 */ LDR R1, [R6] \n\
/* 080163c4 */ STRH R0, [R1, 0x4] \n\
/* 080163c6 */ LDR R0, =D_030046a8 \n\
/* 080163c8 */ LDR R0, [R0] \n\
/* 080163ca */ MOVS R3, 0xB1 @ Set R3 to 0xB1 \n\
/* 080163cc */ LSLS R3, R3, 0x2 \n\
/* 080163ce */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080163d0 */ LDR R0, [R0] \n\
/* 080163d2 */ STR R0, [R1, 0xC] \n\
/* 080163d4 */ LDR R0, [R5] \n\
/* 080163d6 */ LDR R1, =anim_options_select_stereo \n\
/* 080163d8 */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 080163da */ STR R2, [SP] \n\
/* 080163dc */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080163de */ STR R2, [SP, 0x4] \n\
/* 080163e0 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080163e2 */ STR R3, [SP, 0x8] \n\
/* 080163e4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080163e6 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080163e8 */ STR R2, [SP, 0xC] \n\
/* 080163ea */ STR R4, [SP, 0x10] \n\
/* 080163ec */ MOVS R3, 0x68 @ Set R3 to 0x68 \n\
/* 080163ee */ BL func_0804d160 \n\
/* 080163f2 */ LDR R1, [R6] \n\
/* 080163f4 */ STRH R0, [R1, 0x6] \n\
/* 080163f6 */ LDR R0, [R5] \n\
/* 080163f8 */ LDR R1, =anim_options_select_data_clear \n\
/* 080163fa */ MOVS R2, 0x54 @ Set R2 to 0x54 \n\
/* 080163fc */ STR R2, [SP] \n\
/* 080163fe */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08016400 */ STR R3, [SP, 0x4] \n\
/* 08016402 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08016404 */ STR R2, [SP, 0x8] \n\
/* 08016406 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08016408 */ STR R3, [SP, 0xC] \n\
/* 0801640a */ STR R4, [SP, 0x10] \n\
/* 0801640c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0801640e */ MOVS R3, 0x68 @ Set R3 to 0x68 \n\
/* 08016410 */ BL func_0804d160 \n\
/* 08016414 */ LDR R1, [R6] \n\
/* 08016416 */ STRH R0, [R1, 0x8] \n\
/* 08016418 */ LDR R0, [R5] \n\
/* 0801641a */ LDR R1, =anim_options_desc_box \n\
/* 0801641c */ MOVS R2, 0x74 @ Set R2 to 0x74 \n\
/* 0801641e */ STR R2, [SP] \n\
/* 08016420 */ MOVS R2, 0x9E @ Set R2 to 0x9E \n\
/* 08016422 */ LSLS R2, R2, 0x7 \n\
/* 08016424 */ STR R2, [SP, 0x4] \n\
/* 08016426 */ STR R4, [SP, 0x8] \n\
/* 08016428 */ STR R4, [SP, 0xC] \n\
/* 0801642a */ STR R4, [SP, 0x10] \n\
/* 0801642c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801642e */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08016430 */ BL func_0804d160 \n\
/* 08016434 */ LDR R0, [R5] \n\
/* 08016436 */ LDR R2, [R6] \n\
/* 08016438 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 0801643a */ LDRSH R1, [R2, R3] \n\
/* 0801643c */ LDR R3, =options_sound_mode_anim \n\
/* 0801643e */ LDR R2, [R2, 0xC] \n\
/* 08016440 */ LSLS R2, R2, 0x3 \n\
/* 08016442 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08016444 */ LDR R2, [R2] \n\
/* 08016446 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08016448 */ STR R3, [SP] \n\
/* 0801644a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0801644c */ STR R3, [SP, 0x4] \n\
/* 0801644e */ STR R4, [SP, 0x8] \n\
/* 08016450 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08016452 */ BL func_0804d8f8 \n\
/* 08016456 */ LDR R0, [R5] \n\
/* 08016458 */ LDR R1, [R6] \n\
/* 0801645a */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0801645c */ LDRSH R1, [R1, R2] \n\
/* 0801645e */ LDR R2, =anim_options_off_data_clear \n\
/* 08016460 */ STR R4, [SP] \n\
/* 08016462 */ STR R4, [SP, 0x4] \n\
/* 08016464 */ STR R4, [SP, 0x8] \n\
/* 08016466 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08016468 */ BL func_0804d8f8 \n\
/* 0801646c */ LDR R0, [R5] \n\
/* 0801646e */ LDR R1, [R6] \n\
/* 08016470 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08016472 */ LDRSH R1, [R1, R3] \n\
/* 08016474 */ MOVS R2, 0x68 @ Set R2 to 0x68 \n\
/* 08016476 */ MOVS R3, 0x38 @ Set R3 to 0x38 \n\
/* 08016478 */ BL func_0804d5d4 \n\
/* 0801647c */ LDR R0, [R6] \n\
/* 0801647e */ STRH R4, [R0, 0x2] \n\
/* 08016480 */ BL get_current_mem_id \n\
/* 08016484 */ LSLS R0, R0, 0x10 \n\
/* 08016486 */ LSRS R0, R0, 0x10 \n\
/* 08016488 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801648a */ MOVS R2, 0xD0 @ Set R2 to 0xD0 \n\
/* 0801648c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801648e */ BL text_printer_create_new \n\
/* 08016492 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08016494 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08016496 */ MOVS R2, 0x75 @ Set R2 to 0x75 \n\
/* 08016498 */ BL text_printer_set_x_y \n\
/* 0801649c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801649e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080164a0 */ BL text_printer_set_layer \n\
/* 080164a4 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080164a6 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080164a8 */ BL text_printer_set_alignment \n\
/* 080164ac */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080164ae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080164b0 */ BL text_printer_center_by_content \n\
/* 080164b4 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080164b6 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 080164b8 */ BL text_printer_set_palette \n\
/* 080164bc */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080164be */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080164c0 */ BL text_printer_set_colors \n\
/* 080164c4 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080164c6 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 080164c8 */ BL text_printer_set_line_spacing \n\
/* 080164cc */ LDR R0, =options_desc_text \n\
/* 080164ce */ LDR R1, [R0] \n\
/* 080164d0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080164d2 */ BL text_printer_set_string \n\
/* 080164d6 */ LDR R0, [R6] \n\
/* 080164d8 */ STR R7, [R0, 0x14] \n\
/* 080164da */ LDR R0, [R5] \n\
/* 080164dc */ LDR R1, =anim_options_warning_box \n\
/* 080164de */ MOVS R2, 0x4A @ Set R2 to 0x4A \n\
/* 080164e0 */ STR R2, [SP] \n\
/* 080164e2 */ LDR R2, =0x440a \n\
/* 080164e4 */ STR R2, [SP, 0x4] \n\
/* 080164e6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080164e8 */ STR R2, [SP, 0x8] \n\
/* 080164ea */ STR R4, [SP, 0xC] \n\
/* 080164ec */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 080164ee */ LSLS R3, R3, 0x8 \n\
/* 080164f0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080164f2 */ STR R3, [SP, 0x10] \n\
/* 080164f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080164f6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080164f8 */ BL func_0804d160 \n\
/* 080164fc */ LDR R1, [R6] \n\
/* 080164fe */ STRH R0, [R1, 0x1A] \n\
/* 08016500 */ LDR R0, [R5] \n\
/* 08016502 */ LDR R1, =anim_options_cursor_default \n\
/* 08016504 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08016506 */ STR R2, [SP] \n\
/* 08016508 */ MOVS R3, 0x88 @ Set R3 to 0x88 \n\
/* 0801650a */ LSLS R3, R3, 0x7 \n\
/* 0801650c */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0801650e */ STR R3, [SP, 0x4] \n\
/* 08016510 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08016512 */ STR R2, [SP, 0x8] \n\
/* 08016514 */ STR R4, [SP, 0xC] \n\
/* 08016516 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08016518 */ STR R3, [SP, 0x10] \n\
/* 0801651a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801651c */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0801651e */ BL func_0804d160 \n\
/* 08016522 */ LDR R1, [R6] \n\
/* 08016524 */ STRH R0, [R1, 0x1C] \n\
/* 08016526 */ LDR R0, [R5] \n\
/* 08016528 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 0801652a */ LDRSH R1, [R1, R2] \n\
/* 0801652c */ MOVS R2, 0x68 @ Set R2 to 0x68 \n\
/* 0801652e */ BL func_0804d614 \n\
/* 08016532 */ BL get_current_mem_id \n\
/* 08016536 */ LSLS R0, R0, 0x10 \n\
/* 08016538 */ LSRS R0, R0, 0x10 \n\
/* 0801653a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801653c */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 0801653e */ MOVS R3, 0x1A @ Set R3 to 0x1A \n\
/* 08016540 */ BL text_printer_create_new \n\
/* 08016544 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08016546 */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 08016548 */ MOVS R2, 0x4B @ Set R2 to 0x4B \n\
/* 0801654a */ BL text_printer_set_x_y \n\
/* 0801654e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08016550 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08016552 */ BL text_printer_set_layer \n\
/* 08016556 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08016558 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801655a */ BL text_printer_set_alignment \n\
/* 0801655e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08016560 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08016562 */ BL text_printer_center_by_content \n\
/* 08016566 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08016568 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0801656a */ BL text_printer_set_palette \n\
/* 0801656e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08016570 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08016572 */ BL text_printer_set_colors \n\
/* 08016576 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08016578 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 0801657a */ BL text_printer_set_line_spacing \n\
/* 0801657e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08016580 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08016582 */ BL text_printer_show_text \n\
/* 08016586 */ LDR R1, =options_data_clear_confirm_text \n\
/* 08016588 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801658a */ BL text_printer_set_string \n\
/* 0801658e */ LDR R0, [R6] \n\
/* 08016590 */ STR R7, [R0, 0x20] \n\
/* 08016592 */ STR R4, [R0, 0x10] \n\
/* 08016594 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08016596 */ STRB R3, [R0] \n\
/* 08016598 */ LDR R0, [R6] \n\
/* 0801659a */ STR R4, [R0, 0x24] \n\
/* 0801659c */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0801659e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080165a0 */ STRB R1, [R0] \n\
/* 080165a2 */ ADD SP, 0x14 \n\
/* 080165a4 */ POP {R3-R5} \n\
/* 080165a6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080165a8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080165aa */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080165ac */ POP {R4-R7} \n\
/* 080165ae */ POP {R0} \n\
/* 080165b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
