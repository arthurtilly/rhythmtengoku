asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030e84 \n\
/* 08030e84 */ PUSH {R4, R5, LR} \n\
/* 08030e86 */ SUB SP, 0x4 \n\
/* 08030e88 */ LDR R0, =D_03004afc \n\
/* 08030e8a */ LDRH R1, [R0] \n\
/* 08030e8c */ MOVS R0, 0xF2 @ Set R0 to 0xF2 \n\
/* 08030e8e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08030e90 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08030e92 */ BEQ branch_08030ee0 \n\
/* 08030e94 */ LDR R0, =gSpriteHandler \n\
/* 08030e96 */ LDR R0, [R0] \n\
/* 08030e98 */ LDR R1, =gCurrentEngineData \n\
/* 08030e9a */ LDR R1, [R1] \n\
/* 08030e9c */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08030e9e */ LDRSH R1, [R1, R2] \n\
/* 08030ea0 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08030ea2 */ BL sprite_get_data \n\
/* 08030ea6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08030ea8 */ LDR R0, =anim_samurai_beat_2 \n\
/* 08030eaa */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08030eac */ BEQ branch_08030eba \n\
/* 08030eae */ LDR R0, =anim_samurai_beat_1 \n\
/* 08030eb0 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08030eb2 */ BEQ branch_08030eba \n\
/* 08030eb4 */ LDR R0, =anim_samurai_beat_3 \n\
/* 08030eb6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08030eb8 */ BNE branch_08030ee0 \n\
 \n\
branch_08030eba: \n\
/* 08030eba */ LDR R5, =gSpriteHandler \n\
/* 08030ebc */ LDR R0, [R5] \n\
/* 08030ebe */ LDR R4, =gCurrentEngineData \n\
/* 08030ec0 */ LDR R1, [R4] \n\
/* 08030ec2 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08030ec4 */ LDRSH R1, [R1, R2] \n\
/* 08030ec6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030ec8 */ BL sprite_set_anim_cel \n\
/* 08030ecc */ LDR R0, [R5] \n\
/* 08030ece */ LDR R1, [R4] \n\
/* 08030ed0 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08030ed2 */ LDRSH R1, [R1, R2] \n\
/* 08030ed4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030ed6 */ STR R2, [SP] \n\
/* 08030ed8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08030eda */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08030edc */ BL sprite_set_playback \n\
 \n\
branch_08030ee0: \n\
/* 08030ee0 */ ADD SP, 0x4 \n\
/* 08030ee2 */ POP {R4, R5} \n\
/* 08030ee4 */ POP {R0} \n\
/* 08030ee6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
