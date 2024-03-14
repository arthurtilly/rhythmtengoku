asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start showtime_common_beat_animation \n\
/* 0802c0c8 */ PUSH {R4-R7, LR} \n\
/* 0802c0ca */ SUB SP, 0xC \n\
/* 0802c0cc */ LDR R7, =gCurrentEngineData \n\
/* 0802c0ce */ LDR R1, [R7] \n\
/* 0802c0d0 */ MOVS R2, 0xB8 @ Set R2 to 0xB8 \n\
/* 0802c0d2 */ LSLS R2, R2, 0x1 \n\
/* 0802c0d4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802c0d6 */ LDRH R0, [R0] \n\
/* 0802c0d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802c0da */ BNE branch_0802c13a \n\
/* 0802c0dc */ SUBS R2, 0x8 @ Subtract 0x8 from R2 \n\
/* 0802c0de */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802c0e0 */ LDR R6, [R0] \n\
/* 0802c0e2 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802c0e4 */ BNE branch_0802c13a \n\
/* 0802c0e6 */ LDR R4, =gSpriteHandler \n\
/* 0802c0e8 */ LDR R0, [R4] \n\
/* 0802c0ea */ MOVS R5, 0xB0 @ Set R5 to 0xB0 \n\
/* 0802c0ec */ LSLS R5, R5, 0x1 \n\
/* 0802c0ee */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802c0f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c0f2 */ LDRSH R1, [R1, R2] \n\
/* 0802c0f4 */ LDR R2, =anim_showtime_monkey_beat2 \n\
/* 0802c0f6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802c0f8 */ STR R3, [SP] \n\
/* 0802c0fa */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802c0fc */ STR R3, [SP, 0x4] \n\
/* 0802c0fe */ STR R6, [SP, 0x8] \n\
/* 0802c100 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802c102 */ BL sprite_set_anim \n\
/* 0802c106 */ LDR R0, [R4] \n\
/* 0802c108 */ LDR R1, [R7] \n\
/* 0802c10a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802c10c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c10e */ LDRSH R1, [R1, R2] \n\
/* 0802c110 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c112 */ BL sprite_set_anim_cel \n\
/* 0802c116 */ LDR R6, [R4] \n\
/* 0802c118 */ LDR R0, [R7] \n\
/* 0802c11a */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802c11c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802c11e */ LDRSH R4, [R0, R1] \n\
/* 0802c120 */ BL get_beatscript_tempo \n\
/* 0802c124 */ LSLS R0, R0, 0x8 \n\
/* 0802c126 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0802c128 */ BL __udivsi3 \n\
/* 0802c12c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802c12e */ LSLS R2, R2, 0x10 \n\
/* 0802c130 */ LSRS R2, R2, 0x10 \n\
/* 0802c132 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802c134 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802c136 */ BL sprite_set_anim_speed \n\
 \n\
branch_0802c13a: \n\
/* 0802c13a */ ADD SP, 0xC \n\
/* 0802c13c */ POP {R4-R7} \n\
/* 0802c13e */ POP {R0} \n\
/* 0802c140 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
