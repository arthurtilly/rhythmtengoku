asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a1b0 \n\
/* 0801a1b0 */ PUSH {R4-R6, LR} \n\
/* 0801a1b2 */ SUB SP, 0x14 \n\
/* 0801a1b4 */ BL func_0800061c \n\
/* 0801a1b8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801a1ba */ LDR R0, =D_030046a4 \n\
/* 0801a1bc */ LDR R1, [R0] \n\
/* 0801a1be */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a1c0 */ STR R0, [R1, 0xC] \n\
/* 0801a1c2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801a1c4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801a1c6 */ BEQ branch_0801a228 \n\
/* 0801a1c8 */ LDR R0, [R4, 0x10] \n\
/* 0801a1ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a1cc */ BEQ branch_0801a228 \n\
/* 0801a1ce */ LDR R0, =(level_data_table + 0x6C0) \n\
/* 0801a1d0 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0801a1d2 */ BNE branch_0801a1e4 \n\
/* 0801a1d4 */ BL func_08026b18 \n\
/* 0801a1d8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801a1da */ B branch_0801a206 \n\
\n\
.ltorg \n\
 \n\
branch_0801a1e4: \n\
/* 0801a1e4 */ LDR R0, =D_030046a8 \n\
/* 0801a1e6 */ LDR R0, [R0] \n\
/* 0801a1e8 */ LDRB R0, [R0, 0x14] \n\
/* 0801a1ea */ LSLS R0, R0, 0x18 \n\
/* 0801a1ec */ ASRS R0, R0, 0x18 \n\
/* 0801a1ee */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0801a1f0 */ BEQ branch_0801a200 \n\
/* 0801a1f2 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0801a1f4 */ BEQ branch_0801a204 \n\
/* 0801a1f6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801a1f8 */ B branch_0801a206 \n\
\n\
.ltorg \n\
 \n\
branch_0801a200: \n\
/* 0801a200 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801a202 */ B branch_0801a206 \n\
 \n\
branch_0801a204: \n\
/* 0801a204 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
 \n\
branch_0801a206: \n\
/* 0801a206 */ LDR R0, =D_030046a4 \n\
/* 0801a208 */ LDR R2, [R0] \n\
/* 0801a20a */ LDR R0, [R4, 0x10] \n\
/* 0801a20c */ LSLS R1, R1, 0x2 \n\
/* 0801a20e */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0801a210 */ LDR R0, [R0] \n\
/* 0801a212 */ STR R0, [R2, 0xC] \n\
/* 0801a214 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801a216 */ ADDS R0, 0x14 @ Add 0x14 to R0 \n\
/* 0801a218 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a21a */ BEQ branch_0801a220 \n\
/* 0801a21c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801a21e */ LDR R5, [R0] \n\
 \n\
branch_0801a220: \n\
/* 0801a220 */ LDR R0, =epilogue_jingles \n\
/* 0801a222 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0801a224 */ LDR R0, [R0] \n\
/* 0801a226 */ STR R0, [R2, 0x10] \n\
 \n\
branch_0801a228: \n\
/* 0801a228 */ LDR R6, =D_030046a4 \n\
/* 0801a22a */ LDR R0, [R6] \n\
/* 0801a22c */ LDR R0, [R0, 0xC] \n\
/* 0801a22e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a230 */ BNE branch_0801a248 \n\
/* 0801a232 */ LDR R0, =epilogue_end_script \n\
/* 0801a234 */ BL func_0801d95c \n\
/* 0801a238 */ B branch_0801a2f2 \n\
\n\
.ltorg \n\
 \n\
branch_0801a248: \n\
/* 0801a248 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a24a */ BL func_08007324 \n\
/* 0801a24e */ BL func_080073f0 \n\
/* 0801a252 */ BL get_current_mem_id \n\
/* 0801a256 */ LSLS R0, R0, 0x10 \n\
/* 0801a258 */ LSRS R0, R0, 0x10 \n\
/* 0801a25a */ LDR R1, =bitmap_font_warioware_body \n\
/* 0801a25c */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0801a25e */ LSLS R3, R3, 0x2 \n\
/* 0801a260 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801a262 */ STR R2, [SP] \n\
/* 0801a264 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a266 */ BL create_new_bmp_font_bg \n\
/* 0801a26a */ LDR R1, [R6] \n\
/* 0801a26c */ STR R0, [R1] \n\
/* 0801a26e */ LDR R1, =(VRAMBase + 0x17800) \n\
/* 0801a270 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801a272 */ LSLS R2, R2, 0x4 \n\
/* 0801a274 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801a276 */ LSLS R0, R0, 0x2 \n\
/* 0801a278 */ STR R0, [SP] \n\
/* 0801a27a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a27c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801a27e */ BL dma3_fill \n\
/* 0801a282 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801a284 */ BEQ branch_0801a2ca \n\
/* 0801a286 */ BL get_current_mem_id \n\
/* 0801a28a */ STR R5, [SP] \n\
/* 0801a28c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801a28e */ STR R1, [SP, 0x4] \n\
/* 0801a290 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801a292 */ STR R4, [SP, 0x8] \n\
/* 0801a294 */ ADDS R1, 0xFF @ Add 0xFF to R1 \n\
/* 0801a296 */ STR R1, [SP, 0xC] \n\
/* 0801a298 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801a29a */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 0801a29c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801a29e */ BL text_printer_get_unformatted_line_anim \n\
/* 0801a2a2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801a2a4 */ LDR R5, =D_03005380 \n\
/* 0801a2a6 */ LDR R0, [R5] \n\
/* 0801a2a8 */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 0801a2aa */ STR R2, [SP] \n\
/* 0801a2ac */ STR R4, [SP, 0x4] \n\
/* 0801a2ae */ STR R4, [SP, 0x8] \n\
/* 0801a2b0 */ STR R4, [SP, 0xC] \n\
/* 0801a2b2 */ STR R4, [SP, 0x10] \n\
/* 0801a2b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a2b6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801a2b8 */ BL func_0804d160 \n\
/* 0801a2bc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801a2be */ LDR R0, [R5] \n\
/* 0801a2c0 */ LSLS R1, R1, 0x10 \n\
/* 0801a2c2 */ ASRS R1, R1, 0x10 \n\
/* 0801a2c4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0801a2c6 */ BL func_0804d8c4 \n\
 \n\
branch_0801a2ca: \n\
/* 0801a2ca */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0801a2cc */ LSLS R0, R0, 0x2 \n\
/* 0801a2ce */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801a2d0 */ BL func_0800c660 \n\
/* 0801a2d4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801a2d6 */ LDR R0, [R6] \n\
/* 0801a2d8 */ STR R1, [R0, 0x4] \n\
/* 0801a2da */ LDR R0, =D_03005380 \n\
/* 0801a2dc */ LDR R0, [R0] \n\
/* 0801a2de */ LDR R2, =epilogue_scene_objects \n\
/* 0801a2e0 */ LDR R3, =D_0300558c \n\
/* 0801a2e2 */ LDR R3, [R3] \n\
/* 0801a2e4 */ BL import_all_scene_objects \n\
/* 0801a2e8 */ BL func_0801a174 \n\
/* 0801a2ec */ LDR R1, [R6] \n\
/* 0801a2ee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a2f0 */ STR R0, [R1, 0x8] \n\
 \n\
branch_0801a2f2: \n\
/* 0801a2f2 */ ADD SP, 0x14 \n\
/* 0801a2f4 */ POP {R4-R6} \n\
/* 0801a2f6 */ POP {R0} \n\
/* 0801a2f8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
