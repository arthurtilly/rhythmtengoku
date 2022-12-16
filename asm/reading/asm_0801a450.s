asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a450 \n\
/* 0801a450 */ PUSH {R4-R7, LR} \n\
/* 0801a452 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801a454 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801a456 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801a458 */ PUSH {R5-R7} \n\
/* 0801a45a */ SUB SP, 0x14 \n\
/* 0801a45c */ BL func_0800061c \n\
/* 0801a460 */ LSLS R0, R0, 0x4 \n\
/* 0801a462 */ LDR R1, =D_089d7e74 \n\
/* 0801a464 */ ADDS R7, R0, R1 @ Set R7 to R0 + R1 \n\
/* 0801a466 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0801a468 */ BNE branch_0801a46c \n\
/* 0801a46a */ LDR R7, =D_089d7fe8 \n\
 \n\
branch_0801a46c: \n\
/* 0801a46c */ LDR R6, =D_030046a4 \n\
/* 0801a46e */ LDR R0, [R6] \n\
/* 0801a470 */ STR R7, [R0] \n\
/* 0801a472 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a474 */ BL func_08007324 \n\
/* 0801a478 */ BL func_080073f0 \n\
/* 0801a47c */ BL func_0801a414 \n\
/* 0801a480 */ LDR R0, [R6] \n\
/* 0801a482 */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0801a484 */ LSLS R1, R1, 0x1 \n\
/* 0801a486 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801a488 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801a48a */ STRB R5, [R0] \n\
/* 0801a48c */ LDR R0, [R6] \n\
/* 0801a48e */ MOVS R2, 0x8B @ Set R2 to 0x8B \n\
/* 0801a490 */ LSLS R2, R2, 0x1 \n\
/* 0801a492 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801a494 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801a496 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0801a498 */ STRH R5, [R0] \n\
/* 0801a49a */ LDR R4, =D_03005380 \n\
/* 0801a49c */ LDR R0, [R4] \n\
/* 0801a49e */ LDR R1, =D_0890ae34 \n\
/* 0801a4a0 */ STR R5, [SP] \n\
/* 0801a4a2 */ LDR R2, =0x4864 \n\
/* 0801a4a4 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0801a4a6 */ STR R2, [SP, 0x4] \n\
/* 0801a4a8 */ STR R5, [SP, 0x8] \n\
/* 0801a4aa */ STR R5, [SP, 0xC] \n\
/* 0801a4ac */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801a4ae */ LSLS R2, R2, 0x8 \n\
/* 0801a4b0 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0801a4b2 */ STR R2, [SP, 0x10] \n\
/* 0801a4b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a4b6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801a4b8 */ BL func_0804d160 \n\
/* 0801a4bc */ LDR R1, [R6] \n\
/* 0801a4be */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 0801a4c0 */ LSLS R2, R2, 0x1 \n\
/* 0801a4c2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801a4c4 */ STRH R0, [R1] \n\
/* 0801a4c6 */ LDR R0, [R4] \n\
/* 0801a4c8 */ LDR R1, =D_0890ae44 \n\
/* 0801a4ca */ STR R5, [SP] \n\
/* 0801a4cc */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801a4ce */ STR R2, [SP, 0x4] \n\
/* 0801a4d0 */ STR R5, [SP, 0x8] \n\
/* 0801a4d2 */ STR R5, [SP, 0xC] \n\
/* 0801a4d4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801a4d6 */ STR R2, [SP, 0x10] \n\
/* 0801a4d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a4da */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801a4dc */ BL func_0804d160 \n\
/* 0801a4e0 */ LDR R1, [R6] \n\
/* 0801a4e2 */ MOVS R2, 0x8D @ Set R2 to 0x8D \n\
/* 0801a4e4 */ LSLS R2, R2, 0x1 \n\
/* 0801a4e6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801a4e8 */ STRH R0, [R1] \n\
/* 0801a4ea */ LDR R0, [R4] \n\
/* 0801a4ec */ LDR R1, =D_0890ae24 \n\
/* 0801a4ee */ STR R5, [SP] \n\
/* 0801a4f0 */ LDR R2, =0x48c8 \n\
/* 0801a4f2 */ STR R2, [SP, 0x4] \n\
/* 0801a4f4 */ STR R5, [SP, 0x8] \n\
/* 0801a4f6 */ STR R5, [SP, 0xC] \n\
/* 0801a4f8 */ STR R5, [SP, 0x10] \n\
/* 0801a4fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a4fc */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801a4fe */ BL func_0804d160 \n\
/* 0801a502 */ LDR R0, [R6] \n\
/* 0801a504 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0801a506 */ STRB R1, [R0, 0xC] \n\
/* 0801a508 */ BL get_current_mem_id \n\
/* 0801a50c */ LSLS R0, R0, 0x10 \n\
/* 0801a50e */ LSRS R0, R0, 0x10 \n\
/* 0801a510 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801a512 */ MOVS R2, 0xE8 @ Set R2 to 0xE8 \n\
/* 0801a514 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801a516 */ BL text_printer_create_new \n\
/* 0801a51a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801a51c */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801a51e */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0801a520 */ BL text_printer_set_x_y \n\
/* 0801a524 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 0801a526 */ LSLS R1, R1, 0x7 \n\
/* 0801a528 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801a52a */ BL text_printer_set_layer \n\
/* 0801a52e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801a530 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801a532 */ BL text_printer_set_alignment \n\
/* 0801a536 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801a538 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801a53a */ BL text_printer_set_colors \n\
/* 0801a53e */ LDR R1, [R7] \n\
/* 0801a540 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801a542 */ BL text_printer_set_string \n\
/* 0801a546 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801a548 */ BL text_printer_update \n\
/* 0801a54c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801a54e */ BL text_printer_update \n\
/* 0801a552 */ BL get_current_mem_id \n\
/* 0801a556 */ LSLS R0, R0, 0x10 \n\
/* 0801a558 */ LSRS R0, R0, 0x10 \n\
/* 0801a55a */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 0801a55c */ MOVS R2, 0xE6 @ Set R2 to 0xE6 \n\
/* 0801a55e */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0801a560 */ BL text_printer_create_new \n\
/* 0801a564 */ LDR R1, [R6] \n\
/* 0801a566 */ STR R0, [R1, 0x8] \n\
/* 0801a568 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0801a56a */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 0801a56c */ BL text_printer_set_x_y \n\
/* 0801a570 */ LDR R0, [R6] \n\
/* 0801a572 */ LDR R0, [R0, 0x8] \n\
/* 0801a574 */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0801a576 */ LSLS R1, R1, 0x8 \n\
/* 0801a578 */ BL text_printer_set_layer \n\
/* 0801a57c */ LDR R2, [R6] \n\
/* 0801a57e */ LDR R0, [R2, 0x8] \n\
/* 0801a580 */ MOVS R1, 0x8B @ Set R1 to 0x8B \n\
/* 0801a582 */ LSLS R1, R1, 0x1 \n\
/* 0801a584 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0801a586 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801a588 */ BL text_printer_set_x_y_controller \n\
/* 0801a58c */ LDR R0, [R6] \n\
/* 0801a58e */ LDR R0, [R0, 0x8] \n\
/* 0801a590 */ LDR R1, [R7, 0x4] \n\
/* 0801a592 */ BL text_printer_set_string \n\
/* 0801a596 */ LDR R1, [R6] \n\
/* 0801a598 */ LDR R0, [R1, 0x8] \n\
/* 0801a59a */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 0801a59c */ BL text_printer_export_data \n\
/* 0801a5a0 */ LDR R0, [R6] \n\
/* 0801a5a2 */ STR R5, [R0, 0x4] \n\
/* 0801a5a4 */ ADD SP, 0x14 \n\
/* 0801a5a6 */ POP {R3-R5} \n\
/* 0801a5a8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801a5aa */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801a5ac */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801a5ae */ POP {R4-R7} \n\
/* 0801a5b0 */ POP {R0} \n\
/* 0801a5b2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
