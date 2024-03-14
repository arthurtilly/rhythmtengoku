asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803b9fc \n\
/* 0803b9fc */ PUSH {R4, R5, LR} \n\
/* 0803b9fe */ SUB SP, 0xC \n\
/* 0803ba00 */ LDR R0, =gCurrentEngineData \n\
/* 0803ba02 */ LDR R1, [R0] \n\
/* 0803ba04 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0803ba06 */ ADDS R5, 0x3C @ Add 0x3C to R5 \n\
/* 0803ba08 */ LDRB R1, [R5, 0x5] \n\
/* 0803ba0a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803ba0c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803ba0e */ BEQ branch_0803ba18 \n\
 \n\
branch_0803ba10: \n\
/* 0803ba10 */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 0803ba12 */ LDRB R0, [R5, 0x5] \n\
/* 0803ba14 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803ba16 */ BNE branch_0803ba10 \n\
 \n\
branch_0803ba18: \n\
/* 0803ba18 */ LDRB R2, [R5, 0x4] \n\
/* 0803ba1a */ CMP R2, 0x4 @ Compare R2 and 0x4 \n\
/* 0803ba1c */ BEQ branch_0803ba64 \n\
/* 0803ba1e */ CMP R2, 0x4 @ Compare R2 and 0x4 \n\
/* 0803ba20 */ BGT branch_0803ba2c \n\
/* 0803ba22 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 0803ba24 */ BEQ branch_0803ba30 \n\
/* 0803ba26 */ B branch_0803ba8e \n\
\n\
.ltorg \n\
 \n\
branch_0803ba2c: \n\
/* 0803ba2c */ CMP R2, 0x6 @ Compare R2 and 0x6 \n\
/* 0803ba2e */ BNE branch_0803ba8e \n\
 \n\
branch_0803ba30: \n\
/* 0803ba30 */ LDR R0, [R3] \n\
/* 0803ba32 */ MOVS R1, 0x8E @ Set R1 to 0x8E \n\
/* 0803ba34 */ LSLS R1, R1, 0x1 \n\
/* 0803ba36 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803ba38 */ LDRB R0, [R0] \n\
/* 0803ba3a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803ba3c */ BEQ branch_0803ba8e \n\
/* 0803ba3e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803ba40 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803ba42 */ STRB R3, [R5, 0x4] \n\
/* 0803ba44 */ LDR R0, =gSpriteHandler \n\
/* 0803ba46 */ LDR R0, [R0] \n\
/* 0803ba48 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ba4a */ LDRSH R1, [R5, R2] \n\
/* 0803ba4c */ LDR R2, =anim_rat_run \n\
/* 0803ba4e */ STR R3, [SP] \n\
/* 0803ba50 */ STR R4, [SP, 0x4] \n\
/* 0803ba52 */ STR R4, [SP, 0x8] \n\
/* 0803ba54 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ba56 */ BL sprite_set_anim \n\
/* 0803ba5a */ B branch_0803ba8e \n\
\n\
.ltorg \n\
 \n\
branch_0803ba64: \n\
/* 0803ba64 */ LDR R4, =gSpriteHandler \n\
/* 0803ba66 */ LDR R0, [R4] \n\
/* 0803ba68 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ba6a */ LDRSH R1, [R5, R3] \n\
/* 0803ba6c */ STR R2, [SP] \n\
/* 0803ba6e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803ba70 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803ba72 */ BL sprite_set_playback \n\
/* 0803ba76 */ LDR R0, [R4] \n\
/* 0803ba78 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ba7a */ LDRSH R1, [R5, R2] \n\
/* 0803ba7c */ LDR R2, =func_0803aef4 \n\
/* 0803ba7e */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0803ba80 */ BL sprite_set_callback \n\
/* 0803ba84 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ba86 */ STRB R0, [R5, 0xC] \n\
/* 0803ba88 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803ba8a */ BL func_0803b258 \n\
 \n\
branch_0803ba8e: \n\
/* 0803ba8e */ ADD SP, 0xC \n\
/* 0803ba90 */ POP {R4, R5} \n\
/* 0803ba92 */ POP {R0} \n\
/* 0803ba94 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
