asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024ae4 \n\
/* 08024ae4 */ PUSH {R4-R6, LR} \n\
/* 08024ae6 */ SUB SP, 0xC \n\
/* 08024ae8 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08024aea */ BEQ branch_08024b18 \n\
/* 08024aec */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08024aee */ BCC branch_08024af6 \n\
/* 08024af0 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08024af2 */ BEQ branch_08024b58 \n\
/* 08024af4 */ B branch_08024b8c \n\
 \n\
branch_08024af6: \n\
/* 08024af6 */ LDR R0, =gSpriteHandler \n\
/* 08024af8 */ LDR R0, [R0] \n\
/* 08024afa */ LDR R1, =gCurrentEngineData \n\
/* 08024afc */ LDR R1, [R1] \n\
/* 08024afe */ MOVS R2, 0xE5 @ Set R2 to 0xE5 \n\
/* 08024b00 */ LSLS R2, R2, 0x2 \n\
/* 08024b02 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08024b04 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024b06 */ LDRSH R1, [R1, R2] \n\
/* 08024b08 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024b0a */ BL sprite_set_visible \n\
/* 08024b0e */ B branch_08024b8c \n\
\n\
.ltorg \n\
 \n\
branch_08024b18: \n\
/* 08024b18 */ LDR R6, =gSpriteHandler \n\
/* 08024b1a */ LDR R0, [R6] \n\
/* 08024b1c */ LDR R5, =gCurrentEngineData \n\
/* 08024b1e */ LDR R1, [R5] \n\
/* 08024b20 */ MOVS R4, 0xE5 @ Set R4 to 0xE5 \n\
/* 08024b22 */ LSLS R4, R4, 0x2 \n\
/* 08024b24 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08024b26 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024b28 */ LDRSH R1, [R1, R2] \n\
/* 08024b2a */ LDR R2, =anim_drum_player_unk25 \n\
/* 08024b2c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08024b2e */ STR R3, [SP] \n\
/* 08024b30 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08024b32 */ STR R3, [SP, 0x4] \n\
/* 08024b34 */ STR R3, [SP, 0x8] \n\
/* 08024b36 */ BL sprite_set_anim \n\
/* 08024b3a */ LDR R0, [R6] \n\
/* 08024b3c */ LDR R1, [R5] \n\
/* 08024b3e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08024b40 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024b42 */ LDRSH R1, [R1, R2] \n\
/* 08024b44 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08024b46 */ BL sprite_set_visible \n\
/* 08024b4a */ B branch_08024b8c \n\
\n\
.ltorg \n\
 \n\
branch_08024b58: \n\
/* 08024b58 */ LDR R6, =gSpriteHandler \n\
/* 08024b5a */ LDR R0, [R6] \n\
/* 08024b5c */ LDR R5, =gCurrentEngineData \n\
/* 08024b5e */ LDR R1, [R5] \n\
/* 08024b60 */ MOVS R4, 0xE5 @ Set R4 to 0xE5 \n\
/* 08024b62 */ LSLS R4, R4, 0x2 \n\
/* 08024b64 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08024b66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024b68 */ LDRSH R1, [R1, R2] \n\
/* 08024b6a */ LDR R2, =anim_drum_player_unk24 \n\
/* 08024b6c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08024b6e */ STR R3, [SP] \n\
/* 08024b70 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08024b72 */ STR R3, [SP, 0x4] \n\
/* 08024b74 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08024b76 */ STR R3, [SP, 0x8] \n\
/* 08024b78 */ BL sprite_set_anim \n\
/* 08024b7c */ LDR R0, [R6] \n\
/* 08024b7e */ LDR R1, [R5] \n\
/* 08024b80 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08024b82 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024b84 */ LDRSH R1, [R1, R2] \n\
/* 08024b86 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08024b88 */ BL sprite_set_visible \n\
 \n\
branch_08024b8c: \n\
/* 08024b8c */ ADD SP, 0xC \n\
/* 08024b8e */ POP {R4-R6} \n\
/* 08024b90 */ POP {R0} \n\
/* 08024b92 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
