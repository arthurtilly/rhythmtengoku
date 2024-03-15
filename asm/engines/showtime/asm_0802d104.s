asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d104 \n\
/* 0802d104 */ PUSH {R4-R7, LR} \n\
/* 0802d106 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802d108 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802d10a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802d10c */ PUSH {R5-R7} \n\
/* 0802d10e */ SUB SP, 0x14 \n\
/* 0802d110 */ LDR R6, =gCurrentEngineData \n\
/* 0802d112 */ LDR R0, [R6] \n\
/* 0802d114 */ MOVS R1, 0xB4 @ Set R1 to 0xB4 \n\
/* 0802d116 */ LSLS R1, R1, 0x1 \n\
/* 0802d118 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d11a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d11c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802d11e */ STR R2, [R0] \n\
/* 0802d120 */ LDR R5, =gSpriteHandler \n\
/* 0802d122 */ LDR R0, [R5] \n\
/* 0802d124 */ LDR R1, =anim_showtime_monkey_beat2 \n\
/* 0802d126 */ MOVS R3, 0x88 @ Set R3 to 0x88 \n\
/* 0802d128 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0802d12a */ STR R3, [SP] \n\
/* 0802d12c */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0802d12e */ LSLS R2, R2, 0x7 \n\
/* 0802d130 */ STR R2, [SP, 0x4] \n\
/* 0802d132 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802d134 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802d136 */ STR R3, [SP, 0x8] \n\
/* 0802d138 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802d13a */ STR R2, [SP, 0xC] \n\
/* 0802d13c */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 0802d13e */ STR R7, [SP, 0x10] \n\
/* 0802d140 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d142 */ MOVS R3, 0x17 @ Set R3 to 0x17 \n\
/* 0802d144 */ BL sprite_create \n\
/* 0802d148 */ LDR R1, [R6] \n\
/* 0802d14a */ MOVS R4, 0xB0 @ Set R4 to 0xB0 \n\
/* 0802d14c */ LSLS R4, R4, 0x1 \n\
/* 0802d14e */ ADDS R2, R1, R4 @ Set R2 to R1 + R4 \n\
/* 0802d150 */ STRH R0, [R2] \n\
/* 0802d152 */ MOVS R3, 0xB6 @ Set R3 to 0xB6 \n\
/* 0802d154 */ LSLS R3, R3, 0x1 \n\
/* 0802d156 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0802d158 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802d15a */ STR R0, [R1] \n\
/* 0802d15c */ LDR R0, [R5] \n\
/* 0802d15e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d160 */ LDRSH R1, [R2, R3] \n\
/* 0802d162 */ LDR R2, =func_0802d0b8 \n\
/* 0802d164 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d166 */ BL sprite_set_callback \n\
/* 0802d16a */ LDR R0, [R5] \n\
/* 0802d16c */ LDR R1, [R6] \n\
/* 0802d16e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d170 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d172 */ LDRSH R1, [R1, R2] \n\
/* 0802d174 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0802d176 */ BL sprite_set_anim_cel \n\
/* 0802d17a */ LDR R0, [R5] \n\
/* 0802d17c */ LDR R1, [R6] \n\
/* 0802d17e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d180 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d182 */ LDRSH R1, [R1, R3] \n\
/* 0802d184 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d186 */ BL sprite_set_anim_speed \n\
/* 0802d18a */ LDR R0, [R5] \n\
/* 0802d18c */ LDR R1, =anim_showtime_launcher \n\
/* 0802d18e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802d190 */ STR R2, [SP] \n\
/* 0802d192 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0802d194 */ LSLS R3, R3, 0x7 \n\
/* 0802d196 */ STR R3, [SP, 0x4] \n\
/* 0802d198 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802d19a */ STR R2, [SP, 0x8] \n\
/* 0802d19c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802d19e */ STR R3, [SP, 0xC] \n\
/* 0802d1a0 */ STR R7, [SP, 0x10] \n\
/* 0802d1a2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d1a4 */ MOVS R3, 0x17 @ Set R3 to 0x17 \n\
/* 0802d1a6 */ BL sprite_create \n\
/* 0802d1aa */ LDR R1, [R6] \n\
/* 0802d1ac */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0802d1ae */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d1b0 */ STRH R0, [R1] \n\
/* 0802d1b2 */ LDR R0, [R5] \n\
/* 0802d1b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d1b6 */ LDRSH R1, [R1, R2] \n\
/* 0802d1b8 */ LDR R2, =func_0802d0dc \n\
/* 0802d1ba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d1bc */ BL sprite_set_callback \n\
/* 0802d1c0 */ LDR R0, [R5] \n\
/* 0802d1c2 */ LDR R1, [R6] \n\
/* 0802d1c4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d1c6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d1c8 */ LDRSH R1, [R1, R3] \n\
/* 0802d1ca */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802d1cc */ BL sprite_set_anim_cel \n\
/* 0802d1d0 */ LDR R0, [R5] \n\
/* 0802d1d2 */ LDR R1, [R6] \n\
/* 0802d1d4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d1d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d1d8 */ LDRSH R1, [R1, R2] \n\
/* 0802d1da */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d1dc */ BL sprite_set_anim_speed \n\
/* 0802d1e0 */ LDR R0, [R5] \n\
/* 0802d1e2 */ LDR R1, =anim_showtime_ball \n\
/* 0802d1e4 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0802d1e6 */ STR R2, [SP] \n\
/* 0802d1e8 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0802d1ea */ LSLS R3, R3, 0x7 \n\
/* 0802d1ec */ STR R3, [SP, 0x4] \n\
/* 0802d1ee */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802d1f0 */ STR R2, [SP, 0x8] \n\
/* 0802d1f2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802d1f4 */ STR R3, [SP, 0xC] \n\
/* 0802d1f6 */ STR R3, [SP, 0x10] \n\
/* 0802d1f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d1fa */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802d1fc */ BL sprite_create \n\
/* 0802d200 */ LDR R1, [R6] \n\
/* 0802d202 */ MOVS R2, 0xB2 @ Set R2 to 0xB2 \n\
/* 0802d204 */ LSLS R2, R2, 0x1 \n\
/* 0802d206 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d208 */ STRH R0, [R1] \n\
/* 0802d20a */ LDR R0, [R5] \n\
/* 0802d20c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d20e */ LDRSH R1, [R1, R3] \n\
/* 0802d210 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0802d212 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802d214 */ BL sprite_set_x_y \n\
/* 0802d218 */ LDR R0, [R6] \n\
/* 0802d21a */ MOVS R1, 0xB8 @ Set R1 to 0xB8 \n\
/* 0802d21c */ LSLS R1, R1, 0x1 \n\
/* 0802d21e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d220 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802d222 */ STRH R2, [R0] \n\
/* 0802d224 */ ADD SP, 0x14 \n\
/* 0802d226 */ POP {R3-R5} \n\
/* 0802d228 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802d22a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802d22c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802d22e */ POP {R4-R7} \n\
/* 0802d230 */ POP {R0} \n\
/* 0802d232 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
