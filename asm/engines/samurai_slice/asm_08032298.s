asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032298 \n\
/* 08032298 */ PUSH {R4, LR} \n\
/* 0803229a */ LDR R4, =gCurrentEngineData \n\
/* 0803229c */ LDR R0, [R4] \n\
/* 0803229e */ ADDS R0, 0x89 @ Add 0x89 to R0 \n\
/* 080322a0 */ LDRB R0, [R0] \n\
/* 080322a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080322a4 */ BNE branch_080322bc \n\
/* 080322a6 */ BL get_beatscript_tempo \n\
/* 080322aa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080322ac */ LDR R4, [R4] \n\
/* 080322ae */ ADDS R4, 0x84 @ Add 0x84 to R4 \n\
/* 080322b0 */ LSLS R0, R1, 0x1 \n\
/* 080322b2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080322b4 */ LSLS R0, R0, 0x3 \n\
/* 080322b6 */ B branch_080322c6 \n\
\n\
.ltorg \n\
 \n\
branch_080322bc: \n\
/* 080322bc */ BL get_beatscript_tempo \n\
/* 080322c0 */ LDR R4, [R4] \n\
/* 080322c2 */ ADDS R4, 0x84 @ Add 0x84 to R4 \n\
/* 080322c4 */ LSLS R0, R0, 0x6 \n\
 \n\
branch_080322c6: \n\
/* 080322c6 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 080322c8 */ BL __udivsi3 \n\
/* 080322cc */ LDR R1, [R4] \n\
/* 080322ce */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080322d0 */ STR R1, [R4] \n\
/* 080322d2 */ LDR R3, =gCurrentEngineData \n\
/* 080322d4 */ LDR R1, [R3] \n\
/* 080322d6 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080322d8 */ ADDS R4, 0x84 @ Add 0x84 to R4 \n\
/* 080322da */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080322dc */ ADDS R0, 0x88 @ Add 0x88 to R0 \n\
/* 080322de */ LDRB R0, [R0] \n\
/* 080322e0 */ LSLS R2, R0, 0x8 \n\
/* 080322e2 */ LDR R0, [R4] \n\
/* 080322e4 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 080322e6 */ BLT branch_080322f0 \n\
/* 080322e8 */ STR R2, [R4] \n\
/* 080322ea */ ADDS R1, 0x89 @ Add 0x89 to R1 \n\
/* 080322ec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080322ee */ STRB R0, [R1] \n\
 \n\
branch_080322f0: \n\
/* 080322f0 */ LDR R2, =D_03004b10 \n\
/* 080322f2 */ LDR R4, [R3] \n\
/* 080322f4 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080322f6 */ ADDS R3, 0x84 @ Add 0x84 to R3 \n\
/* 080322f8 */ LDR R1, [R3] \n\
/* 080322fa */ ASRS R1, R1, 0x8 \n\
/* 080322fc */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080322fe */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08032300 */ LSLS R0, R0, 0x8 \n\
/* 08032302 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08032304 */ ADDS R2, 0x4E @ Add 0x4E to R2 \n\
/* 08032306 */ STRH R0, [R2] \n\
/* 08032308 */ MOVS R1, 0xF1 @ Set R1 to 0xF1 \n\
/* 0803230a */ LSLS R1, R1, 0x1 \n\
/* 0803230c */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 0803230e */ LDRH R0, [R0] \n\
/* 08032310 */ LDR R2, [R3] \n\
/* 08032312 */ ASRS R2, R2, 0x8 \n\
/* 08032314 */ LSLS R1, R2, 0x1 \n\
/* 08032316 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08032318 */ LSLS R1, R1, 0x12 \n\
/* 0803231a */ LSRS R1, R1, 0x10 \n\
/* 0803231c */ BL scene_set_music_track_volume \n\
/* 08032320 */ POP {R4} \n\
/* 08032322 */ POP {R0} \n\
/* 08032324 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
