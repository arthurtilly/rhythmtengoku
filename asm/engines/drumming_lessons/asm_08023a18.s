asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023a18 \n\
/* 08023a18 */ PUSH {R4-R7, LR} \n\
/* 08023a1a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08023a1c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08023a1e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08023a20 */ PUSH {R5-R7} \n\
/* 08023a22 */ SUB SP, 0x14 \n\
/* 08023a24 */ LDR R1, =gCurrentEngineData \n\
/* 08023a26 */ LDR R0, [R1] \n\
/* 08023a28 */ MOVS R2, 0xE6 @ Set R2 to 0xE6 \n\
/* 08023a2a */ LSLS R2, R2, 0x2 \n\
/* 08023a2c */ ADDS R7, R0, R2 @ Set R7 to R0 + R2 \n\
/* 08023a2e */ LDR R0, =gSpriteHandler \n\
/* 08023a30 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08023a32 */ LDR R0, [R0] \n\
/* 08023a34 */ LDR R1, =anim_drum_tanuki_beat \n\
/* 08023a36 */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 08023a38 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08023a3a */ STR R2, [SP] \n\
/* 08023a3c */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 08023a3e */ LSLS R2, R2, 0x7 \n\
/* 08023a40 */ STR R2, [SP, 0x4] \n\
/* 08023a42 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08023a44 */ STR R6, [SP, 0x8] \n\
/* 08023a46 */ MOVS R5, 0x7F @ Set R5 to 0x7F \n\
/* 08023a48 */ STR R5, [SP, 0xC] \n\
/* 08023a4a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08023a4c */ STR R4, [SP, 0x10] \n\
/* 08023a4e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023a50 */ MOVS R3, 0x2C @ Set R3 to 0x2C \n\
/* 08023a52 */ BL sprite_create \n\
/* 08023a56 */ STRH R0, [R7] \n\
/* 08023a58 */ LSLS R0, R0, 0x10 \n\
/* 08023a5a */ ASRS R0, R0, 0x10 \n\
/* 08023a5c */ BL func_080239ec \n\
/* 08023a60 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08023a62 */ LDR R0, [R1] \n\
/* 08023a64 */ LDR R1, =anim_drum_tanuki_use_tom_l \n\
/* 08023a66 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08023a68 */ STR R2, [SP] \n\
/* 08023a6a */ LDR R2, =0x00004bf6 \n\
/* 08023a6c */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08023a6e */ STR R2, [SP, 0x4] \n\
/* 08023a70 */ STR R6, [SP, 0x8] \n\
/* 08023a72 */ STR R5, [SP, 0xC] \n\
/* 08023a74 */ STR R4, [SP, 0x10] \n\
/* 08023a76 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023a78 */ MOVS R3, 0x27 @ Set R3 to 0x27 \n\
/* 08023a7a */ BL sprite_create \n\
/* 08023a7e */ STRH R0, [R7, 0x2] \n\
/* 08023a80 */ LSLS R0, R0, 0x10 \n\
/* 08023a82 */ ASRS R0, R0, 0x10 \n\
/* 08023a84 */ BL func_080239ec \n\
/* 08023a88 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08023a8a */ LDR R0, [R1] \n\
/* 08023a8c */ LDR R1, =anim_drum_tanuki_use_tom_r \n\
/* 08023a8e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08023a90 */ STR R2, [SP] \n\
/* 08023a92 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08023a94 */ STR R2, [SP, 0x4] \n\
/* 08023a96 */ STR R6, [SP, 0x8] \n\
/* 08023a98 */ STR R5, [SP, 0xC] \n\
/* 08023a9a */ STR R4, [SP, 0x10] \n\
/* 08023a9c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023a9e */ MOVS R3, 0x31 @ Set R3 to 0x31 \n\
/* 08023aa0 */ BL sprite_create \n\
/* 08023aa4 */ STRH R0, [R7, 0x4] \n\
/* 08023aa6 */ LSLS R0, R0, 0x10 \n\
/* 08023aa8 */ ASRS R0, R0, 0x10 \n\
/* 08023aaa */ BL func_080239ec \n\
/* 08023aae */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08023ab0 */ LDR R0, [R1] \n\
/* 08023ab2 */ LDR R1, =anim_drum_tanuki_kit_tom2 \n\
/* 08023ab4 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 08023ab6 */ STR R2, [SP] \n\
/* 08023ab8 */ LDR R2, =0x00004bec \n\
/* 08023aba */ STR R2, [SP, 0x4] \n\
/* 08023abc */ STR R6, [SP, 0x8] \n\
/* 08023abe */ STR R5, [SP, 0xC] \n\
/* 08023ac0 */ STR R4, [SP, 0x10] \n\
/* 08023ac2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023ac4 */ MOVS R3, 0x2C @ Set R3 to 0x2C \n\
/* 08023ac6 */ BL sprite_create \n\
/* 08023aca */ STRH R0, [R7, 0x6] \n\
/* 08023acc */ LSLS R0, R0, 0x10 \n\
/* 08023ace */ ASRS R0, R0, 0x10 \n\
/* 08023ad0 */ BL func_080239ec \n\
/* 08023ad4 */ LDR R1, =gCurrentEngineData \n\
/* 08023ad6 */ LDR R0, [R1] \n\
/* 08023ad8 */ MOVS R2, 0xE8 @ Set R2 to 0xE8 \n\
/* 08023ada */ LSLS R2, R2, 0x2 \n\
/* 08023adc */ ADDS R7, R0, R2 @ Set R7 to R0 + R2 \n\
/* 08023ade */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08023ae0 */ LDR R0, [R1] \n\
/* 08023ae2 */ LDR R1, =anim_drum_monkey_beat \n\
/* 08023ae4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08023ae6 */ STR R2, [SP] \n\
/* 08023ae8 */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 08023aea */ LSLS R2, R2, 0x7 \n\
/* 08023aec */ STR R2, [SP, 0x4] \n\
/* 08023aee */ STR R6, [SP, 0x8] \n\
/* 08023af0 */ STR R5, [SP, 0xC] \n\
/* 08023af2 */ STR R4, [SP, 0x10] \n\
/* 08023af4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023af6 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 08023af8 */ BL sprite_create \n\
/* 08023afc */ STRH R0, [R7] \n\
/* 08023afe */ LSLS R0, R0, 0x10 \n\
/* 08023b00 */ ASRS R0, R0, 0x10 \n\
/* 08023b02 */ BL func_080239ec \n\
/* 08023b06 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08023b08 */ LDR R0, [R1] \n\
/* 08023b0a */ LDR R1, =anim_drum_monkey_use_snare_l \n\
/* 08023b0c */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08023b0e */ STR R2, [SP] \n\
/* 08023b10 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08023b12 */ STR R2, [SP, 0x4] \n\
/* 08023b14 */ STR R6, [SP, 0x8] \n\
/* 08023b16 */ STR R5, [SP, 0xC] \n\
/* 08023b18 */ STR R4, [SP, 0x10] \n\
/* 08023b1a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023b1c */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 08023b1e */ BL sprite_create \n\
/* 08023b22 */ STRH R0, [R7, 0x2] \n\
/* 08023b24 */ LSLS R0, R0, 0x10 \n\
/* 08023b26 */ ASRS R0, R0, 0x10 \n\
/* 08023b28 */ BL func_080239ec \n\
/* 08023b2c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08023b2e */ LDR R0, [R1] \n\
/* 08023b30 */ LDR R1, =anim_drum_monkey_use_snare_r \n\
/* 08023b32 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08023b34 */ STR R2, [SP] \n\
/* 08023b36 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08023b38 */ STR R2, [SP, 0x4] \n\
/* 08023b3a */ STR R6, [SP, 0x8] \n\
/* 08023b3c */ STR R5, [SP, 0xC] \n\
/* 08023b3e */ STR R4, [SP, 0x10] \n\
/* 08023b40 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023b42 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 08023b44 */ BL sprite_create \n\
/* 08023b48 */ STRH R0, [R7, 0x4] \n\
/* 08023b4a */ LSLS R0, R0, 0x10 \n\
/* 08023b4c */ ASRS R0, R0, 0x10 \n\
/* 08023b4e */ BL func_080239ec \n\
/* 08023b52 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08023b54 */ LDR R0, [R1] \n\
/* 08023b56 */ LDR R1, =anim_drum_monkey_kit_snare1 \n\
/* 08023b58 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 08023b5a */ STR R2, [SP] \n\
/* 08023b5c */ LDR R2, =0x00004bec \n\
/* 08023b5e */ STR R2, [SP, 0x4] \n\
/* 08023b60 */ STR R6, [SP, 0x8] \n\
/* 08023b62 */ STR R5, [SP, 0xC] \n\
/* 08023b64 */ STR R4, [SP, 0x10] \n\
/* 08023b66 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023b68 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 08023b6a */ BL sprite_create \n\
/* 08023b6e */ STRH R0, [R7, 0x6] \n\
/* 08023b70 */ LSLS R0, R0, 0x10 \n\
/* 08023b72 */ ASRS R0, R0, 0x10 \n\
/* 08023b74 */ BL func_080239ec \n\
/* 08023b78 */ ADD SP, 0x14 \n\
/* 08023b7a */ POP {R3-R5} \n\
/* 08023b7c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08023b7e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08023b80 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08023b82 */ POP {R4-R7} \n\
/* 08023b84 */ POP {R0} \n\
/* 08023b86 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
