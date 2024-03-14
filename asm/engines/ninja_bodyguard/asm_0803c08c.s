asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c08c \n\
/* 0803c08c */ PUSH {R4-R7, LR} \n\
/* 0803c08e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803c090 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803c092 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803c094 */ PUSH {R5-R7} \n\
/* 0803c096 */ SUB SP, 0xC \n\
/* 0803c098 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0803c09a */ LDR R6, =gCurrentEngineData \n\
/* 0803c09c */ LDR R1, [R6] \n\
/* 0803c09e */ LDR R2, =0x2da \n\
/* 0803c0a0 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803c0a2 */ MOVS R3, 0xB6 @ Set R3 to 0xB6 \n\
/* 0803c0a4 */ LSLS R3, R3, 0x2 \n\
/* 0803c0a6 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803c0a8 */ LDRH R0, [R0] \n\
/* 0803c0aa */ LDRH R4, [R1] \n\
/* 0803c0ac */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803c0ae */ BL __umodsi3 \n\
/* 0803c0b2 */ LSLS R0, R0, 0x10 \n\
/* 0803c0b4 */ LSRS R5, R0, 0x10 \n\
/* 0803c0b6 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0803c0b8 */ BCS branch_0803c170 \n\
/* 0803c0ba */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803c0bc */ BL ninja_get_anim \n\
/* 0803c0c0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803c0c2 */ LDR R4, =gSpriteHandler \n\
/* 0803c0c4 */ LDR R0, [R4] \n\
/* 0803c0c6 */ LDR R1, [R6] \n\
/* 0803c0c8 */ LSLS R3, R5, 0x1 \n\
/* 0803c0ca */ MOVS R4, 0xB7 @ Set R4 to 0xB7 \n\
/* 0803c0cc */ LSLS R4, R4, 0x2 \n\
/* 0803c0ce */ MOV R10, R4 @ Set R10 to R4 \n\
/* 0803c0d0 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0803c0d2 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803c0d4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c0d6 */ LDRSH R1, [R1, R3] \n\
/* 0803c0d8 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0803c0da */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803c0dc */ STR R4, [SP] \n\
/* 0803c0de */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803c0e0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803c0e2 */ STR R3, [SP, 0x4] \n\
/* 0803c0e4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c0e6 */ STR R3, [SP, 0x8] \n\
/* 0803c0e8 */ BL sprite_set_anim \n\
/* 0803c0ec */ LDR R1, =s_ninja_yumi_seqData \n\
/* 0803c0ee */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0803c0f0 */ BL play_sound_in_player \n\
/* 0803c0f4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803c0f6 */ LDR R0, [R6] \n\
/* 0803c0f8 */ MOVS R4, 0xBC @ Set R4 to 0xBC \n\
/* 0803c0fa */ LSLS R4, R4, 0x2 \n\
/* 0803c0fc */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803c0fe */ LDRH R1, [R0] \n\
/* 0803c100 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803c102 */ BL set_soundplayer_volume \n\
/* 0803c106 */ LDR R0, [R6] \n\
/* 0803c108 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803c10a */ LDRH R1, [R0] \n\
/* 0803c10c */ LSLS R1, R1, 0x11 \n\
/* 0803c10e */ MOVS R4, 0xFE @ Set R4 to 0xFE \n\
/* 0803c110 */ LSLS R4, R4, 0x18 \n\
/* 0803c112 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803c114 */ ASRS R1, R1, 0x10 \n\
/* 0803c116 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803c118 */ BL set_soundplayer_pitch \n\
/* 0803c11c */ LDR R1, [R6] \n\
/* 0803c11e */ LDR R0, =0x2da \n\
/* 0803c120 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0803c122 */ LDRH R0, [R2] \n\
/* 0803c124 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803c126 */ STRH R0, [R2] \n\
/* 0803c128 */ MOVS R3, 0xB6 @ Set R3 to 0xB6 \n\
/* 0803c12a */ LSLS R3, R3, 0x2 \n\
/* 0803c12c */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803c12e */ LSLS R0, R0, 0x10 \n\
/* 0803c130 */ LSRS R0, R0, 0x10 \n\
/* 0803c132 */ LDRH R4, [R1] \n\
/* 0803c134 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0803c136 */ BCC branch_0803c170 \n\
/* 0803c138 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0803c13a */ BNE branch_0803c170 \n\
/* 0803c13c */ LDRH R0, [R2] \n\
/* 0803c13e */ LDRH R1, [R1] \n\
/* 0803c140 */ BL __umodsi3 \n\
/* 0803c144 */ LSLS R0, R0, 0x10 \n\
/* 0803c146 */ LSRS R5, R0, 0x10 \n\
/* 0803c148 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0803c14a */ BL ninja_get_anim \n\
/* 0803c14e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803c150 */ LDR R1, =gSpriteHandler \n\
/* 0803c152 */ LDR R0, [R1] \n\
/* 0803c154 */ LDR R1, [R6] \n\
/* 0803c156 */ LSLS R3, R5, 0x1 \n\
/* 0803c158 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0803c15a */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803c15c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c15e */ LDRSH R1, [R1, R3] \n\
/* 0803c160 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0803c162 */ STR R4, [SP] \n\
/* 0803c164 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803c166 */ STR R3, [SP, 0x4] \n\
/* 0803c168 */ STR R7, [SP, 0x8] \n\
/* 0803c16a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c16c */ BL sprite_set_anim \n\
 \n\
branch_0803c170: \n\
/* 0803c170 */ ADD SP, 0xC \n\
/* 0803c172 */ POP {R3-R5} \n\
/* 0803c174 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803c176 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803c178 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803c17a */ POP {R4-R7} \n\
/* 0803c17c */ POP {R0} \n\
/* 0803c17e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
