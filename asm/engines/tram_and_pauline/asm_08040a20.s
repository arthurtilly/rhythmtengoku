asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_cue_update \n\
/* 08040a20 */ PUSH {R4-R7, LR} \n\
/* 08040a22 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08040a24 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08040a26: \n\
/* 08040a26 */ LDR R0, =gSpriteHandler \n\
/* 08040a28 */ LDR R0, [R0] \n\
/* 08040a2a */ LDR R1, =gCurrentEngineData \n\
/* 08040a2c */ LDR R3, [R1] \n\
/* 08040a2e */ LSLS R2, R5, 0x1 \n\
/* 08040a30 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08040a32 */ ADDS R1, 0x34 @ Add 0x34 to R1 \n\
/* 08040a34 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08040a36 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040a38 */ LDRSH R1, [R1, R2] \n\
/* 08040a3a */ LSLS R4, R5, 0x2 \n\
/* 08040a3c */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 08040a3e */ LSLS R4, R4, 0x2 \n\
/* 08040a40 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08040a42 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 08040a44 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08040a46 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08040a48 */ LDRSH R2, [R2, R7] \n\
/* 08040a4a */ ADDS R3, 0xC @ Add 0xC to R3 \n\
/* 08040a4c */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 08040a4e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08040a50 */ LDRSH R3, [R3, R4] \n\
/* 08040a52 */ BL sprite_set_x_y \n\
/* 08040a56 */ ADDS R0, R5, 0x1 @ Set R0 to R5 + 0x1 \n\
/* 08040a58 */ LSLS R0, R0, 0x18 \n\
/* 08040a5a */ LSRS R5, R0, 0x18 \n\
/* 08040a5c */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 08040a5e */ BLS branch_08040a26 \n\
/* 08040a60 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08040a62 */ BL ticks_to_frames \n\
/* 08040a66 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 08040a68 */ BHI branch_08040a78 \n\
/* 08040a6a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08040a6c */ B branch_08040a7a \n\
\n\
.ltorg \n\
 \n\
branch_08040a78: \n\
/* 08040a78 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08040a7a: \n\
/* 08040a7a */ POP {R4-R7} \n\
/* 08040a7c */ POP {R1} \n\
/* 08040a7e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
