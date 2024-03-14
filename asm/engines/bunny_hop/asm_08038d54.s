asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038d54 \n\
/* 08038d54 */ PUSH {R4-R7, LR} \n\
/* 08038d56 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08038d58 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08038d5a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08038d5c */ PUSH {R5-R7} \n\
/* 08038d5e */ SUB SP, 0x14 \n\
/* 08038d60 */ LDR R0, =gCurrentEngineData \n\
/* 08038d62 */ LDR R0, [R0] \n\
/* 08038d64 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08038d66 */ ADDS R7, 0x20 @ Add 0x20 to R7 \n\
/* 08038d68 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08038d6a: \n\
/* 08038d6a */ LDRB R0, [R7, 0x2] \n\
/* 08038d6c */ ADDS R1, R4, 0x1 @ Set R1 to R4 + 0x1 \n\
/* 08038d6e */ STR R1, [SP, 0x10] \n\
/* 08038d70 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08038d72 */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 08038d74 */ STR R2, [SP, 0xC] \n\
/* 08038d76 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08038d78 */ BNE branch_08038d7c \n\
/* 08038d7a */ B branch_08038ecc \n\
 \n\
branch_08038d7c: \n\
/* 08038d7c */ LDRB R0, [R7, 0x3] \n\
/* 08038d7e */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08038d80 */ BEQ branch_08038e20 \n\
/* 08038d82 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08038d84 */ BNE branch_08038db0 \n\
/* 08038d86 */ LDR R1, =gSpriteHandler \n\
/* 08038d88 */ LDR R0, [R1] \n\
/* 08038d8a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038d8c */ LDRSH R1, [R7, R2] \n\
/* 08038d8e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08038d90 */ STR R2, [SP] \n\
/* 08038d92 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08038d94 */ STR R2, [SP, 0x4] \n\
/* 08038d96 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038d98 */ STR R2, [SP, 0x8] \n\
/* 08038d9a */ LDR R2, =anim_bunny_hop_4beat_whale_bounce \n\
/* 08038d9c */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08038d9e */ BL sprite_set_anim \n\
/* 08038da2 */ B branch_08038e20 \n\
\n\
.ltorg \n\
 \n\
branch_08038db0: \n\
/* 08038db0 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08038db2 */ BNE branch_08038ddc \n\
/* 08038db4 */ LDR R1, =gSpriteHandler \n\
/* 08038db6 */ LDR R0, [R1] \n\
/* 08038db8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038dba */ LDRSH R1, [R7, R2] \n\
/* 08038dbc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08038dbe */ STR R2, [SP] \n\
/* 08038dc0 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08038dc2 */ STR R2, [SP, 0x4] \n\
/* 08038dc4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038dc6 */ STR R2, [SP, 0x8] \n\
/* 08038dc8 */ LDR R2, =anim_bunny_hop_8beat_whale_bounce \n\
/* 08038dca */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08038dcc */ BL sprite_set_anim \n\
/* 08038dd0 */ B branch_08038e20 \n\
\n\
.ltorg \n\
 \n\
branch_08038ddc: \n\
/* 08038ddc */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 08038dde */ BNE branch_08038ecc \n\
/* 08038de0 */ LDR R1, =gSpriteHandler \n\
/* 08038de2 */ LDR R0, [R1] \n\
/* 08038de4 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08038de6 */ LDRSH R1, [R7, R2] \n\
/* 08038de8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08038dea */ BL sprite_set_visible \n\
/* 08038dee */ LDR R1, =gSpriteHandler \n\
/* 08038df0 */ LDR R0, [R1] \n\
/* 08038df2 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08038df4 */ LDRSH R1, [R7, R2] \n\
/* 08038df6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08038df8 */ BL sprite_set_anim_cel \n\
/* 08038dfc */ LDR R1, =gSpriteHandler \n\
/* 08038dfe */ LDR R0, [R1] \n\
/* 08038e00 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08038e02 */ LDRSH R1, [R7, R2] \n\
/* 08038e04 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08038e06 */ STR R2, [SP] \n\
/* 08038e08 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08038e0a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038e0c */ BL sprite_set_playback \n\
/* 08038e10 */ LDR R1, =gSpriteHandler \n\
/* 08038e12 */ LDR R0, [R1] \n\
/* 08038e14 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08038e16 */ LDRSH R1, [R7, R2] \n\
/* 08038e18 */ LDR R2, =func_08038d18 \n\
/* 08038e1a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038e1c */ BL sprite_set_callback \n\
 \n\
branch_08038e20: \n\
/* 08038e20 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08038e22 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08038e24 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08038e26 */ STR R4, [SP, 0x10] \n\
/* 08038e28 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08038e2a */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 08038e2c */ STR R1, [SP, 0xC] \n\
/* 08038e2e */ LDR R2, =0xfffffc00 \n\
/* 08038e30 */ MOV R10, R2 @ Set R10 to R2 \n\
 \n\
branch_08038e32: \n\
/* 08038e32 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08038e34 */ BL agb_random \n\
/* 08038e38 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08038e3a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08038e3c */ LSLS R0, R0, 0x2 \n\
/* 08038e3e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08038e40 */ ADD R4, R8 @ Add R8 to R4 \n\
/* 08038e42 */ ADDS R4, 0x9E @ Add 0x9E to R4 \n\
/* 08038e44 */ LSLS R4, R4, 0x10 \n\
/* 08038e46 */ ASRS R4, R4, 0x10 \n\
/* 08038e48 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08038e4a */ BL agb_random \n\
/* 08038e4e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08038e50 */ LSLS R5, R1, 0x7 \n\
/* 08038e52 */ LSLS R0, R0, 0x10 \n\
/* 08038e54 */ LSRS R0, R0, 0x10 \n\
/* 08038e56 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08038e58 */ SUBS R5, 0x20 @ Subtract 0x20 from R5 \n\
/* 08038e5a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08038e5c */ BL agb_random \n\
/* 08038e60 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08038e62 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08038e64 */ NEGS R6, R2 @ Set R6 to -R2 \n\
/* 08038e66 */ LSLS R6, R6, 0x7 \n\
/* 08038e68 */ LSLS R3, R3, 0x10 \n\
/* 08038e6a */ LSRS R3, R3, 0x10 \n\
/* 08038e6c */ ADD R3, R10 @ Add R10 to R3 \n\
/* 08038e6e */ ADDS R3, R6, R3 @ Set R3 to R6 + R3 \n\
/* 08038e70 */ SUBS R3, 0x40 @ Subtract 0x40 from R3 \n\
/* 08038e72 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08038e74 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08038e76 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08038e78 */ BL func_0803978c \n\
/* 08038e7c */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08038e7e */ BL agb_random \n\
/* 08038e82 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08038e84 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08038e86 */ SUBS R5, R5, R0 @ Set R5 to R5 - R0 \n\
/* 08038e88 */ ADDS R5, 0x9E @ Add 0x9E to R5 \n\
/* 08038e8a */ LSLS R5, R5, 0x10 \n\
/* 08038e8c */ ASRS R5, R5, 0x10 \n\
/* 08038e8e */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08038e90 */ BL agb_random \n\
/* 08038e94 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08038e96 */ LSLS R4, R4, 0x10 \n\
/* 08038e98 */ LSRS R4, R4, 0x10 \n\
/* 08038e9a */ ADDS R4, R6, R4 @ Set R4 to R6 + R4 \n\
/* 08038e9c */ SUBS R4, 0x20 @ Subtract 0x20 from R4 \n\
/* 08038e9e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08038ea0 */ BL agb_random \n\
/* 08038ea4 */ LSLS R0, R0, 0x10 \n\
/* 08038ea6 */ LSRS R0, R0, 0x10 \n\
/* 08038ea8 */ ADD R0, R10 @ Add R10 to R0 \n\
/* 08038eaa */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 08038eac */ SUBS R6, 0x40 @ Subtract 0x40 from R6 \n\
/* 08038eae */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08038eb0 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08038eb2 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08038eb4 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08038eb6 */ BL func_0803978c \n\
/* 08038eba */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08038ebc */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08038ebe */ LSLS R0, R0, 0x18 \n\
/* 08038ec0 */ LSRS R0, R0, 0x18 \n\
/* 08038ec2 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08038ec4 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08038ec6 */ BLS branch_08038e32 \n\
/* 08038ec8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08038eca */ STRB R0, [R7, 0xE] \n\
 \n\
branch_08038ecc: \n\
/* 08038ecc */ LDR R1, [SP, 0x10] \n\
/* 08038ece */ LSLS R0, R1, 0x18 \n\
/* 08038ed0 */ LSRS R4, R0, 0x18 \n\
/* 08038ed2 */ LDR R7, [SP, 0xC] \n\
/* 08038ed4 */ CMP R4, 0x5 @ Compare R4 and 0x5 \n\
/* 08038ed6 */ BHI branch_08038eda \n\
/* 08038ed8 */ B branch_08038d6a \n\
 \n\
branch_08038eda: \n\
/* 08038eda */ ADD SP, 0x14 \n\
/* 08038edc */ POP {R3-R5} \n\
/* 08038ede */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08038ee0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08038ee2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08038ee4 */ POP {R4-R7} \n\
/* 08038ee6 */ POP {R0} \n\
/* 08038ee8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
