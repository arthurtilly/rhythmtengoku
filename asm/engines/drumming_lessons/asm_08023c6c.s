asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_cue_spawn_auto \n\
/* 08023c6c */ PUSH {R4, R5, LR} \n\
/* 08023c6e */ LDR R5, =gCurrentEngineData \n\
/* 08023c70 */ LDR R2, [R5] \n\
/* 08023c72 */ MOVS R3, 0xEA @ Set R3 to 0xEA \n\
/* 08023c74 */ LSLS R3, R3, 0x2 \n\
/* 08023c76 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08023c78 */ LDRB R4, [R2] \n\
/* 08023c7a */ STRB R4, [R1] \n\
/* 08023c7c */ LDR R2, =D_089dfe94 \n\
/* 08023c7e */ LSLS R1, R4, 0x1 \n\
/* 08023c80 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023c82 */ LDRH R1, [R1] \n\
/* 08023c84 */ BL gameplay_set_cue_input_buttons \n\
/* 08023c88 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08023c8a */ BEQ branch_08023cc0 \n\
/* 08023c8c */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08023c8e */ BCC branch_08023ca0 \n\
/* 08023c90 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08023c92 */ BEQ branch_08023d00 \n\
/* 08023c94 */ B branch_08023d32 \n\
\n\
.ltorg \n\
 \n\
branch_08023ca0: \n\
/* 08023ca0 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08023ca2 */ LSLS R1, R1, 0x1 \n\
/* 08023ca4 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 08023ca6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023ca8 */ BL play_drumtech_note \n\
/* 08023cac */ LDR R4, =gSpriteHandler \n\
/* 08023cae */ LDR R0, [R4] \n\
/* 08023cb0 */ LDR R1, [R5] \n\
/* 08023cb2 */ LDR R2, =0x000003a2 \n\
/* 08023cb4 */ B branch_08023cd6 \n\
\n\
.ltorg \n\
 \n\
branch_08023cc0: \n\
/* 08023cc0 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08023cc2 */ LSLS R1, R1, 0x1 \n\
/* 08023cc4 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 08023cc6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023cc8 */ BL play_drumtech_note \n\
/* 08023ccc */ LDR R4, =gSpriteHandler \n\
/* 08023cce */ LDR R0, [R4] \n\
/* 08023cd0 */ LDR R1, [R5] \n\
/* 08023cd2 */ MOVS R2, 0xE9 @ Set R2 to 0xE9 \n\
/* 08023cd4 */ LSLS R2, R2, 0x2 \n\
 \n\
branch_08023cd6: \n\
/* 08023cd6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023cd8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023cda */ LDRSH R1, [R1, R3] \n\
/* 08023cdc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023cde */ BL sprite_set_anim_cel \n\
/* 08023ce2 */ LDR R0, [R4] \n\
/* 08023ce4 */ LDR R1, [R5] \n\
/* 08023ce6 */ LDR R2, =0x000003a6 \n\
/* 08023ce8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023cea */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023cec */ LDRSH R1, [R1, R3] \n\
/* 08023cee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023cf0 */ BL sprite_set_anim_cel \n\
/* 08023cf4 */ B branch_08023d32 \n\
\n\
.ltorg \n\
 \n\
branch_08023d00: \n\
/* 08023d00 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08023d02 */ LSLS R1, R1, 0x1 \n\
/* 08023d04 */ MOVS R0, 0x19 @ Set R0 to 0x19 \n\
/* 08023d06 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023d08 */ BL play_drumtech_note \n\
/* 08023d0c */ LDR R4, =gSpriteHandler \n\
/* 08023d0e */ LDR R0, [R4] \n\
/* 08023d10 */ LDR R1, [R5] \n\
/* 08023d12 */ LDR R2, =0x0000039a \n\
/* 08023d14 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023d16 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023d18 */ LDRSH R1, [R1, R3] \n\
/* 08023d1a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023d1c */ BL sprite_set_anim_cel \n\
/* 08023d20 */ LDR R0, [R4] \n\
/* 08023d22 */ LDR R1, [R5] \n\
/* 08023d24 */ LDR R2, =0x0000039e \n\
/* 08023d26 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023d28 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023d2a */ LDRSH R1, [R1, R3] \n\
/* 08023d2c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023d2e */ BL sprite_set_anim_cel \n\
 \n\
branch_08023d32: \n\
/* 08023d32 */ POP {R4, R5} \n\
/* 08023d34 */ POP {R0} \n\
/* 08023d36 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
