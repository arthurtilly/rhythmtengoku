asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011300 \n\
/* 08011300 */ PUSH {R4, R5, LR} \n\
/* 08011302 */ SUB SP, 0x14 \n\
/* 08011304 */ BL get_current_mem_id \n\
/* 08011308 */ LSLS R0, R0, 0x10 \n\
/* 0801130a */ LSRS R0, R0, 0x10 \n\
/* 0801130c */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0801130e */ MOVS R2, 0xB0 @ Set R2 to 0xB0 \n\
/* 08011310 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08011312 */ BL text_printer_create_new \n\
/* 08011316 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08011318 */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 0801131a */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0801131c */ BL text_printer_set_x_y \n\
/* 08011320 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08011322 */ LSLS R1, R1, 0x4 \n\
/* 08011324 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08011326 */ BL text_printer_set_layer \n\
/* 0801132a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801132c */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0801132e */ BL text_printer_set_palette \n\
/* 08011332 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08011334 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08011336 */ BL text_printer_set_colors \n\
/* 0801133a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801133c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801133e */ BL text_printer_center_by_content \n\
/* 08011342 */ LDR R1, =func_080112e8 \n\
/* 08011344 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08011346 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011348 */ BL text_printer_run_func_on_finish \n\
/* 0801134c */ LDR R1, =func_080112f4 \n\
/* 0801134e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08011350 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011352 */ BL text_printer_run_func_on_clear \n\
/* 08011356 */ LDR R5, =D_030046a4 \n\
/* 08011358 */ LDR R0, [R5] \n\
/* 0801135a */ STR R4, [R0, 0x4] \n\
/* 0801135c */ LDR R0, =D_03005380 \n\
/* 0801135e */ LDR R0, [R0] \n\
/* 08011360 */ LDR R1, =D_0890021c \n\
/* 08011362 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08011364 */ STR R2, [SP] \n\
/* 08011366 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08011368 */ LSLS R2, R2, 0x3 \n\
/* 0801136a */ STR R2, [SP, 0x4] \n\
/* 0801136c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801136e */ STR R2, [SP, 0x8] \n\
/* 08011370 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011372 */ STR R2, [SP, 0xC] \n\
/* 08011374 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08011376 */ LSLS R2, R2, 0x8 \n\
/* 08011378 */ STR R2, [SP, 0x10] \n\
/* 0801137a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801137c */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0801137e */ BL func_0804d160 \n\
/* 08011382 */ LDR R1, [R5] \n\
/* 08011384 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011386 */ STRH R0, [R1, 0x8] \n\
/* 08011388 */ STRB R2, [R1, 0x1D] \n\
/* 0801138a */ ADD SP, 0x14 \n\
/* 0801138c */ POP {R4, R5} \n\
/* 0801138e */ POP {R0} \n\
/* 08011390 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
