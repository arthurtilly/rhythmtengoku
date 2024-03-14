asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ce70 \n\
/* 0802ce70 */ PUSH {R4-R7, LR} \n\
/* 0802ce72 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802ce74 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802ce76 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802ce78 */ PUSH {R5-R7} \n\
/* 0802ce7a */ SUB SP, 0xC \n\
/* 0802ce7c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802ce7e */ CMP R5, 0x4 @ Compare R5 and 0x4 \n\
/* 0802ce80 */ BLE branch_0802ce84 \n\
/* 0802ce82 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0802ce84: \n\
/* 0802ce84 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802ce86 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0802ce88 */ LDR R1, =gCurrentEngineData \n\
/* 0802ce8a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802ce8c */ MOV R10, R8 @ Set R10 to R8 \n\
/* 0802ce8e */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802ce90 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802ce92 */ MOV R12, R2 @ Set R12 to R2 \n\
 \n\
branch_0802ce94: \n\
/* 0802ce94 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802ce96 */ LDR R1, [R3] \n\
/* 0802ce98 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802ce9a */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802ce9c */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802ce9e */ LDR R4, [R0] \n\
/* 0802cea0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802cea2 */ BNE branch_0802cf6c \n\
/* 0802cea4 */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0802cea6 */ STR R2, [R0] \n\
/* 0802cea8 */ LDR R7, =gSpriteHandler \n\
/* 0802ceaa */ LDR R0, [R7] \n\
/* 0802ceac */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802ceae */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802ceb0 */ LDRSH R1, [R1, R3] \n\
/* 0802ceb2 */ LDR R3, =showtime_penguin_beat_anim \n\
/* 0802ceb4 */ LSLS R2, R5, 0x2 \n\
/* 0802ceb6 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802ceb8 */ LDR R2, [R2] \n\
/* 0802ceba */ MOV R3, R12 @ Set R3 to R12 \n\
/* 0802cebc */ STR R3, [SP] \n\
/* 0802cebe */ STR R4, [SP, 0x4] \n\
/* 0802cec0 */ STR R4, [SP, 0x8] \n\
/* 0802cec2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802cec4 */ BL sprite_set_anim \n\
/* 0802cec8 */ LDR R0, [R7] \n\
/* 0802ceca */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802cecc */ LDR R1, [R2] \n\
/* 0802cece */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802ced0 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802ced2 */ LDRSH R1, [R1, R3] \n\
/* 0802ced4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802ced6 */ BL sprite_set_visible \n\
/* 0802ceda */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802cedc */ LDR R1, [R0] \n\
/* 0802cede */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cee0 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802cee2 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cee4 */ STR R5, [R0] \n\
/* 0802cee6 */ LDR R0, [R7] \n\
/* 0802cee8 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802ceea */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802ceec */ LDRSH R1, [R1, R2] \n\
/* 0802ceee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802cef0 */ BL sprite_set_base_palette \n\
/* 0802cef4 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0802cef6 */ BEQ branch_0802cf30 \n\
/* 0802cef8 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0802cefa */ BGT branch_0802cf10 \n\
/* 0802cefc */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0802cefe */ BEQ branch_0802cf16 \n\
/* 0802cf00 */ B branch_0802cf44 \n\
\n\
.ltorg \n\
 \n\
branch_0802cf10: \n\
/* 0802cf10 */ CMP R5, 0x4 @ Compare R5 and 0x4 \n\
/* 0802cf12 */ BEQ branch_0802cf2a \n\
/* 0802cf14 */ B branch_0802cf44 \n\
 \n\
branch_0802cf16: \n\
/* 0802cf16 */ LDR R0, [R7] \n\
/* 0802cf18 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802cf1a */ LDR R1, [R3] \n\
/* 0802cf1c */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802cf1e */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802cf20 */ LDRSH R1, [R1, R2] \n\
/* 0802cf22 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802cf24 */ BL sprite_set_base_palette \n\
/* 0802cf28 */ B branch_0802cf44 \n\
 \n\
branch_0802cf2a: \n\
/* 0802cf2a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802cf2c */ BL func_0802c4c0 \n\
 \n\
branch_0802cf30: \n\
/* 0802cf30 */ LDR R0, =gSpriteHandler \n\
/* 0802cf32 */ LDR R0, [R0] \n\
/* 0802cf34 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802cf36 */ LDR R1, [R3] \n\
/* 0802cf38 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802cf3a */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802cf3c */ LDRSH R1, [R1, R2] \n\
/* 0802cf3e */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802cf40 */ BL sprite_set_base_palette \n\
 \n\
branch_0802cf44: \n\
/* 0802cf44 */ LDR R0, =gSpriteHandler \n\
/* 0802cf46 */ LDR R0, [R0] \n\
/* 0802cf48 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802cf4a */ LDR R1, [R3] \n\
/* 0802cf4c */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802cf4e */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802cf50 */ LDRSH R1, [R1, R2] \n\
/* 0802cf52 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802cf54 */ BL sprite_set_anim_speed \n\
/* 0802cf58 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802cf5a */ LDR R0, [R3] \n\
/* 0802cf5c */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 0802cf5e */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cf60 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802cf62 */ STR R1, [R0] \n\
/* 0802cf64 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802cf66 */ B branch_0802cf7a \n\
\n\
.ltorg \n\
 \n\
branch_0802cf6c: \n\
/* 0802cf6c */ ADDS R6, 0x28 @ Add 0x28 to R6 \n\
/* 0802cf6e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802cf70 */ ADD R9, R0 @ Add R0 to R9 \n\
/* 0802cf72 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0802cf74 */ CMP R1, 0x7 @ Compare R1 and 0x7 \n\
/* 0802cf76 */ BLE branch_0802ce94 \n\
/* 0802cf78 */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
 \n\
branch_0802cf7a: \n\
/* 0802cf7a */ ADD SP, 0xC \n\
/* 0802cf7c */ POP {R3-R5} \n\
/* 0802cf7e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802cf80 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802cf82 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802cf84 */ POP {R4-R7} \n\
/* 0802cf86 */ POP {R1} \n\
/* 0802cf88 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
