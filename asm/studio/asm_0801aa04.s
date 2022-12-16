asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801aa04 \n\
/* 0801aa04 */ PUSH {R4-R6, LR} \n\
/* 0801aa06 */ SUB SP, 0x14 \n\
/* 0801aa08 */ LDR R0, =D_03005380 \n\
/* 0801aa0a */ LDR R0, [R0] \n\
/* 0801aa0c */ LDR R1, =D_0890c518 \n\
/* 0801aa0e */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0801aa10 */ STR R2, [SP] \n\
/* 0801aa12 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 0801aa14 */ LSLS R6, R6, 0x4 \n\
/* 0801aa16 */ STR R6, [SP, 0x4] \n\
/* 0801aa18 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801aa1a */ STR R2, [SP, 0x8] \n\
/* 0801aa1c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801aa1e */ STR R2, [SP, 0xC] \n\
/* 0801aa20 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801aa22 */ LSLS R2, R2, 0x8 \n\
/* 0801aa24 */ STR R2, [SP, 0x10] \n\
/* 0801aa26 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801aa28 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801aa2a */ BL func_0804d160 \n\
/* 0801aa2e */ LDR R5, =D_030046a4 \n\
/* 0801aa30 */ LDR R1, [R5] \n\
/* 0801aa32 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801aa34 */ LSLS R2, R2, 0x3 \n\
/* 0801aa36 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801aa38 */ STRH R0, [R1] \n\
/* 0801aa3a */ BL get_current_mem_id \n\
/* 0801aa3e */ LSLS R0, R0, 0x10 \n\
/* 0801aa40 */ LSRS R0, R0, 0x10 \n\
/* 0801aa42 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801aa44 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 0801aa46 */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 0801aa48 */ BL text_printer_create_new \n\
/* 0801aa4c */ LDR R1, [R5] \n\
/* 0801aa4e */ LDR R4, =0x4b4 \n\
/* 0801aa50 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0801aa52 */ STR R0, [R1] \n\
/* 0801aa54 */ MOVS R1, 0x28 @ Set R1 to 0x28 \n\
/* 0801aa56 */ MOVS R2, 0x54 @ Set R2 to 0x54 \n\
/* 0801aa58 */ BL text_printer_set_x_y \n\
/* 0801aa5c */ LDR R0, [R5] \n\
/* 0801aa5e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801aa60 */ LDR R0, [R0] \n\
/* 0801aa62 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801aa64 */ BL text_printer_set_layer \n\
/* 0801aa68 */ LDR R0, [R5] \n\
/* 0801aa6a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801aa6c */ LDR R0, [R0] \n\
/* 0801aa6e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801aa70 */ BL text_printer_center_by_content \n\
/* 0801aa74 */ LDR R0, [R5] \n\
/* 0801aa76 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801aa78 */ LDR R0, [R0] \n\
/* 0801aa7a */ LDR R1, =func_0801a9c8 \n\
/* 0801aa7c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801aa7e */ BL text_printer_run_func_on_finish \n\
/* 0801aa82 */ ADD SP, 0x14 \n\
/* 0801aa84 */ POP {R4-R6} \n\
/* 0801aa86 */ POP {R0} \n\
/* 0801aa88 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
