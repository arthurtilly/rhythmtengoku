asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dcb0 \n\
/* 0801dcb0 */ PUSH {R4, R5, LR} \n\
/* 0801dcb2 */ SUB SP, 0xC \n\
/* 0801dcb4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801dcb6 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0801dcb8 */ BL func_0801de38 \n\
/* 0801dcbc */ LDR R0, [R5, 0x8] \n\
/* 0801dcbe */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801dcc0 */ BL func_0800eebc \n\
/* 0801dcc4 */ LDR R0, [R5, 0x8] \n\
/* 0801dcc6 */ LDR R1, =D_089dd908 \n\
/* 0801dcc8 */ BL func_080081a8 \n\
/* 0801dccc */ LDR R0, [R5, 0x8] \n\
/* 0801dcce */ BL bmp_font_bg_get_total_printable_chars \n\
/* 0801dcd2 */ STRH R0, [R5, 0x18] \n\
/* 0801dcd4 */ LDR R0, =0xffff \n\
/* 0801dcd6 */ STRH R0, [R5, 0x1A] \n\
/* 0801dcd8 */ LDR R4, [R5, 0x10] \n\
/* 0801dcda */ LDR R0, [R5] \n\
/* 0801dcdc */ LDR R3, =D_08059668 \n\
/* 0801dcde */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801dce0 */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 0801dce2 */ LDRB R1, [R1] \n\
/* 0801dce4 */ STR R1, [SP] \n\
/* 0801dce6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801dce8 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0801dcea */ BL bmp_font_bg_print_text \n\
/* 0801dcee */ LDRH R3, [R4] \n\
/* 0801dcf0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801dcf2 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0801dcf4 */ LDRH R2, [R0] \n\
/* 0801dcf6 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0801dcf8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801dcfa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801dcfc */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
 \n\
branch_0801dcfe: \n\
/* 0801dcfe */ STRH R3, [R4] \n\
/* 0801dd00 */ STRH R2, [R0] \n\
/* 0801dd02 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0801dd04 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0801dd06 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0801dd08 */ CMP R1, 0x1E @ Compare R1 and 0x1E \n\
/* 0801dd0a */ BLS branch_0801dcfe \n\
/* 0801dd0c */ BL get_current_mem_id \n\
/* 0801dd10 */ LSLS R0, R0, 0x10 \n\
/* 0801dd12 */ LSRS R0, R0, 0x10 \n\
/* 0801dd14 */ LDR R1, [R5] \n\
/* 0801dd16 */ LDR R2, [R5, 0x14] \n\
/* 0801dd18 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0801dd1a */ LSLS R3, R3, 0x2 \n\
/* 0801dd1c */ LDR R4, [R5, 0x8] \n\
/* 0801dd1e */ STR R4, [SP] \n\
/* 0801dd20 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 0801dd22 */ ADDS R4, 0x30 @ Add 0x30 to R4 \n\
/* 0801dd24 */ LDRB R4, [R4] \n\
/* 0801dd26 */ STR R4, [SP, 0x4] \n\
/* 0801dd28 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0801dd2a */ STR R4, [SP, 0x8] \n\
/* 0801dd2c */ BL start_bmp_font_bg_printer_task \n\
/* 0801dd30 */ STR R0, [R5, 0x20] \n\
/* 0801dd32 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801dd34 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801dd36 */ STRH R0, [R5, 0x1C] \n\
/* 0801dd38 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0801dd3a */ STRH R0, [R5, 0x1E] \n\
/* 0801dd3c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801dd3e */ ADDS R0, 0x31 @ Add 0x31 to R0 \n\
/* 0801dd40 */ STRB R1, [R0] \n\
/* 0801dd42 */ STRB R4, [R5, 0x4] \n\
/* 0801dd44 */ ADD SP, 0xC \n\
/* 0801dd46 */ POP {R4, R5} \n\
/* 0801dd48 */ POP {R0} \n\
/* 0801dd4a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
