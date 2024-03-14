asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804016c \n\
/* 0804016c */ PUSH {R4-R7, LR} \n\
/* 0804016e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08040170 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08040172 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08040174 */ PUSH {R5-R7} \n\
/* 08040176 */ SUB SP, 0xC \n\
/* 08040178 */ LSLS R0, R0, 0x18 \n\
/* 0804017a */ LSRS R5, R0, 0x18 \n\
/* 0804017c */ LDR R2, =gCurrentEngineData \n\
/* 0804017e */ LDR R1, [R2] \n\
/* 08040180 */ LSLS R0, R5, 0x2 \n\
/* 08040182 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08040184 */ LSLS R4, R0, 0x2 \n\
/* 08040186 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08040188 */ LDRB R3, [R1, 0x6] \n\
/* 0804018a */ SUBS R0, R3, 0x2 @ Set R0 to R3 - 0x2 \n\
/* 0804018c */ LSLS R0, R0, 0x18 \n\
/* 0804018e */ LSRS R0, R0, 0x18 \n\
/* 08040190 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 08040192 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08040194 */ BLS branch_08040198 \n\
/* 08040196 */ B branch_080402fa \n\
 \n\
branch_08040198: \n\
/* 08040198 */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 0804019a */ BNE branch_080401a0 \n\
/* 0804019c */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0804019e */ STRB R0, [R1, 0x6] \n\
 \n\
branch_080401a0: \n\
/* 080401a0 */ LDR R0, [R7] \n\
/* 080401a2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080401a4 */ LDRB R0, [R0, 0x15] \n\
/* 080401a6 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 080401a8 */ BLS branch_080401ac \n\
/* 080401aa */ B branch_080402fa \n\
 \n\
branch_080401ac: \n\
/* 080401ac */ LSLS R0, R0, 0x2 \n\
/* 080401ae */ LDR R1, =jtbl_080401c0 \n\
/* 080401b0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080401b2 */ LDR R0, [R0] \n\
/* 080401b4 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_080401c0: \n\
.word jump_080401d8 \n\
.word jump_080401ea \n\
.word jump_08040250 \n\
.word jump_0804029c \n\
.word jump_08040250 \n\
.word jump_0804029c \n\
jump_080401d8: \n\
/* 080401d8 */ LDR R1, [R7] \n\
/* 080401da */ LSLS R3, R5, 0x2 \n\
/* 080401dc */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 080401de */ LSLS R3, R3, 0x2 \n\
/* 080401e0 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080401e2 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080401e4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080401e6 */ STRB R0, [R1, 0x15] \n\
/* 080401e8 */ B branch_0804025e \n\
jump_080401ea: \n\
/* 080401ea */ LDR R1, [R7] \n\
/* 080401ec */ LSLS R4, R5, 0x2 \n\
/* 080401ee */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 080401f0 */ LSLS R4, R4, 0x2 \n\
/* 080401f2 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080401f4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080401f6 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080401f8 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080401fa */ STRB R0, [R1, 0x15] \n\
/* 080401fc */ LDR R1, =gSpriteHandler \n\
/* 080401fe */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08040200 */ LDR R0, [R1] \n\
/* 08040202 */ LDR R2, [R7] \n\
/* 08040204 */ ADDS R5, R2, R4 @ Set R5 to R2 + R4 \n\
/* 08040206 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08040208 */ LDRSH R1, [R5, R3] \n\
/* 0804020a */ LDR R6, =tram_pauline_anim_table \n\
/* 0804020c */ LDRB R3, [R2] \n\
/* 0804020e */ LSLS R2, R3, 0x1 \n\
/* 08040210 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08040212 */ LSLS R2, R2, 0x3 \n\
/* 08040214 */ ADDS R2, 0x12 @ Add 0x12 to R2 \n\
/* 08040216 */ LDRB R5, [R5, 0x15] \n\
/* 08040218 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0804021a */ LSLS R2, R2, 0x2 \n\
/* 0804021c */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 0804021e */ LDR R2, [R2] \n\
/* 08040220 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08040222 */ STR R3, [SP] \n\
/* 08040224 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08040226 */ STR R3, [SP, 0x4] \n\
/* 08040228 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804022a */ STR R3, [SP, 0x8] \n\
/* 0804022c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804022e */ BL sprite_set_anim \n\
/* 08040232 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08040234 */ LDR R0, [R1] \n\
/* 08040236 */ LDR R1, [R7] \n\
/* 08040238 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0804023a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0804023c */ LDRSH R1, [R1, R2] \n\
/* 0804023e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040240 */ BL sprite_set_base_palette \n\
/* 08040244 */ B branch_080402fa \n\
\n\
.ltorg \n\
jump_08040250: \n\
/* 08040250 */ LDR R0, [R7] \n\
/* 08040252 */ LSLS R3, R5, 0x2 \n\
/* 08040254 */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 08040256 */ LSLS R3, R3, 0x2 \n\
/* 08040258 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804025a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0804025c */ STRB R6, [R0, 0x15] \n\
 \n\
branch_0804025e: \n\
/* 0804025e */ LDR R0, =gSpriteHandler \n\
/* 08040260 */ LDR R0, [R0] \n\
/* 08040262 */ LDR R2, [R7] \n\
/* 08040264 */ ADDS R3, R2, R3 @ Set R3 to R2 + R3 \n\
/* 08040266 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 08040268 */ LDRSH R1, [R3, R4] \n\
/* 0804026a */ LDR R5, =tram_pauline_anim_table \n\
/* 0804026c */ LDRB R4, [R2] \n\
/* 0804026e */ LSLS R2, R4, 0x1 \n\
/* 08040270 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08040272 */ LSLS R2, R2, 0x3 \n\
/* 08040274 */ ADDS R2, 0x12 @ Add 0x12 to R2 \n\
/* 08040276 */ LDRB R3, [R3, 0x15] \n\
/* 08040278 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0804027a */ LSLS R2, R2, 0x2 \n\
/* 0804027c */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0804027e */ LDR R2, [R2] \n\
/* 08040280 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08040282 */ STR R3, [SP] \n\
/* 08040284 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08040286 */ STR R3, [SP, 0x4] \n\
/* 08040288 */ STR R6, [SP, 0x8] \n\
/* 0804028a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804028c */ BL sprite_set_anim \n\
/* 08040290 */ B branch_080402fa \n\
\n\
.ltorg \n\
jump_0804029c: \n\
/* 0804029c */ LDR R0, [R7] \n\
/* 0804029e */ LSLS R4, R5, 0x2 \n\
/* 080402a0 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 080402a2 */ LSLS R4, R4, 0x2 \n\
/* 080402a4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080402a6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080402a8 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 080402aa */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080402ac */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080402ae */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080402b0 */ STRB R3, [R0, 0x15] \n\
/* 080402b2 */ LDR R0, =gSpriteHandler \n\
/* 080402b4 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080402b6 */ LDR R0, [R0] \n\
/* 080402b8 */ LDR R2, [R7] \n\
/* 080402ba */ ADDS R5, R2, R4 @ Set R5 to R2 + R4 \n\
/* 080402bc */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080402be */ LDRSH R1, [R5, R3] \n\
/* 080402c0 */ LDR R6, =tram_pauline_anim_table \n\
/* 080402c2 */ LDRB R3, [R2] \n\
/* 080402c4 */ LSLS R2, R3, 0x1 \n\
/* 080402c6 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080402c8 */ LSLS R2, R2, 0x3 \n\
/* 080402ca */ ADDS R2, 0x12 @ Add 0x12 to R2 \n\
/* 080402cc */ LDRB R5, [R5, 0x15] \n\
/* 080402ce */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 080402d0 */ LSLS R2, R2, 0x2 \n\
/* 080402d2 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 080402d4 */ LDR R2, [R2] \n\
/* 080402d6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080402d8 */ STR R3, [SP] \n\
/* 080402da */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080402dc */ STR R3, [SP, 0x4] \n\
/* 080402de */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080402e0 */ STR R3, [SP, 0x8] \n\
/* 080402e2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080402e4 */ BL sprite_set_anim \n\
/* 080402e8 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080402ea */ LDR R0, [R1] \n\
/* 080402ec */ LDR R1, [R7] \n\
/* 080402ee */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080402f0 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080402f2 */ LDRSH R1, [R1, R2] \n\
/* 080402f4 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 080402f6 */ BL sprite_set_base_palette \n\
 \n\
branch_080402fa: \n\
/* 080402fa */ ADD SP, 0xC \n\
/* 080402fc */ POP {R3-R5} \n\
/* 080402fe */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08040300 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08040302 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08040304 */ POP {R4-R7} \n\
/* 08040306 */ POP {R0} \n\
/* 08040308 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
