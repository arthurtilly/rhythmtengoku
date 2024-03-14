asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080339bc \n\
/* 080339bc */ PUSH {R4-R7, LR} \n\
/* 080339be */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080339c0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080339c2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080339c4 */ PUSH {R5-R7} \n\
/* 080339c6 */ SUB SP, 0x14 \n\
/* 080339c8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080339ca */ LDR R0, =gCurrentEngineData \n\
/* 080339cc */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080339ce */ LDR R1, [R0] \n\
/* 080339d0 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080339d2 */ ADDS R0, 0x90 @ Add 0x90 to R0 \n\
/* 080339d4 */ LDRB R0, [R0] \n\
/* 080339d6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080339d8 */ BNE branch_080339dc \n\
/* 080339da */ B branch_08033af6 \n\
 \n\
branch_080339dc: \n\
/* 080339dc */ LDRH R0, [R1, 0xC] \n\
/* 080339de */ CMP R0, 0x1F @ Compare R0 and 0x1F \n\
/* 080339e0 */ BLS branch_080339e4 \n\
/* 080339e2 */ B branch_08033af6 \n\
 \n\
branch_080339e4: \n\
/* 080339e4 */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 080339e6 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080339e8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080339ea */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 080339ec */ BL clamp_int32 \n\
/* 080339f0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080339f2 */ LDR R7, =gSpriteHandler \n\
/* 080339f4 */ LDR R0, [R7] \n\
/* 080339f6 */ LDR R1, =anim_rhythm_test_chart_marker \n\
/* 080339f8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080339fa */ ADDS R2, 0x78 @ Add 0x78 to R2 \n\
/* 080339fc */ LSLS R2, R2, 0x10 \n\
/* 080339fe */ ASRS R5, R2, 0x10 \n\
/* 08033a00 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08033a02 */ LDR R2, [R3] \n\
/* 08033a04 */ ADDS R2, 0x8E @ Add 0x8E to R2 \n\
/* 08033a06 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08033a08 */ LDRSH R2, [R2, R3] \n\
/* 08033a0a */ STR R2, [SP] \n\
/* 08033a0c */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08033a0e */ LSLS R2, R2, 0x8 \n\
/* 08033a10 */ STR R2, [SP, 0x4] \n\
/* 08033a12 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08033a14 */ STR R4, [SP, 0x8] \n\
/* 08033a16 */ STR R4, [SP, 0xC] \n\
/* 08033a18 */ STR R4, [SP, 0x10] \n\
/* 08033a1a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033a1c */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08033a1e */ BL sprite_create \n\
/* 08033a22 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08033a24 */ LSLS R1, R1, 0x10 \n\
/* 08033a26 */ LDR R0, [R7] \n\
/* 08033a28 */ LSRS R6, R1, 0x10 \n\
/* 08033a2a */ ASRS R1, R1, 0x10 \n\
/* 08033a2c */ LDR R2, =(D_03004b10 + 0x14) \n\
/* 08033a2e */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08033a30 */ LDR R3, =(D_03004b10 + 0x16) \n\
/* 08033a32 */ BL sprite_set_origin_x_y \n\
/* 08033a36 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08033a38 */ LDR R2, [R3] \n\
/* 08033a3a */ LDRH R1, [R2, 0xC] \n\
/* 08033a3c */ LSLS R1, R1, 0x1 \n\
/* 08033a3e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08033a40 */ ADDS R0, 0xE @ Add 0xE to R0 \n\
/* 08033a42 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08033a44 */ STRH R6, [R0] \n\
/* 08033a46 */ LDRH R0, [R2, 0xC] \n\
/* 08033a48 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08033a4a */ BEQ branch_08033ad4 \n\
/* 08033a4c */ LDR R0, [R7] \n\
/* 08033a4e */ LDR R1, =anim_rhythm_test_chart_line \n\
/* 08033a50 */ ADDS R2, 0x8E @ Add 0x8E to R2 \n\
/* 08033a52 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08033a54 */ LDRSH R2, [R2, R3] \n\
/* 08033a56 */ STR R2, [SP] \n\
/* 08033a58 */ LDR R2, =0x8801 \n\
/* 08033a5a */ STR R2, [SP, 0x4] \n\
/* 08033a5c */ STR R4, [SP, 0x8] \n\
/* 08033a5e */ MOVS R2, 0x17 @ Set R2 to 0x17 \n\
/* 08033a60 */ STR R2, [SP, 0xC] \n\
/* 08033a62 */ STR R4, [SP, 0x10] \n\
/* 08033a64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033a66 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08033a68 */ BL sprite_create \n\
/* 08033a6c */ LSLS R0, R0, 0x10 \n\
/* 08033a6e */ LSRS R0, R0, 0x10 \n\
/* 08033a70 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08033a72 */ LDR R0, [R7] \n\
/* 08033a74 */ LSLS R1, R6, 0x10 \n\
/* 08033a76 */ ASRS R5, R1, 0x10 \n\
/* 08033a78 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08033a7a */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08033a7c */ LDR R3, =(D_03004b10 + 0x16) \n\
/* 08033a7e */ BL sprite_set_origin_x_y \n\
/* 08033a82 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08033a84 */ LDR R0, [R1] \n\
/* 08033a86 */ ADDS R0, 0x8C @ Add 0x8C to R0 \n\
/* 08033a88 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033a8a */ LDRSH R0, [R0, R2] \n\
/* 08033a8c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08033a8e */ SUBS R4, R0, R3 @ Set R4 to R0 - R3 \n\
/* 08033a90 */ LDR R0, [R7] \n\
/* 08033a92 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08033a94 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08033a96 */ BGE branch_08033a9a \n\
/* 08033a98 */ NEGS R2, R4 @ Set R2 to -R4 \n\
 \n\
branch_08033a9a: \n\
/* 08033a9a */ LSLS R2, R2, 0x18 \n\
/* 08033a9c */ ASRS R2, R2, 0x18 \n\
/* 08033a9e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08033aa0 */ BL sprite_set_anim_cel \n\
/* 08033aa4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08033aa6 */ BGE branch_08033ac4 \n\
/* 08033aa8 */ LDR R0, [R7] \n\
/* 08033aaa */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08033aac */ LSLS R2, R2, 0x5 \n\
/* 08033aae */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08033ab0 */ BL sprite_attr_set \n\
/* 08033ab4 */ LDR R0, [R7] \n\
/* 08033ab6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08033ab8 */ ADDS R2, 0x79 @ Add 0x79 to R2 \n\
/* 08033aba */ LSLS R2, R2, 0x10 \n\
/* 08033abc */ ASRS R2, R2, 0x10 \n\
/* 08033abe */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08033ac0 */ BL sprite_set_x \n\
 \n\
branch_08033ac4: \n\
/* 08033ac4 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08033ac6 */ LDR R1, [R0] \n\
/* 08033ac8 */ LDRH R0, [R1, 0xC] \n\
/* 08033aca */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08033acc */ LSLS R0, R0, 0x1 \n\
/* 08033ace */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 08033ad0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08033ad2 */ STRH R6, [R1] \n\
 \n\
branch_08033ad4: \n\
/* 08033ad4 */ LDR R0, =gCurrentEngineData \n\
/* 08033ad6 */ LDR R1, [R0] \n\
/* 08033ad8 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08033ada */ ADDS R0, 0x8C @ Add 0x8C to R0 \n\
/* 08033adc */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08033ade */ STRH R2, [R0] \n\
/* 08033ae0 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08033ae2 */ ADDS R2, 0x8E @ Add 0x8E to R2 \n\
/* 08033ae4 */ LDRH R0, [R2] \n\
/* 08033ae6 */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 08033ae8 */ STRH R0, [R2] \n\
/* 08033aea */ LDRH R0, [R1, 0xC] \n\
/* 08033aec */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08033aee */ STRH R0, [R1, 0xC] \n\
/* 08033af0 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08033af2 */ BL func_08033b34 \n\
 \n\
branch_08033af6: \n\
/* 08033af6 */ ADD SP, 0x14 \n\
/* 08033af8 */ POP {R3-R5} \n\
/* 08033afa */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08033afc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08033afe */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08033b00 */ POP {R4-R7} \n\
/* 08033b02 */ POP {R0} \n\
/* 08033b04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
