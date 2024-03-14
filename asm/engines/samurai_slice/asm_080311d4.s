asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_cue_update \n\
/* 080311d4 */ PUSH {R4-R7, LR} \n\
/* 080311d6 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080311d8 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080311da */ PUSH {R6, R7} \n\
/* 080311dc */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080311de */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 080311e0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080311e2 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 080311e4 */ BL ticks_to_frames \n\
/* 080311e8 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 080311ea */ BLS branch_080311f0 \n\
/* 080311ec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080311ee */ B branch_08031296 \n\
 \n\
branch_080311f0: \n\
/* 080311f0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080311f2 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080311f4 */ LDR R7, =gCurrentEngineData \n\
/* 080311f6 */ LDR R0, [R7] \n\
/* 080311f8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080311fa */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080311fc */ LDRB R1, [R5, 0x2] \n\
/* 080311fe */ MOVS R0, 0x34 @ Set R0 to 0x34 \n\
/* 08031200 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08031202 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08031204 */ LDRB R0, [R5, 0x1] \n\
/* 08031206 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08031208 */ BNE branch_08031294 \n\
/* 0803120a */ LDRB R0, [R5] \n\
/* 0803120c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803120e */ BEQ branch_08031294 \n\
/* 08031210 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 08031212 */ BL ticks_to_frames \n\
/* 08031216 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08031218 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0803121a */ BCC branch_08031294 \n\
/* 0803121c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803121e */ STRB R0, [R5, 0x1] \n\
/* 08031220 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08031222 */ STRB R0, [R4, 0x4] \n\
/* 08031224 */ LDR R0, =0xfffffa00 \n\
/* 08031226 */ STR R0, [R4, 0x2C] \n\
/* 08031228 */ LDR R5, =gSpriteHandler \n\
/* 0803122a */ LDR R0, [R5] \n\
/* 0803122c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803122e */ LDRSH R1, [R4, R2] \n\
/* 08031230 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08031232 */ BL sprite_set_z \n\
/* 08031236 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08031238 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0803123a */ LDRB R0, [R0] \n\
/* 0803123c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803123e */ BHI branch_0803124c \n\
/* 08031240 */ LDR R0, [R5] \n\
/* 08031242 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031244 */ LDRSH R1, [R4, R2] \n\
/* 08031246 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031248 */ BL sprite_set_anim_cel \n\
 \n\
branch_0803124c: \n\
/* 0803124c */ LDR R0, [R7] \n\
/* 0803124e */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08031250 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08031252 */ STRB R1, [R0] \n\
/* 08031254 */ LDR R2, [R7] \n\
/* 08031256 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08031258 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0803125a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803125c */ STR R1, [R0] \n\
/* 0803125e */ LDR R0, =D_03004b10 \n\
/* 08031260 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08031262 */ LSLS R1, R1, 0x5 \n\
/* 08031264 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08031266 */ STRH R1, [R0] \n\
/* 08031268 */ MOVS R1, 0xF1 @ Set R1 to 0xF1 \n\
/* 0803126a */ LSLS R1, R1, 0x1 \n\
/* 0803126c */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0803126e */ LDRH R0, [R0] \n\
/* 08031270 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08031272 */ BL scene_set_music_track_volume \n\
/* 08031276 */ LDR R1, [R7] \n\
/* 08031278 */ MOVS R2, 0xEC @ Set R2 to 0xEC \n\
/* 0803127a */ LSLS R2, R2, 0x1 \n\
/* 0803127c */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803127e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08031280 */ STRH R2, [R0] \n\
/* 08031282 */ LDR R0, [R5] \n\
/* 08031284 */ MOVS R2, 0xED @ Set R2 to 0xED \n\
/* 08031286 */ LSLS R2, R2, 0x1 \n\
/* 08031288 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803128a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803128c */ LDRSH R1, [R1, R2] \n\
/* 0803128e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031290 */ BL sprite_set_visible \n\
 \n\
branch_08031294: \n\
/* 08031294 */ MOV R0, R9 @ Set R0 to R9 \n\
 \n\
branch_08031296: \n\
/* 08031296 */ POP {R3, R4} \n\
/* 08031298 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803129a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803129c */ POP {R4-R7} \n\
/* 0803129e */ POP {R1} \n\
/* 080312a0 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
