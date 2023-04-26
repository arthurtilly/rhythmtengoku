asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032330 \n\
/* 08032330 */ PUSH {R4, R5, LR} \n\
/* 08032332 */ LDR R1, =gCurrentEngineData \n\
/* 08032334 */ LDR R2, [R1] \n\
/* 08032336 */ LDR R3, [R2, 0x7C] \n\
/* 08032338 */ MOVS R4, 0xE9 @ Set R4 to 0xE9 \n\
/* 0803233a */ LSLS R4, R4, 0x1 \n\
/* 0803233c */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 0803233e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08032340 */ LDRSH R0, [R0, R4] \n\
/* 08032342 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08032344 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08032346 */ BEQ branch_08032354 \n\
/* 08032348 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803234a */ LSLS R1, R1, 0x2 \n\
/* 0803234c */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0803234e */ B branch_0803235a \n\
\n\
.ltorg \n\
 \n\
branch_08032354: \n\
/* 08032354 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08032356 */ LSLS R4, R4, 0x4 \n\
/* 08032358 */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
 \n\
branch_0803235a: \n\
/* 0803235a */ STR R0, [R2, 0x7C] \n\
/* 0803235c */ LDR R0, [R5] \n\
/* 0803235e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08032360 */ ADDS R2, 0x80 @ Add 0x80 to R2 \n\
/* 08032362 */ LDR R1, [R2] \n\
/* 08032364 */ MOVS R3, 0xE9 @ Set R3 to 0xE9 \n\
/* 08032366 */ LSLS R3, R3, 0x1 \n\
/* 08032368 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803236a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803236c */ LDRSH R0, [R0, R4] \n\
/* 0803236e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08032370 */ BEQ branch_0803237c \n\
/* 08032372 */ LDR R3, =0xfffffe00 \n\
/* 08032374 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08032376 */ B branch_08032380 \n\
\n\
.ltorg \n\
 \n\
branch_0803237c: \n\
/* 0803237c */ LDR R4, =0xfffff800 \n\
/* 0803237e */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
 \n\
branch_08032380: \n\
/* 08032380 */ STR R0, [R2] \n\
/* 08032382 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 08032384 */ LDR R1, [R4] \n\
/* 08032386 */ LDR R0, [R1, 0x7C] \n\
/* 08032388 */ ASRS R0, R0, 0x8 \n\
/* 0803238a */ CMP R0, 0xEF @ Compare R0 and 0xEF \n\
/* 0803238c */ BLE branch_08032394 \n\
/* 0803238e */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08032390 */ LSLS R0, R0, 0x8 \n\
/* 08032392 */ STR R0, [R1, 0x7C] \n\
 \n\
branch_08032394: \n\
/* 08032394 */ LDR R0, [R4] \n\
/* 08032396 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08032398 */ ADDS R2, 0x80 @ Add 0x80 to R2 \n\
/* 0803239a */ LDR R0, [R2] \n\
/* 0803239c */ ASRS R0, R0, 0x8 \n\
/* 0803239e */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 080323a0 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080323a2 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080323a4 */ BGT branch_080323aa \n\
/* 080323a6 */ LDR R0, =0xffff1000 \n\
/* 080323a8 */ STR R0, [R2] \n\
 \n\
branch_080323aa: \n\
/* 080323aa */ BL get_beatscript_tempo \n\
/* 080323ae */ LDR R1, [R4] \n\
/* 080323b0 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080323b2 */ ADDS R4, 0x84 @ Add 0x84 to R4 \n\
/* 080323b4 */ LSLS R0, R0, 0x8 \n\
/* 080323b6 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 080323b8 */ BL __udivsi3 \n\
/* 080323bc */ LDR R1, [R4] \n\
/* 080323be */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 080323c0 */ STR R1, [R4] \n\
/* 080323c2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080323c4 */ BGT branch_080323ca \n\
/* 080323c6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080323c8 */ STR R0, [R4] \n\
 \n\
branch_080323ca: \n\
/* 080323ca */ LDR R0, [R5] \n\
/* 080323cc */ LDR R2, [R0, 0x7C] \n\
/* 080323ce */ LSLS R2, R2, 0x8 \n\
/* 080323d0 */ ASRS R2, R2, 0x10 \n\
/* 080323d2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080323d4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080323d6 */ BL scene_set_bg_layer_pos \n\
/* 080323da */ LDR R0, [R5] \n\
/* 080323dc */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 080323de */ LDR R2, [R0] \n\
/* 080323e0 */ LSLS R2, R2, 0x8 \n\
/* 080323e2 */ ASRS R2, R2, 0x10 \n\
/* 080323e4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080323e6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080323e8 */ BL scene_set_bg_layer_pos \n\
/* 080323ec */ LDR R2, =D_03004b10 \n\
/* 080323ee */ LDR R0, [R5] \n\
/* 080323f0 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 080323f2 */ LDR R1, [R0] \n\
/* 080323f4 */ ASRS R1, R1, 0x8 \n\
/* 080323f6 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080323f8 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080323fa */ LSLS R0, R0, 0x8 \n\
/* 080323fc */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080323fe */ ADDS R2, 0x4E @ Add 0x4E to R2 \n\
/* 08032400 */ STRH R0, [R2] \n\
/* 08032402 */ LDR R1, [R5] \n\
/* 08032404 */ MOVS R2, 0xF1 @ Set R2 to 0xF1 \n\
/* 08032406 */ LSLS R2, R2, 0x1 \n\
/* 08032408 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803240a */ LDRH R0, [R0] \n\
/* 0803240c */ ADDS R1, 0x84 @ Add 0x84 to R1 \n\
/* 0803240e */ LDR R2, [R1] \n\
/* 08032410 */ ASRS R2, R2, 0x8 \n\
/* 08032412 */ LSLS R1, R2, 0x1 \n\
/* 08032414 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08032416 */ LSLS R1, R1, 0x12 \n\
/* 08032418 */ LSRS R1, R1, 0x10 \n\
/* 0803241a */ BL scene_set_music_track_volume \n\
/* 0803241e */ POP {R4, R5} \n\
/* 08032420 */ POP {R0} \n\
/* 08032422 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
