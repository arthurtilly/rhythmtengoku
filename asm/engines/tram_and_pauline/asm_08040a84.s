asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_cue_hit \n\
/* 08040a84 */ PUSH {R4, R5, LR} \n\
/* 08040a86 */ SUB SP, 0xC \n\
/* 08040a88 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08040a8a */ LDRB R0, [R4] \n\
/* 08040a8c */ BL func_0804016c \n\
/* 08040a90 */ LDR R0, =gSpriteHandler \n\
/* 08040a92 */ LDR R3, [R0] \n\
/* 08040a94 */ LDR R0, =gCurrentEngineData \n\
/* 08040a96 */ LDR R2, [R0] \n\
/* 08040a98 */ LDRB R1, [R4] \n\
/* 08040a9a */ LSLS R1, R1, 0x1 \n\
/* 08040a9c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08040a9e */ ADDS R0, 0x34 @ Add 0x34 to R0 \n\
/* 08040aa0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040aa2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08040aa4 */ LDRSH R1, [R0, R5] \n\
/* 08040aa6 */ LDRB R0, [R2] \n\
/* 08040aa8 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08040aaa */ BEQ branch_08040ab0 \n\
/* 08040aac */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08040aae */ BNE branch_08040ac0 \n\
 \n\
branch_08040ab0: \n\
/* 08040ab0 */ LDR R2, =anim_circus_fox_transform_effect \n\
/* 08040ab2 */ B branch_08040ac2 \n\
\n\
.ltorg \n\
 \n\
branch_08040ac0: \n\
/* 08040ac0 */ LDR R2, =anim_casual_fox_transform_effect \n\
 \n\
branch_08040ac2: \n\
/* 08040ac2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08040ac4 */ STR R0, [SP] \n\
/* 08040ac6 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08040ac8 */ STR R0, [SP, 0x4] \n\
/* 08040aca */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08040acc */ STR R0, [SP, 0x8] \n\
/* 08040ace */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08040ad0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040ad2 */ BL sprite_set_anim \n\
/* 08040ad6 */ LDR R0, =gSpriteHandler \n\
/* 08040ad8 */ LDR R0, [R0] \n\
/* 08040ada */ LDR R1, =gCurrentEngineData \n\
/* 08040adc */ LDR R2, [R1] \n\
/* 08040ade */ LDRB R1, [R4] \n\
/* 08040ae0 */ LSLS R1, R1, 0x1 \n\
/* 08040ae2 */ ADDS R2, 0x34 @ Add 0x34 to R2 \n\
/* 08040ae4 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08040ae6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040ae8 */ LDRSH R1, [R2, R3] \n\
/* 08040aea */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08040aec */ BL sprite_set_visible \n\
/* 08040af0 */ ADD SP, 0xC \n\
/* 08040af2 */ POP {R4, R5} \n\
/* 08040af4 */ POP {R0} \n\
/* 08040af6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
