asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_engine_start \n\
/* 0803d0b4 */ PUSH {R4-R7, LR} \n\
/* 0803d0b6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803d0b8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803d0ba */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803d0bc */ PUSH {R5-R7} \n\
/* 0803d0be */ SUB SP, 0x14 \n\
/* 0803d0c0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803d0c2 */ LDR R6, =gCurrentEngineData \n\
/* 0803d0c4 */ LDR R0, [R6] \n\
/* 0803d0c6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803d0c8 */ STRB R4, [R0, 0x4] \n\
/* 0803d0ca */ BL space_dance_init_gfx1 \n\
/* 0803d0ce */ BL scene_show_obj_layer \n\
/* 0803d0d2 */ STR R5, [SP] \n\
/* 0803d0d4 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0803d0d6 */ STR R0, [SP, 0x4] \n\
/* 0803d0d8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803d0da */ STR R0, [SP, 0x8] \n\
/* 0803d0dc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803d0de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d0e0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d0e2 */ BL scene_set_bg_layer_display \n\
/* 0803d0e6 */ STR R5, [SP] \n\
/* 0803d0e8 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0803d0ea */ STR R0, [SP, 0x4] \n\
/* 0803d0ec */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803d0ee */ STR R0, [SP, 0x8] \n\
/* 0803d0f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803d0f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d0f4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d0f6 */ BL scene_set_bg_layer_display \n\
/* 0803d0fa */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0803d0fc */ BNE branch_0803d104 \n\
/* 0803d0fe */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803d100 */ BL scene_show_bg_layer \n\
 \n\
branch_0803d104: \n\
/* 0803d104 */ LDR R0, [R6] \n\
/* 0803d106 */ LDRB R2, [R0, 0x4] \n\
/* 0803d108 */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 0803d10a */ LSLS R0, R0, 0x2 \n\
/* 0803d10c */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0803d10e */ BNE branch_0803d112 \n\
/* 0803d110 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
 \n\
branch_0803d112: \n\
/* 0803d112 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803d114 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0803d116 */ BNE branch_0803d11a \n\
/* 0803d118 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_0803d11a: \n\
/* 0803d11a */ BL func_0800c660 \n\
/* 0803d11e */ LDR R1, [R6] \n\
/* 0803d120 */ STR R0, [R1] \n\
/* 0803d122 */ LDR R1, =D_0805a8b8 \n\
/* 0803d124 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803d126 */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0803d128 */ BL bmp_font_obj_print_l \n\
/* 0803d12c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d12e */ LDR R4, =D_03005380 \n\
/* 0803d130 */ LDR R0, [R4] \n\
/* 0803d132 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0803d134 */ STR R2, [SP] \n\
/* 0803d136 */ STR R5, [SP, 0x4] \n\
/* 0803d138 */ STR R5, [SP, 0x8] \n\
/* 0803d13a */ STR R5, [SP, 0xC] \n\
/* 0803d13c */ STR R5, [SP, 0x10] \n\
/* 0803d13e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d140 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803d142 */ BL func_0804d160 \n\
/* 0803d146 */ LDR R1, [R6] \n\
/* 0803d148 */ STRH R0, [R1, 0x1E] \n\
/* 0803d14a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803d14c */ MOV R10, R4 @ Set R10 to R4 \n\
/* 0803d14e */ MOV R9, R5 @ Set R9 to R5 \n\
/* 0803d150 */ MOV R8, R6 @ Set R8 to R6 \n\
/* 0803d152 */ MOVS R7, 0xA0 @ Set R7 to 0xA0 \n\
/* 0803d154 */ LSLS R7, R7, 0xF \n\
/* 0803d156 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_0803d158: \n\
/* 0803d158 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0803d15a */ BL space_dance_get_anim \n\
/* 0803d15e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d160 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803d162 */ LDR R0, [R2] \n\
/* 0803d164 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803d166 */ STR R3, [SP] \n\
/* 0803d168 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0803d16a */ LSLS R3, R3, 0x7 \n\
/* 0803d16c */ ADDS R2, R6, R3 @ Set R2 to R6 + R3 \n\
/* 0803d16e */ LSLS R2, R2, 0x10 \n\
/* 0803d170 */ LSRS R2, R2, 0x10 \n\
/* 0803d172 */ STR R2, [SP, 0x4] \n\
/* 0803d174 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803d176 */ STR R2, [SP, 0x8] \n\
/* 0803d178 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803d17a */ STR R3, [SP, 0xC] \n\
/* 0803d17c */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803d17e */ STR R2, [SP, 0x10] \n\
/* 0803d180 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d182 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803d184 */ BL func_0804d160 \n\
/* 0803d188 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d18a */ LSLS R1, R1, 0x10 \n\
/* 0803d18c */ LSRS R1, R1, 0x10 \n\
/* 0803d18e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803d190 */ LDR R0, [R3] \n\
/* 0803d192 */ LSLS R4, R5, 0x1 \n\
/* 0803d194 */ ADDS R0, 0x6 @ Add 0x6 to R0 \n\
/* 0803d196 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803d198 */ STRH R1, [R0] \n\
/* 0803d19a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803d19c */ LDR R0, [R2] \n\
/* 0803d19e */ LSLS R1, R1, 0x10 \n\
/* 0803d1a0 */ ASRS R1, R1, 0x10 \n\
/* 0803d1a2 */ ASRS R2, R7, 0x10 \n\
/* 0803d1a4 */ MOVS R3, 0x88 @ Set R3 to 0x88 \n\
/* 0803d1a6 */ BL func_0804d5d4 \n\
/* 0803d1aa */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803d1ac */ LDR R0, [R3] \n\
/* 0803d1ae */ ADDS R0, 0xE @ Add 0xE to R0 \n\
/* 0803d1b0 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803d1b2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803d1b4 */ STRH R1, [R0] \n\
/* 0803d1b6 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 0803d1b8 */ LSLS R2, R2, 0xE \n\
/* 0803d1ba */ ADDS R7, R7, R2 @ Set R7 to R7 + R2 \n\
/* 0803d1bc */ ADDS R6, 0xA @ Add 0xA to R6 \n\
/* 0803d1be */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0803d1c0 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0803d1c2 */ BLS branch_0803d158 \n\
/* 0803d1c4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803d1c6 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0803d1c8 */ BL space_dance_get_anim \n\
/* 0803d1cc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d1ce */ LDR R6, =D_03005380 \n\
/* 0803d1d0 */ LDR R0, [R6] \n\
/* 0803d1d2 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 0803d1d4 */ STR R2, [SP] \n\
/* 0803d1d6 */ LDR R2, =0x47f6 \n\
/* 0803d1d8 */ STR R2, [SP, 0x4] \n\
/* 0803d1da */ STR R5, [SP, 0x8] \n\
/* 0803d1dc */ STR R5, [SP, 0xC] \n\
/* 0803d1de */ STR R5, [SP, 0x10] \n\
/* 0803d1e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d1e2 */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 0803d1e4 */ BL func_0804d160 \n\
/* 0803d1e8 */ LDR R4, =gCurrentEngineData \n\
/* 0803d1ea */ LDR R1, [R4] \n\
/* 0803d1ec */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d1ee */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803d1f0 */ STRH R0, [R1, 0x2C] \n\
/* 0803d1f2 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803d1f4 */ BL space_dance_get_anim \n\
/* 0803d1f8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d1fa */ LDR R0, [R6] \n\
/* 0803d1fc */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0803d1fe */ STR R2, [SP] \n\
/* 0803d200 */ LDR R2, =0x479c \n\
/* 0803d202 */ STR R2, [SP, 0x4] \n\
/* 0803d204 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803d206 */ STR R3, [SP, 0x8] \n\
/* 0803d208 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803d20a */ STR R2, [SP, 0xC] \n\
/* 0803d20c */ STR R5, [SP, 0x10] \n\
/* 0803d20e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d210 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0803d212 */ BL func_0804d160 \n\
/* 0803d216 */ LDR R1, [R4] \n\
/* 0803d218 */ STRH R0, [R1, 0x16] \n\
/* 0803d21a */ LDR R0, [R6] \n\
/* 0803d21c */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 0803d21e */ LDRSH R1, [R1, R3] \n\
/* 0803d220 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 0803d222 */ BL func_0804d648 \n\
/* 0803d226 */ LDR R0, [R4] \n\
/* 0803d228 */ STRH R5, [R0, 0x18] \n\
/* 0803d22a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803d22c */ STRB R1, [R0, 0x1A] \n\
/* 0803d22e */ LDR R0, [R4] \n\
/* 0803d230 */ STRB R1, [R0, 0x1B] \n\
/* 0803d232 */ LDR R0, [R4] \n\
/* 0803d234 */ STRH R5, [R0, 0x1C] \n\
/* 0803d236 */ STR R5, [R0, 0x24] \n\
/* 0803d238 */ STR R5, [R0, 0x20] \n\
/* 0803d23a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d23c */ ADDS R1, 0x29 @ Add 0x29 to R1 \n\
/* 0803d23e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803d240 */ STRB R2, [R1] \n\
/* 0803d242 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0803d244 */ STRB R2, [R0] \n\
/* 0803d246 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0803d248 */ BL space_dance_get_anim \n\
/* 0803d24c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d24e */ LDR R0, [R6] \n\
/* 0803d250 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0803d252 */ STR R2, [SP] \n\
/* 0803d254 */ LDR R2, =0x48c8 \n\
/* 0803d256 */ STR R2, [SP, 0x4] \n\
/* 0803d258 */ STR R5, [SP, 0x8] \n\
/* 0803d25a */ STR R5, [SP, 0xC] \n\
/* 0803d25c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803d25e */ LSLS R2, R2, 0x8 \n\
/* 0803d260 */ STR R2, [SP, 0x10] \n\
/* 0803d262 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d264 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0803d266 */ BL func_0804d160 \n\
/* 0803d26a */ LDR R1, [R4] \n\
/* 0803d26c */ STRH R0, [R1, 0x2E] \n\
/* 0803d26e */ ADDS R1, 0x34 @ Add 0x34 to R1 \n\
/* 0803d270 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803d272 */ STRB R3, [R1] \n\
/* 0803d274 */ LDR R1, [R4] \n\
/* 0803d276 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803d278 */ LSLS R0, R0, 0x1 \n\
/* 0803d27a */ STRH R0, [R1, 0x30] \n\
/* 0803d27c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803d27e */ STRH R0, [R1, 0x32] \n\
/* 0803d280 */ MOVS R0, 0x91 @ Set R0 to 0x91 \n\
/* 0803d282 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803d284 */ BL gameplay_set_input_buttons \n\
/* 0803d288 */ LDR R0, [R4] \n\
/* 0803d28a */ ADDS R0, 0x35 @ Add 0x35 to R0 \n\
/* 0803d28c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803d28e */ STRB R1, [R0] \n\
/* 0803d290 */ LDR R0, [R4] \n\
/* 0803d292 */ STRH R5, [R0, 0x36] \n\
/* 0803d294 */ ADD SP, 0x14 \n\
/* 0803d296 */ POP {R3-R5} \n\
/* 0803d298 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803d29a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803d29c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803d29e */ POP {R4-R7} \n\
/* 0803d2a0 */ POP {R0} \n\
/* 0803d2a2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
