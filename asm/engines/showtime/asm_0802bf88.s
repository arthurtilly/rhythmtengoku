asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start showtime_cue_barely \n\
/* 0802bf88 */ PUSH {R4-R6, LR} \n\
/* 0802bf8a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802bf8c */ PUSH {R6} \n\
/* 0802bf8e */ SUB SP, 0xC \n\
/* 0802bf90 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802bf92 */ LDR R0, [R4, 0x4] \n\
/* 0802bf94 */ BL func_0802cfa4 \n\
/* 0802bf98 */ LDR R0, [R4, 0x4] \n\
/* 0802bf9a */ BL func_0802d8bc \n\
/* 0802bf9e */ LDR R5, =gCurrentEngineData \n\
/* 0802bfa0 */ LDR R1, [R5] \n\
/* 0802bfa2 */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 0802bfa4 */ LSLS R0, R0, 0x1 \n\
/* 0802bfa6 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0802bfa8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802bfaa */ STR R0, [R2] \n\
/* 0802bfac */ LDR R6, =gSpriteHandler \n\
/* 0802bfae */ LDR R0, [R6] \n\
/* 0802bfb0 */ MOVS R4, 0xB0 @ Set R4 to 0xB0 \n\
/* 0802bfb2 */ LSLS R4, R4, 0x1 \n\
/* 0802bfb4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802bfb6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bfb8 */ LDRSH R1, [R1, R2] \n\
/* 0802bfba */ LDR R2, =anim_showtime_monkey_sad_swing \n\
/* 0802bfbc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802bfbe */ STR R3, [SP] \n\
/* 0802bfc0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802bfc2 */ STR R3, [SP, 0x4] \n\
/* 0802bfc4 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802bfc6 */ STR R3, [SP, 0x8] \n\
/* 0802bfc8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802bfca */ BL sprite_set_anim \n\
/* 0802bfce */ LDR R0, [R6] \n\
/* 0802bfd0 */ LDR R1, [R5] \n\
/* 0802bfd2 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802bfd4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bfd6 */ LDRSH R1, [R1, R2] \n\
/* 0802bfd8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bfda */ BL sprite_set_anim_cel \n\
/* 0802bfde */ LDR R0, [R6] \n\
/* 0802bfe0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802bfe2 */ LDR R0, [R5] \n\
/* 0802bfe4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802bfe6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802bfe8 */ LDRSH R4, [R0, R1] \n\
/* 0802bfea */ BL get_beatscript_tempo \n\
/* 0802bfee */ LSLS R0, R0, 0x8 \n\
/* 0802bff0 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0802bff2 */ BL __udivsi3 \n\
/* 0802bff6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802bff8 */ LSLS R2, R2, 0x10 \n\
/* 0802bffa */ LSRS R2, R2, 0x10 \n\
/* 0802bffc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802bffe */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802c000 */ BL sprite_set_anim_speed \n\
/* 0802c004 */ LDR R0, [R6] \n\
/* 0802c006 */ LDR R1, [R5] \n\
/* 0802c008 */ MOVS R4, 0xB1 @ Set R4 to 0xB1 \n\
/* 0802c00a */ LSLS R4, R4, 0x1 \n\
/* 0802c00c */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c00e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c010 */ LDRSH R1, [R1, R2] \n\
/* 0802c012 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c014 */ BL sprite_set_anim_cel \n\
/* 0802c018 */ LDR R6, [R6] \n\
/* 0802c01a */ LDR R0, [R5] \n\
/* 0802c01c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c01e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802c020 */ LDRSH R4, [R0, R1] \n\
/* 0802c022 */ BL get_beatscript_tempo \n\
/* 0802c026 */ LSLS R0, R0, 0x8 \n\
/* 0802c028 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0802c02a */ BL __udivsi3 \n\
/* 0802c02e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802c030 */ LSLS R2, R2, 0x10 \n\
/* 0802c032 */ LSRS R2, R2, 0x10 \n\
/* 0802c034 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802c036 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802c038 */ BL sprite_set_anim_speed \n\
/* 0802c03c */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0802c03e */ BL ticks_to_frames \n\
/* 0802c042 */ LDR R1, [R5] \n\
/* 0802c044 */ MOVS R2, 0xB8 @ Set R2 to 0xB8 \n\
/* 0802c046 */ LSLS R2, R2, 0x1 \n\
/* 0802c048 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802c04a */ STRH R0, [R1] \n\
/* 0802c04c */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0802c04e */ BL ticks_to_frames \n\
/* 0802c052 */ LDR R1, [R5] \n\
/* 0802c054 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0802c056 */ LSLS R2, R2, 0x2 \n\
/* 0802c058 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802c05a */ STR R0, [R1] \n\
/* 0802c05c */ BL beatscript_enable_loops \n\
/* 0802c060 */ ADD SP, 0xC \n\
/* 0802c062 */ POP {R3} \n\
/* 0802c064 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802c066 */ POP {R4-R6} \n\
/* 0802c068 */ POP {R0} \n\
/* 0802c06a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
