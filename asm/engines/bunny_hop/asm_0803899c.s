asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803899c \n\
/* 0803899c */ PUSH {R4-R6, LR} \n\
/* 0803899e */ SUB SP, 0xC \n\
/* 080389a0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080389a2 */ LDR R0, =gCurrentEngineData \n\
/* 080389a4 */ LDR R0, [R0] \n\
/* 080389a6 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080389a8 */ ADDS R6, 0x20 @ Add 0x20 to R6 \n\
/* 080389aa */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080389ac */ B branch_080389c0 \n\
\n\
.ltorg \n\
 \n\
branch_080389b4: \n\
/* 080389b4 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 080389b6 */ LSLS R0, R0, 0x18 \n\
/* 080389b8 */ LSRS R1, R0, 0x18 \n\
/* 080389ba */ ADDS R6, 0x20 @ Add 0x20 to R6 \n\
/* 080389bc */ CMP R1, 0x5 @ Compare R1 and 0x5 \n\
/* 080389be */ BHI branch_08038a6c \n\
 \n\
branch_080389c0: \n\
/* 080389c0 */ LDRB R0, [R6, 0x2] \n\
/* 080389c2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080389c4 */ BNE branch_080389b4 \n\
/* 080389c6 */ CMP R1, 0x5 @ Compare R1 and 0x5 \n\
/* 080389c8 */ BHI branch_08038a6c \n\
/* 080389ca */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080389cc */ STRB R0, [R6, 0x2] \n\
/* 080389ce */ STRB R2, [R6, 0x3] \n\
/* 080389d0 */ LSLS R0, R2, 0x18 \n\
/* 080389d2 */ LSRS R0, R0, 0x18 \n\
/* 080389d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080389d6 */ BEQ branch_080389dc \n\
/* 080389d8 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080389da */ BNE branch_080389f0 \n\
 \n\
branch_080389dc: \n\
/* 080389dc */ LDR R0, =gSpriteHandler \n\
/* 080389de */ LDR R0, [R0] \n\
/* 080389e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080389e2 */ LDRSH R1, [R6, R2] \n\
/* 080389e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080389e6 */ BL sprite_set_base_palette \n\
/* 080389ea */ B branch_080389fe \n\
\n\
.ltorg \n\
 \n\
branch_080389f0: \n\
/* 080389f0 */ LDR R0, =gSpriteHandler \n\
/* 080389f2 */ LDR R0, [R0] \n\
/* 080389f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080389f6 */ LDRSH R1, [R6, R2] \n\
/* 080389f8 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080389fa */ BL sprite_set_base_palette \n\
 \n\
branch_080389fe: \n\
/* 080389fe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08038a00 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08038a02 */ STRH R4, [R6, 0xC] \n\
/* 08038a04 */ LDR R0, =0xffffec00 \n\
/* 08038a06 */ STR R0, [R6, 0x4] \n\
/* 08038a08 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08038a0a */ LSLS R0, R0, 0x8 \n\
/* 08038a0c */ STR R0, [R6, 0x8] \n\
/* 08038a0e */ STRB R1, [R6, 0xE] \n\
/* 08038a10 */ STR R4, [R6, 0x14] \n\
/* 08038a12 */ STRH R4, [R6, 0x18] \n\
/* 08038a14 */ STR R4, [R6, 0x1C] \n\
/* 08038a16 */ LDR R5, =gSpriteHandler \n\
/* 08038a18 */ LDR R0, [R5] \n\
/* 08038a1a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038a1c */ LDRSH R1, [R6, R2] \n\
/* 08038a1e */ LDR R3, =bunny_hop_platform_anim \n\
/* 08038a20 */ LDRB R2, [R6, 0x3] \n\
/* 08038a22 */ LSLS R2, R2, 0x2 \n\
/* 08038a24 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08038a26 */ LDR R2, [R2] \n\
/* 08038a28 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08038a2a */ STR R3, [SP] \n\
/* 08038a2c */ STR R4, [SP, 0x4] \n\
/* 08038a2e */ STR R4, [SP, 0x8] \n\
/* 08038a30 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038a32 */ BL sprite_set_anim \n\
/* 08038a36 */ LDR R0, [R5] \n\
/* 08038a38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038a3a */ LDRSH R1, [R6, R2] \n\
/* 08038a3c */ LDR R2, [R6, 0x4] \n\
/* 08038a3e */ LSLS R2, R2, 0x8 \n\
/* 08038a40 */ ASRS R2, R2, 0x10 \n\
/* 08038a42 */ LDR R3, [R6, 0x8] \n\
/* 08038a44 */ LSLS R3, R3, 0x8 \n\
/* 08038a46 */ ASRS R3, R3, 0x10 \n\
/* 08038a48 */ BL sprite_set_x_y \n\
/* 08038a4c */ LDR R0, [R5] \n\
/* 08038a4e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038a50 */ LDRSH R1, [R6, R2] \n\
/* 08038a52 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08038a54 */ BL sprite_set_visible \n\
/* 08038a58 */ LDR R0, [R5] \n\
/* 08038a5a */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08038a5c */ LDRSH R1, [R6, R2] \n\
/* 08038a5e */ LDR R2, =anim_bunny_hop_water_spout_start \n\
/* 08038a60 */ STR R4, [SP] \n\
/* 08038a62 */ STR R4, [SP, 0x4] \n\
/* 08038a64 */ STR R4, [SP, 0x8] \n\
/* 08038a66 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038a68 */ BL sprite_set_anim \n\
 \n\
branch_08038a6c: \n\
/* 08038a6c */ ADD SP, 0xC \n\
/* 08038a6e */ POP {R4-R6} \n\
/* 08038a70 */ POP {R0} \n\
/* 08038a72 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
