asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033e00 \n\
/* 08033e00 */ PUSH {R4-R7, LR} \n\
/* 08033e02 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08033e04 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08033e06 */ PUSH {R6, R7} \n\
/* 08033e08 */ SUB SP, 0xC \n\
/* 08033e0a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08033e0c */ LDR R4, =gCurrentEngineData \n\
/* 08033e0e */ LDR R1, [R4] \n\
/* 08033e10 */ LDRH R0, [R1, 0x6] \n\
/* 08033e12 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08033e14 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08033e16 */ MOV R8, R6 @ Set R8 to R6 \n\
/* 08033e18 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08033e1a */ LDRB R0, [R1, 0x8] \n\
/* 08033e1c */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08033e1e */ BNE branch_08033e2e \n\
/* 08033e20 */ LDR R0, =gSpriteHandler \n\
/* 08033e22 */ LDR R0, [R0] \n\
/* 08033e24 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08033e26 */ LDRSH R1, [R1, R2] \n\
/* 08033e28 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033e2a */ BL sprite_set_visible \n\
 \n\
branch_08033e2e: \n\
/* 08033e2e */ LDR R0, [R4] \n\
/* 08033e30 */ STRB R5, [R0, 0x8] \n\
/* 08033e32 */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08033e34 */ BHI branch_08033eaa \n\
/* 08033e36 */ LSLS R0, R5, 0x2 \n\
/* 08033e38 */ LDR R1, =jtbl_08033e4c \n\
/* 08033e3a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08033e3c */ LDR R0, [R0] \n\
/* 08033e3e */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08033e4c: \n\
.word branch_08033eaa \n\
.word jump_08033e64 \n\
.word jump_08033e6c \n\
.word jump_08033e74 \n\
.word jump_08033e80 \n\
.word jump_08033e90 \n\
jump_08033e64: \n\
/* 08033e64 */ LDR R6, =anim_rhythm_test_monitor_note \n\
/* 08033e66 */ B branch_08033eaa \n\
\n\
.ltorg \n\
jump_08033e6c: \n\
/* 08033e6c */ LDR R6, =anim_rhythm_test_monitor_text2 \n\
/* 08033e6e */ B branch_08033eaa \n\
\n\
.ltorg \n\
jump_08033e74: \n\
/* 08033e74 */ LDR R6, =anim_rhythm_test_monitor_text1 \n\
/* 08033e76 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08033e78 */ B branch_08033eaa \n\
\n\
.ltorg \n\
jump_08033e80: \n\
/* 08033e80 */ LDR R6, =anim_rhythm_test_monitor_text1 \n\
/* 08033e82 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08033e84 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08033e86 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08033e88 */ B branch_08033eaa \n\
\n\
.ltorg \n\
jump_08033e90: \n\
/* 08033e90 */ LDR R6, =anim_rhythm_test_monitor_count_bg \n\
/* 08033e92 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08033e94 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08033e96 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08033e98 */ LDR R0, =gSpriteHandler \n\
/* 08033e9a */ LDR R0, [R0] \n\
/* 08033e9c */ LDR R1, =gCurrentEngineData \n\
/* 08033e9e */ LDR R1, [R1] \n\
/* 08033ea0 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08033ea2 */ LDRSH R1, [R1, R2] \n\
/* 08033ea4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08033ea6 */ BL sprite_set_visible \n\
 \n\
branch_08033eaa: \n\
/* 08033eaa */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08033eac */ BEQ branch_08033ee4 \n\
/* 08033eae */ LDR R5, =gSpriteHandler \n\
/* 08033eb0 */ LDR R0, [R5] \n\
/* 08033eb2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08033eb4 */ LSLS R4, R1, 0x10 \n\
/* 08033eb6 */ ASRS R4, R4, 0x10 \n\
/* 08033eb8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08033eba */ STR R7, [SP] \n\
/* 08033ebc */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08033ebe */ STR R1, [SP, 0x4] \n\
/* 08033ec0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08033ec2 */ STR R1, [SP, 0x8] \n\
/* 08033ec4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08033ec6 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08033ec8 */ BL sprite_set_anim \n\
/* 08033ecc */ LDR R0, [R5] \n\
/* 08033ece */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08033ed0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08033ed2 */ BL sprite_set_visible \n\
/* 08033ed6 */ B branch_08033ef4 \n\
\n\
.ltorg \n\
 \n\
branch_08033ee4: \n\
/* 08033ee4 */ LDR R0, =gSpriteHandler \n\
/* 08033ee6 */ LDR R0, [R0] \n\
/* 08033ee8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08033eea */ LSLS R1, R2, 0x10 \n\
/* 08033eec */ ASRS R1, R1, 0x10 \n\
/* 08033eee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033ef0 */ BL sprite_set_visible \n\
 \n\
branch_08033ef4: \n\
/* 08033ef4 */ ADD SP, 0xC \n\
/* 08033ef6 */ POP {R3, R4} \n\
/* 08033ef8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08033efa */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08033efc */ POP {R4-R7} \n\
/* 08033efe */ POP {R0} \n\
/* 08033f00 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
