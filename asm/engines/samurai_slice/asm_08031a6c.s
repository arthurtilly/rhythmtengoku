asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08031a6c \n\
/* 08031a6c */ PUSH {R4-R6, LR} \n\
/* 08031a6e */ SUB SP, 0xC \n\
/* 08031a70 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08031a72 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08031a74 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08031a76 */ STRB R0, [R6, 0x4] \n\
/* 08031a78 */ ADDS R5, R6, 0x0 @ Set R5 to R6 + 0x0 \n\
/* 08031a7a */ ADDS R5, 0x30 @ Add 0x30 to R5 \n\
/* 08031a7c */ STRB R1, [R5] \n\
/* 08031a7e */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08031a80 */ LSLS R0, R0, 0x8 \n\
/* 08031a82 */ STR R0, [R6, 0x8] \n\
/* 08031a84 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08031a86 */ LSLS R0, R0, 0x6 \n\
/* 08031a88 */ STR R0, [R6, 0xC] \n\
/* 08031a8a */ STR R4, [R6, 0x18] \n\
/* 08031a8c */ STR R4, [R6, 0x1C] \n\
/* 08031a8e */ STR R4, [R6, 0x20] \n\
/* 08031a90 */ STR R4, [R6, 0x24] \n\
/* 08031a92 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08031a94 */ BL ticks_to_frames \n\
/* 08031a98 */ STR R0, [R6, 0x28] \n\
/* 08031a9a */ LDR R0, =gCurrentEngineData \n\
/* 08031a9c */ LDR R0, [R0] \n\
/* 08031a9e */ MOVS R1, 0xE8 @ Set R1 to 0xE8 \n\
/* 08031aa0 */ LSLS R1, R1, 0x1 \n\
/* 08031aa2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08031aa4 */ LDRB R0, [R0] \n\
/* 08031aa6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08031aa8 */ BNE branch_08031ad8 \n\
/* 08031aaa */ LDR R0, =gSpriteHandler \n\
/* 08031aac */ LDR R0, [R0] \n\
/* 08031aae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031ab0 */ LDRSH R1, [R6, R2] \n\
/* 08031ab2 */ LDR R3, =D_089e4928 \n\
/* 08031ab4 */ LDRB R2, [R5] \n\
/* 08031ab6 */ LSLS R2, R2, 0x2 \n\
/* 08031ab8 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08031aba */ LDR R2, [R2] \n\
/* 08031abc */ STR R4, [SP] \n\
/* 08031abe */ STR R4, [SP, 0x4] \n\
/* 08031ac0 */ STR R4, [SP, 0x8] \n\
/* 08031ac2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08031ac4 */ BL sprite_set_anim \n\
/* 08031ac8 */ B branch_08031af6 \n\
\n\
.ltorg \n\
 \n\
branch_08031ad8: \n\
/* 08031ad8 */ LDR R0, =gSpriteHandler \n\
/* 08031ada */ LDR R0, [R0] \n\
/* 08031adc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031ade */ LDRSH R1, [R6, R2] \n\
/* 08031ae0 */ LDR R3, =D_089e4940 \n\
/* 08031ae2 */ LDRB R2, [R5] \n\
/* 08031ae4 */ LSLS R2, R2, 0x2 \n\
/* 08031ae6 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08031ae8 */ LDR R2, [R2] \n\
/* 08031aea */ STR R4, [SP] \n\
/* 08031aec */ STR R4, [SP, 0x4] \n\
/* 08031aee */ STR R4, [SP, 0x8] \n\
/* 08031af0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08031af2 */ BL sprite_set_anim \n\
 \n\
branch_08031af6: \n\
/* 08031af6 */ ADDS R4, R6, 0x0 @ Set R4 to R6 + 0x0 \n\
/* 08031af8 */ ADDS R4, 0x30 @ Add 0x30 to R4 \n\
/* 08031afa */ LDRB R0, [R4] \n\
/* 08031afc */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
/* 08031afe */ LSLS R0, R0, 0x18 \n\
/* 08031b00 */ LSRS R0, R0, 0x18 \n\
/* 08031b02 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08031b04 */ BHI branch_08031b1a \n\
/* 08031b06 */ LDR R0, =gSpriteHandler \n\
/* 08031b08 */ LDR R0, [R0] \n\
/* 08031b0a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031b0c */ LDRSH R1, [R6, R2] \n\
/* 08031b0e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031b10 */ STR R2, [SP] \n\
/* 08031b12 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08031b14 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08031b16 */ BL sprite_set_playback \n\
 \n\
branch_08031b1a: \n\
/* 08031b1a */ LDRB R0, [R4] \n\
/* 08031b1c */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 08031b1e */ LSLS R0, R0, 0x18 \n\
/* 08031b20 */ LSRS R0, R0, 0x18 \n\
/* 08031b22 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08031b24 */ BHI branch_08031b4c \n\
/* 08031b26 */ LDR R0, =gSpriteHandler \n\
/* 08031b28 */ LDR R0, [R0] \n\
/* 08031b2a */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08031b2c */ LDRSH R1, [R6, R2] \n\
/* 08031b2e */ LDR R2, =anim_large_demon_shadow \n\
/* 08031b30 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08031b32 */ STR R3, [SP] \n\
/* 08031b34 */ STR R3, [SP, 0x4] \n\
/* 08031b36 */ STR R3, [SP, 0x8] \n\
/* 08031b38 */ BL sprite_set_anim \n\
/* 08031b3c */ B branch_08031b62 \n\
\n\
.ltorg \n\
 \n\
branch_08031b4c: \n\
/* 08031b4c */ LDR R0, =gSpriteHandler \n\
/* 08031b4e */ LDR R0, [R0] \n\
/* 08031b50 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08031b52 */ LDRSH R1, [R6, R2] \n\
/* 08031b54 */ LDR R2, =anim_demon_shadow \n\
/* 08031b56 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08031b58 */ STR R3, [SP] \n\
/* 08031b5a */ STR R3, [SP, 0x4] \n\
/* 08031b5c */ STR R3, [SP, 0x8] \n\
/* 08031b5e */ BL sprite_set_anim \n\
 \n\
branch_08031b62: \n\
/* 08031b62 */ LDR R5, =gSpriteHandler \n\
/* 08031b64 */ LDR R0, [R5] \n\
/* 08031b66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031b68 */ LDRSH R1, [R6, R2] \n\
/* 08031b6a */ LDR R2, [R6, 0x8] \n\
/* 08031b6c */ LSLS R2, R2, 0x8 \n\
/* 08031b6e */ ASRS R2, R2, 0x10 \n\
/* 08031b70 */ LDR R3, [R6, 0xC] \n\
/* 08031b72 */ LSLS R3, R3, 0x8 \n\
/* 08031b74 */ ASRS R3, R3, 0x10 \n\
/* 08031b76 */ LDR R4, =0x800a \n\
/* 08031b78 */ STR R4, [SP] \n\
/* 08031b7a */ BL sprite_set_x_y_z \n\
/* 08031b7e */ LDR R0, [R5] \n\
/* 08031b80 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08031b82 */ LDRSH R1, [R6, R2] \n\
/* 08031b84 */ LDR R2, [R6, 0x8] \n\
/* 08031b86 */ LSLS R2, R2, 0x8 \n\
/* 08031b88 */ ASRS R2, R2, 0x10 \n\
/* 08031b8a */ LDR R3, [R6, 0xC] \n\
/* 08031b8c */ LSLS R3, R3, 0x8 \n\
/* 08031b8e */ ASRS R3, R3, 0x10 \n\
/* 08031b90 */ BL sprite_set_x_y \n\
/* 08031b94 */ LDR R0, [R5] \n\
/* 08031b96 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031b98 */ LDRSH R1, [R6, R2] \n\
/* 08031b9a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08031b9c */ BL sprite_set_visible \n\
/* 08031ba0 */ LDR R0, [R5] \n\
/* 08031ba2 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08031ba4 */ LDRSH R1, [R6, R2] \n\
/* 08031ba6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08031ba8 */ BL sprite_set_visible \n\
/* 08031bac */ ADD SP, 0xC \n\
/* 08031bae */ POP {R4-R6} \n\
/* 08031bb0 */ POP {R0} \n\
/* 08031bb2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
