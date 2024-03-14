asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022f4c \n\
/* 08022f4c */ PUSH {R4-R6, LR} \n\
/* 08022f4e */ LDR R4, =gCurrentEngineData \n\
/* 08022f50 */ LDR R0, [R4] \n\
/* 08022f52 */ ADDS R0, 0xB0 @ Add 0xB0 to R0 \n\
/* 08022f54 */ LDRH R0, [R0] \n\
/* 08022f56 */ LSRS R0, R0, 0x1 \n\
/* 08022f58 */ BL set_beatscript_tempo \n\
/* 08022f5c */ LDR R0, =0xfffff500 \n\
/* 08022f5e */ BL scene_set_music_pitch \n\
/* 08022f62 */ LDR R0, [R4] \n\
/* 08022f64 */ ADDS R0, 0xB2 @ Add 0xB2 to R0 \n\
/* 08022f66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022f68 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08022f6a */ STRB R1, [R0] \n\
/* 08022f6c */ LDR R0, [R4] \n\
/* 08022f6e */ ADDS R0, 0xB4 @ Add 0xB4 to R0 \n\
/* 08022f70 */ STR R2, [R0] \n\
/* 08022f72 */ MOVS R0, 0x16 @ Set R0 to 0x16 \n\
/* 08022f74 */ BL ticks_to_frames \n\
/* 08022f78 */ LDR R1, [R4] \n\
/* 08022f7a */ ADDS R1, 0xB8 @ Add 0xB8 to R1 \n\
/* 08022f7c */ STR R0, [R1] \n\
/* 08022f7e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08022f80 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
/* 08022f82 */ MOVS R4, 0x14 @ Set R4 to 0x14 \n\
 \n\
branch_08022f84: \n\
/* 08022f84 */ LDR R0, [R6] \n\
/* 08022f86 */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 08022f88 */ LDRB R0, [R1] \n\
/* 08022f8a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08022f8c */ BEQ branch_08022f9c \n\
/* 08022f8e */ LDR R0, =gSpriteHandler \n\
/* 08022f90 */ LDR R0, [R0] \n\
/* 08022f92 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08022f94 */ LDRSH R1, [R1, R2] \n\
/* 08022f96 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022f98 */ BL sprite_set_visible \n\
 \n\
branch_08022f9c: \n\
/* 08022f9c */ ADDS R4, 0x14 @ Add 0x14 to R4 \n\
/* 08022f9e */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08022fa0 */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08022fa2 */ BLS branch_08022f84 \n\
/* 08022fa4 */ POP {R4-R6} \n\
/* 08022fa6 */ POP {R0} \n\
/* 08022fa8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
