asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034b14 \n\
/* 08034b14 */ PUSH {R4-R6, LR} \n\
/* 08034b16 */ SUB SP, 0x14 \n\
/* 08034b18 */ LDR R0, =gSpriteHandler \n\
/* 08034b1a */ LDR R0, [R0] \n\
/* 08034b1c */ LDR R1, =anim_metronome_score_counter \n\
/* 08034b1e */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08034b20 */ STR R2, [SP] \n\
/* 08034b22 */ LDR R2, =0x4801 \n\
/* 08034b24 */ STR R2, [SP, 0x4] \n\
/* 08034b26 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034b28 */ STR R2, [SP, 0x8] \n\
/* 08034b2a */ STR R2, [SP, 0xC] \n\
/* 08034b2c */ STR R2, [SP, 0x10] \n\
/* 08034b2e */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 08034b30 */ BL sprite_create \n\
/* 08034b34 */ LDR R1, =gCurrentEngineData \n\
/* 08034b36 */ LDR R1, [R1] \n\
/* 08034b38 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08034b3a */ STRH R0, [R1] \n\
/* 08034b3c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08034b3e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08034b40: \n\
/* 08034b40 */ LDR R0, =gSpriteHandler \n\
/* 08034b42 */ LDR R0, [R0] \n\
/* 08034b44 */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 08034b46 */ STR R1, [SP] \n\
/* 08034b48 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08034b4a */ LSLS R1, R1, 0x7 \n\
/* 08034b4c */ STR R1, [SP, 0x4] \n\
/* 08034b4e */ STR R5, [SP, 0x8] \n\
/* 08034b50 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08034b52 */ STR R1, [SP, 0xC] \n\
/* 08034b54 */ STR R5, [SP, 0x10] \n\
/* 08034b56 */ LDR R1, =anim_metronome_score_num \n\
/* 08034b58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034b5a */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 08034b5c */ BL sprite_create \n\
/* 08034b60 */ LDR R1, =gCurrentEngineData \n\
/* 08034b62 */ LDR R1, [R1] \n\
/* 08034b64 */ LSLS R2, R4, 0x1 \n\
/* 08034b66 */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 08034b68 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08034b6a */ STRH R0, [R1] \n\
/* 08034b6c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08034b6e */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08034b70 */ BLS branch_08034b40 \n\
/* 08034b72 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08034b74 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_08034b76: \n\
/* 08034b76 */ LDR R0, =gSpriteHandler \n\
/* 08034b78 */ LDR R0, [R0] \n\
/* 08034b7a */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 08034b7c */ STR R1, [SP] \n\
/* 08034b7e */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08034b80 */ LSLS R1, R1, 0x7 \n\
/* 08034b82 */ STR R1, [SP, 0x4] \n\
/* 08034b84 */ STR R6, [SP, 0x8] \n\
/* 08034b86 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08034b88 */ STR R1, [SP, 0xC] \n\
/* 08034b8a */ STR R6, [SP, 0x10] \n\
/* 08034b8c */ LDR R1, =anim_mr_upbeat_high_score_num \n\
/* 08034b8e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034b90 */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 08034b92 */ BL sprite_create \n\
/* 08034b96 */ LDR R5, =gCurrentEngineData \n\
/* 08034b98 */ LDR R3, [R5] \n\
/* 08034b9a */ LSLS R2, R4, 0x1 \n\
/* 08034b9c */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08034b9e */ ADDS R1, 0x48 @ Add 0x48 to R1 \n\
/* 08034ba0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08034ba2 */ STRH R0, [R1] \n\
/* 08034ba4 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08034ba6 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08034ba8 */ BLS branch_08034b76 \n\
/* 08034baa */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08034bac */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 08034bae */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08034bb0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08034bb2 */ STRH R0, [R1] \n\
/* 08034bb4 */ LDR R0, =D_030046a8 \n\
/* 08034bb6 */ LDR R0, [R0] \n\
/* 08034bb8 */ MOVS R1, 0xA9 @ Set R1 to 0xA9 \n\
/* 08034bba */ LSLS R1, R1, 0x2 \n\
/* 08034bbc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08034bbe */ LDR R1, [R0] \n\
/* 08034bc0 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08034bc2 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08034bc4 */ STRH R1, [R0] \n\
/* 08034bc6 */ BL func_08034bf4 \n\
/* 08034bca */ LDR R0, [R5] \n\
/* 08034bcc */ ADDS R0, 0x52 @ Add 0x52 to R0 \n\
/* 08034bce */ STRB R4, [R0] \n\
/* 08034bd0 */ ADD SP, 0x14 \n\
/* 08034bd2 */ POP {R4-R6} \n\
/* 08034bd4 */ POP {R0} \n\
/* 08034bd6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
