asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027d08 \n\
/* 08027d08 */ PUSH {R4-R7, LR} \n\
/* 08027d0a */ LDR R4, =gCurrentEngineData \n\
/* 08027d0c */ LDR R1, [R4] \n\
/* 08027d0e */ LDR R2, =0x00000562 \n\
/* 08027d10 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08027d12 */ LDRB R0, [R0] \n\
/* 08027d14 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027d16 */ BEQ branch_08027de8 \n\
/* 08027d18 */ LDR R6, =0x00000563 \n\
/* 08027d1a */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 08027d1c */ LDRB R0, [R0] \n\
/* 08027d1e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027d20 */ BEQ branch_08027d2e \n\
/* 08027d22 */ LDR R3, =0x00000425 \n\
/* 08027d24 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08027d26 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08027d28 */ STRB R0, [R1] \n\
/* 08027d2a */ BL func_08027f90 \n\
 \n\
branch_08027d2e: \n\
/* 08027d2e */ LDR R2, [R4] \n\
/* 08027d30 */ LDR R7, =0x00000564 \n\
/* 08027d32 */ ADDS R1, R2, R7 @ Set R1 to R2 + R7 \n\
/* 08027d34 */ LDRH R0, [R1] \n\
/* 08027d36 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08027d38 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08027d3a */ BEQ branch_08027d58 \n\
/* 08027d3c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08027d3e */ STRH R0, [R1] \n\
/* 08027d40 */ B branch_08027de8 \n\
\n\
.ltorg \n\
 \n\
branch_08027d58: \n\
/* 08027d58 */ ADDS R0, R2, R6 @ Set R0 to R2 + R6 \n\
/* 08027d5a */ LDRB R0, [R0] \n\
/* 08027d5c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027d5e */ BEQ branch_08027da0 \n\
/* 08027d60 */ LDR R0, =D_03004afc \n\
/* 08027d62 */ LDRH R1, [R0] \n\
/* 08027d64 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08027d66 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08027d68 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027d6a */ BEQ branch_08027de8 \n\
/* 08027d6c */ LDR R0, =gSpriteHandler \n\
/* 08027d6e */ LDR R0, [R0] \n\
/* 08027d70 */ MOVS R3, 0xAC @ Set R3 to 0xAC \n\
/* 08027d72 */ LSLS R3, R3, 0x3 \n\
/* 08027d74 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08027d76 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027d78 */ LDRSH R1, [R1, R2] \n\
/* 08027d7a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027d7c */ BL sprite_set_visible \n\
/* 08027d80 */ LDR R0, [R4] \n\
/* 08027d82 */ LDR R3, =0x00000566 \n\
/* 08027d84 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08027d86 */ LDRH R0, [R0] \n\
/* 08027d88 */ BL set_beatscript_tempo \n\
/* 08027d8c */ LDR R0, [R4] \n\
/* 08027d8e */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08027d90 */ STRB R5, [R0] \n\
/* 08027d92 */ B branch_08027de0 \n\
\n\
.ltorg \n\
 \n\
branch_08027da0: \n\
/* 08027da0 */ LDR R0, =D_03004afc \n\
/* 08027da2 */ LDRH R1, [R0] \n\
/* 08027da4 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08027da6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08027da8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027daa */ BEQ branch_08027de8 \n\
/* 08027dac */ LDR R0, =gSpriteHandler \n\
/* 08027dae */ LDR R0, [R0] \n\
/* 08027db0 */ MOVS R3, 0xAC @ Set R3 to 0xAC \n\
/* 08027db2 */ LSLS R3, R3, 0x3 \n\
/* 08027db4 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08027db6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027db8 */ LDRSH R1, [R1, R2] \n\
/* 08027dba */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08027dbc */ BL sprite_set_visible \n\
/* 08027dc0 */ BL get_beatscript_tempo \n\
/* 08027dc4 */ LDR R1, [R4] \n\
/* 08027dc6 */ LDR R3, =0x00000566 \n\
/* 08027dc8 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08027dca */ STRH R0, [R1] \n\
/* 08027dcc */ LDRH R1, [R1] \n\
/* 08027dce */ LSLS R0, R1, 0x2 \n\
/* 08027dd0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027dd2 */ LSRS R0, R0, 0x3 \n\
/* 08027dd4 */ BL set_beatscript_tempo \n\
/* 08027dd8 */ LDR R0, [R4] \n\
/* 08027dda */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08027ddc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08027dde */ STRB R1, [R0] \n\
 \n\
branch_08027de0: \n\
/* 08027de0 */ LDR R0, [R4] \n\
/* 08027de2 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08027de4 */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 08027de6 */ STRH R1, [R0] \n\
 \n\
branch_08027de8: \n\
/* 08027de8 */ POP {R4-R7} \n\
/* 08027dea */ POP {R0} \n\
/* 08027dec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
