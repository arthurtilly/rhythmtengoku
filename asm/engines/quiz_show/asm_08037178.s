asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037178 \n\
/* 08037178 */ PUSH {R4-R6, LR} \n\
/* 0803717a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0803717c */ PUSH {R6} \n\
/* 0803717e */ SUB SP, 0x14 \n\
/* 08037180 */ LDR R0, =gCurrentEngineData \n\
/* 08037182 */ LDR R2, [R0] \n\
/* 08037184 */ LDRB R0, [R2] \n\
/* 08037186 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08037188 */ BNE branch_0803725a \n\
/* 0803718a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803718c */ ADDS R0, 0x4A @ Add 0x4A to R0 \n\
/* 0803718e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08037190 */ STRH R4, [R0] \n\
/* 08037192 */ LDR R0, =D_030046a8 \n\
/* 08037194 */ LDR R0, [R0] \n\
/* 08037196 */ MOVS R1, 0xAC @ Set R1 to 0xAC \n\
/* 08037198 */ LSLS R1, R1, 0x2 \n\
/* 0803719a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803719c */ LDR R1, [R0] \n\
/* 0803719e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080371a0 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 080371a2 */ STRH R1, [R0] \n\
/* 080371a4 */ LDR R0, =gSpriteHandler \n\
/* 080371a6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080371a8 */ LDR R0, [R0] \n\
/* 080371aa */ LDR R1, =anim_quiz_show_current_score_label \n\
/* 080371ac */ MOVS R6, 0x4 @ Set R6 to 0x4 \n\
/* 080371ae */ STR R6, [SP] \n\
/* 080371b0 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 080371b2 */ LSLS R5, R5, 0x4 \n\
/* 080371b4 */ STR R5, [SP, 0x4] \n\
/* 080371b6 */ STR R4, [SP, 0x8] \n\
/* 080371b8 */ STR R4, [SP, 0xC] \n\
/* 080371ba */ STR R4, [SP, 0x10] \n\
/* 080371bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080371be */ MOVS R3, 0xC0 @ Set R3 to 0xC0 \n\
/* 080371c0 */ BL sprite_create \n\
/* 080371c4 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080371c6 */ LDR R0, [R1] \n\
/* 080371c8 */ LDR R1, =anim_quiz_show_high_score_label \n\
/* 080371ca */ STR R6, [SP] \n\
/* 080371cc */ STR R5, [SP, 0x4] \n\
/* 080371ce */ STR R4, [SP, 0x8] \n\
/* 080371d0 */ STR R4, [SP, 0xC] \n\
/* 080371d2 */ STR R4, [SP, 0x10] \n\
/* 080371d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080371d6 */ MOVS R3, 0x3A @ Set R3 to 0x3A \n\
/* 080371d8 */ BL sprite_create \n\
/* 080371dc */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_080371de: \n\
/* 080371de */ LDR R0, =gSpriteHandler \n\
/* 080371e0 */ LDR R0, [R0] \n\
/* 080371e2 */ LSLS R1, R4, 0x3 \n\
/* 080371e4 */ MOVS R3, 0xC0 @ Set R3 to 0xC0 \n\
/* 080371e6 */ SUBS R3, R3, R1 @ Set R3 to R3 - R1 \n\
/* 080371e8 */ LSLS R3, R3, 0x10 \n\
/* 080371ea */ ASRS R3, R3, 0x10 \n\
/* 080371ec */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 080371ee */ STR R1, [SP] \n\
/* 080371f0 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080371f2 */ LSLS R1, R1, 0x4 \n\
/* 080371f4 */ STR R1, [SP, 0x4] \n\
/* 080371f6 */ STR R5, [SP, 0x8] \n\
/* 080371f8 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 080371fa */ STR R1, [SP, 0xC] \n\
/* 080371fc */ STR R5, [SP, 0x10] \n\
/* 080371fe */ LDR R1, =anim_quiz_show_score_num \n\
/* 08037200 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037202 */ BL sprite_create \n\
/* 08037206 */ LDR R1, =gCurrentEngineData \n\
/* 08037208 */ LDR R1, [R1] \n\
/* 0803720a */ LSLS R2, R4, 0x1 \n\
/* 0803720c */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 0803720e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08037210 */ STRH R0, [R1] \n\
/* 08037212 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08037214 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08037216 */ BLS branch_080371de \n\
/* 08037218 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803721a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0803721c: \n\
/* 0803721c */ LDR R0, =gSpriteHandler \n\
/* 0803721e */ LDR R0, [R0] \n\
/* 08037220 */ LSLS R1, R4, 0x3 \n\
/* 08037222 */ MOVS R3, 0x3A @ Set R3 to 0x3A \n\
/* 08037224 */ SUBS R3, R3, R1 @ Set R3 to R3 - R1 \n\
/* 08037226 */ LSLS R3, R3, 0x10 \n\
/* 08037228 */ ASRS R3, R3, 0x10 \n\
/* 0803722a */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0803722c */ STR R1, [SP] \n\
/* 0803722e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08037230 */ LSLS R1, R1, 0x4 \n\
/* 08037232 */ STR R1, [SP, 0x4] \n\
/* 08037234 */ STR R5, [SP, 0x8] \n\
/* 08037236 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08037238 */ STR R1, [SP, 0xC] \n\
/* 0803723a */ STR R5, [SP, 0x10] \n\
/* 0803723c */ LDR R1, =anim_quiz_show_score_num \n\
/* 0803723e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037240 */ BL sprite_create \n\
/* 08037244 */ LDR R1, =gCurrentEngineData \n\
/* 08037246 */ LDR R1, [R1] \n\
/* 08037248 */ LSLS R2, R4, 0x1 \n\
/* 0803724a */ ADDS R1, 0x52 @ Add 0x52 to R1 \n\
/* 0803724c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803724e */ STRH R0, [R1] \n\
/* 08037250 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08037252 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08037254 */ BLS branch_0803721c \n\
/* 08037256 */ BL func_0803709c \n\
 \n\
branch_0803725a: \n\
/* 0803725a */ ADD SP, 0x14 \n\
/* 0803725c */ POP {R3} \n\
/* 0803725e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08037260 */ POP {R4-R6} \n\
/* 08037262 */ POP {R0} \n\
/* 08037264 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
