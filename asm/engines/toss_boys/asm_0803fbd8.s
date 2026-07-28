asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_common_beat_animation \n\
/* 0803fbd8 */ PUSH {R4-R6, LR} \n\
/* 0803fbda */ SUB SP, 0xC \n\
/* 0803fbdc */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0803fbde: \n\
/* 0803fbde */ LDR R0, =gCurrentEngineData \n\
/* 0803fbe0 */ LDR R1, [R0] \n\
/* 0803fbe2 */ LDR R2, =0x35a \n\
/* 0803fbe4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803fbe6 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803fbe8 */ LDRB R0, [R0] \n\
/* 0803fbea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fbec */ BNE branch_0803fc60 \n\
/* 0803fbee */ LDR R3, =0x35d \n\
/* 0803fbf0 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803fbf2 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803fbf4 */ LDRB R2, [R0] \n\
/* 0803fbf6 */ MOVS R6, 0xDF @ Set R6 to 0xDF \n\
/* 0803fbf8 */ LSLS R6, R6, 0x2 \n\
/* 0803fbfa */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 0803fbfc */ LDRB R0, [R0] \n\
/* 0803fbfe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fc00 */ BEQ branch_0803fc16 \n\
/* 0803fc02 */ ADDS R3, 0x39 @ Add 0x39 to R3 \n\
/* 0803fc04 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803fc06 */ LDRH R0, [R0] \n\
/* 0803fc08 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fc0a */ BNE branch_0803fc16 \n\
/* 0803fc0c */ ADDS R6, 0x1C @ Add 0x1C to R6 \n\
/* 0803fc0e */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 0803fc10 */ LDRB R0, [R0] \n\
/* 0803fc12 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fc14 */ BEQ branch_0803fc18 \n\
 \n\
branch_0803fc16: \n\
/* 0803fc16 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0803fc18: \n\
/* 0803fc18 */ LDR R1, =toss_boys_beat_anim_ids \n\
/* 0803fc1a */ LSLS R0, R2, 0x1 \n\
/* 0803fc1c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803fc1e */ ADDS R4, R5, R0 @ Set R4 to R5 + R0 \n\
/* 0803fc20 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 0803fc22 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803fc24 */ LDRSB R0, [R1, R0] \n\
/* 0803fc26 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fc28 */ BLT branch_0803fc60 \n\
/* 0803fc2a */ BL toss_boys_get_anim \n\
/* 0803fc2e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803fc30 */ LDR R0, =gSpriteHandler \n\
/* 0803fc32 */ LDR R0, [R0] \n\
/* 0803fc34 */ LDR R1, =gCurrentEngineData \n\
/* 0803fc36 */ LDR R1, [R1] \n\
/* 0803fc38 */ LSLS R3, R5, 0x1 \n\
/* 0803fc3a */ MOVS R6, 0xD5 @ Set R6 to 0xD5 \n\
/* 0803fc3c */ LSLS R6, R6, 0x2 \n\
/* 0803fc3e */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0803fc40 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803fc42 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fc44 */ LDRSH R1, [R1, R3] \n\
/* 0803fc46 */ LDR R3, =toss_boys_beat_anim_playback \n\
/* 0803fc48 */ ADDS R3, R4, R3 @ Set R3 to R4 + R3 \n\
/* 0803fc4a */ LDRB R3, [R3] \n\
/* 0803fc4c */ LSLS R3, R3, 0x18 \n\
/* 0803fc4e */ ASRS R3, R3, 0x18 \n\
/* 0803fc50 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0803fc52 */ STR R4, [SP] \n\
/* 0803fc54 */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 0803fc56 */ STR R4, [SP, 0x4] \n\
/* 0803fc58 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803fc5a */ STR R4, [SP, 0x8] \n\
/* 0803fc5c */ BL sprite_set_anim \n\
 \n\
branch_0803fc60: \n\
/* 0803fc60 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0803fc62 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0803fc64 */ BLS branch_0803fbde \n\
/* 0803fc66 */ BL func_0803e8b4 \n\
/* 0803fc6a */ ADD SP, 0xC \n\
/* 0803fc6c */ POP {R4-R6} \n\
/* 0803fc6e */ POP {R0} \n\
/* 0803fc70 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
