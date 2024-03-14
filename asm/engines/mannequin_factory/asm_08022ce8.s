asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022ce8 \n\
/* 08022ce8 */ PUSH {R4-R6, LR} \n\
/* 08022cea */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08022cec */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 08022cee */ BEQ branch_08022d20 \n\
/* 08022cf0 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 08022cf2 */ BCC branch_08022cfe \n\
/* 08022cf4 */ CMP R6, 0x2 @ Compare R6 and 0x2 \n\
/* 08022cf6 */ BEQ branch_08022d3c \n\
/* 08022cf8 */ CMP R6, 0x3 @ Compare R6 and 0x3 \n\
/* 08022cfa */ BEQ branch_08022d7c \n\
/* 08022cfc */ B branch_08022daa \n\
 \n\
branch_08022cfe: \n\
/* 08022cfe */ LDR R5, =gSpriteHandler \n\
/* 08022d00 */ LDR R0, [R5] \n\
/* 08022d02 */ LDR R4, =gCurrentEngineData \n\
/* 08022d04 */ LDR R1, [R4] \n\
/* 08022d06 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08022d08 */ LDRSH R1, [R1, R2] \n\
/* 08022d0a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022d0c */ BL sprite_set_anim_cel \n\
/* 08022d10 */ LDR R0, [R5] \n\
/* 08022d12 */ LDR R1, [R4] \n\
/* 08022d14 */ B branch_08022d28 \n\
\n\
.ltorg \n\
 \n\
branch_08022d20: \n\
/* 08022d20 */ LDR R0, =gSpriteHandler \n\
/* 08022d22 */ LDR R0, [R0] \n\
/* 08022d24 */ LDR R1, =gCurrentEngineData \n\
/* 08022d26 */ LDR R1, [R1] \n\
 \n\
branch_08022d28: \n\
/* 08022d28 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08022d2a */ LDRSH R1, [R1, R2] \n\
/* 08022d2c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022d2e */ BL sprite_set_anim_cel \n\
/* 08022d32 */ B branch_08022daa \n\
\n\
.ltorg \n\
 \n\
branch_08022d3c: \n\
/* 08022d3c */ LDR R5, =gSpriteHandler \n\
/* 08022d3e */ LDR R0, [R5] \n\
/* 08022d40 */ LDR R4, =gCurrentEngineData \n\
/* 08022d42 */ LDR R1, [R4] \n\
/* 08022d44 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08022d46 */ LDRSH R1, [R1, R2] \n\
/* 08022d48 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022d4a */ BL sprite_set_anim_cel \n\
/* 08022d4e */ LDR R0, [R5] \n\
/* 08022d50 */ LDR R1, [R4] \n\
/* 08022d52 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08022d54 */ LDRSH R1, [R1, R2] \n\
/* 08022d56 */ LDR R2, =0x0000480a \n\
/* 08022d58 */ BL sprite_set_z \n\
/* 08022d5c */ LDR R0, [R5] \n\
/* 08022d5e */ LDR R1, [R4] \n\
/* 08022d60 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022d62 */ LDRSH R1, [R1, R2] \n\
/* 08022d64 */ LDR R2, =0x000047f6 \n\
/* 08022d66 */ BL sprite_set_z \n\
/* 08022d6a */ B branch_08022daa \n\
\n\
.ltorg \n\
 \n\
branch_08022d7c: \n\
/* 08022d7c */ LDR R5, =gSpriteHandler \n\
/* 08022d7e */ LDR R0, [R5] \n\
/* 08022d80 */ LDR R4, =gCurrentEngineData \n\
/* 08022d82 */ LDR R1, [R4] \n\
/* 08022d84 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022d86 */ LDRSH R1, [R1, R2] \n\
/* 08022d88 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022d8a */ BL sprite_set_anim_cel \n\
/* 08022d8e */ LDR R0, [R5] \n\
/* 08022d90 */ LDR R1, [R4] \n\
/* 08022d92 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08022d94 */ LDRSH R1, [R1, R2] \n\
/* 08022d96 */ LDR R2, =0x000047f6 \n\
/* 08022d98 */ BL sprite_set_z \n\
/* 08022d9c */ LDR R0, [R5] \n\
/* 08022d9e */ LDR R1, [R4] \n\
/* 08022da0 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022da2 */ LDRSH R1, [R1, R2] \n\
/* 08022da4 */ LDR R2, =0x0000480a \n\
/* 08022da6 */ BL sprite_set_z \n\
 \n\
branch_08022daa: \n\
/* 08022daa */ LDR R5, =gCurrentEngineData \n\
/* 08022dac */ LDR R1, [R5] \n\
/* 08022dae */ LDR R0, =mannequin_input_buttons \n\
/* 08022db0 */ LSLS R4, R6, 0x1 \n\
/* 08022db2 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08022db4 */ LDRH R2, [R0] \n\
/* 08022db6 */ LDRH R0, [R1, 0x2] \n\
/* 08022db8 */ BICS R0, R2 @ Clear bits in R2 from R0 \n\
/* 08022dba */ STRH R0, [R1, 0x2] \n\
/* 08022dbc */ LDRH R0, [R1, 0x2] \n\
/* 08022dbe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08022dc0 */ BL gameplay_set_input_buttons \n\
/* 08022dc4 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 08022dc6 */ BL ticks_to_frames \n\
/* 08022dca */ LDR R1, [R5] \n\
/* 08022dcc */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 08022dce */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08022dd0 */ STRH R0, [R1] \n\
/* 08022dd2 */ POP {R4-R6} \n\
/* 08022dd4 */ POP {R0} \n\
/* 08022dd6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
