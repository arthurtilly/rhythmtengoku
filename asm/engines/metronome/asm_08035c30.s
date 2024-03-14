asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start metronome_common_display_text \n\
/* 08035c30 */ PUSH {R4-R6, LR} \n\
/* 08035c32 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08035c34 */ LDR R6, =gSpriteHandler \n\
/* 08035c36 */ LDR R0, [R6] \n\
/* 08035c38 */ LDR R4, =gCurrentEngineData \n\
/* 08035c3a */ LDR R1, [R4] \n\
/* 08035c3c */ MOVS R2, 0x22 @ Set R2 to 0x22 \n\
/* 08035c3e */ LDRSH R1, [R1, R2] \n\
/* 08035c40 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035c42 */ BL sprite_set_visible \n\
/* 08035c46 */ LDR R0, [R6] \n\
/* 08035c48 */ LDR R1, [R4] \n\
/* 08035c4a */ MOVS R2, 0x24 @ Set R2 to 0x24 \n\
/* 08035c4c */ LDRSH R1, [R1, R2] \n\
/* 08035c4e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035c50 */ BL sprite_set_visible \n\
/* 08035c54 */ LDR R0, [R6] \n\
/* 08035c56 */ LDR R1, [R4] \n\
/* 08035c58 */ MOVS R2, 0x26 @ Set R2 to 0x26 \n\
/* 08035c5a */ LDRSH R1, [R1, R2] \n\
/* 08035c5c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035c5e */ BL sprite_set_visible \n\
/* 08035c62 */ LDR R0, [R4] \n\
/* 08035c64 */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 08035c66 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08035c68 */ STRB R1, [R0] \n\
/* 08035c6a */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 08035c6c */ BEQ branch_08035c96 \n\
/* 08035c6e */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 08035c70 */ BGT branch_08035c80 \n\
/* 08035c72 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08035c74 */ BEQ branch_08035c86 \n\
/* 08035c76 */ B branch_08035cf2 \n\
\n\
.ltorg \n\
 \n\
branch_08035c80: \n\
/* 08035c80 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 08035c82 */ BEQ branch_08035ce4 \n\
/* 08035c84 */ B branch_08035cf2 \n\
 \n\
branch_08035c86: \n\
/* 08035c86 */ LDR R0, [R6] \n\
/* 08035c88 */ LDR R1, [R4] \n\
/* 08035c8a */ MOVS R2, 0x22 @ Set R2 to 0x22 \n\
/* 08035c8c */ LDRSH R1, [R1, R2] \n\
/* 08035c8e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035c90 */ BL sprite_set_visible \n\
/* 08035c94 */ B branch_08035cf2 \n\
 \n\
branch_08035c96: \n\
/* 08035c96 */ LDR R0, [R6] \n\
/* 08035c98 */ LDR R1, [R4] \n\
/* 08035c9a */ MOVS R2, 0x24 @ Set R2 to 0x24 \n\
/* 08035c9c */ LDRSH R1, [R1, R2] \n\
/* 08035c9e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035ca0 */ BL sprite_set_visible \n\
/* 08035ca4 */ LDR R0, [R4] \n\
/* 08035ca6 */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 08035ca8 */ STRB R5, [R0] \n\
/* 08035caa */ LDR R0, [R6] \n\
/* 08035cac */ LDR R1, [R4] \n\
/* 08035cae */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08035cb0 */ LDRSH R1, [R1, R2] \n\
/* 08035cb2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035cb4 */ BL sprite_set_visible \n\
/* 08035cb8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08035cba: \n\
/* 08035cba */ LDR R0, =gSpriteHandler \n\
/* 08035cbc */ LDR R0, [R0] \n\
/* 08035cbe */ LDR R1, =gCurrentEngineData \n\
/* 08035cc0 */ LDR R1, [R1] \n\
/* 08035cc2 */ LSLS R2, R4, 0x1 \n\
/* 08035cc4 */ ADDS R1, 0x16 @ Add 0x16 to R1 \n\
/* 08035cc6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08035cc8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035cca */ LDRSH R1, [R1, R2] \n\
/* 08035ccc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035cce */ BL sprite_set_visible \n\
/* 08035cd2 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08035cd4 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08035cd6 */ BLS branch_08035cba \n\
/* 08035cd8 */ B branch_08035cf2 \n\
\n\
.ltorg \n\
 \n\
branch_08035ce4: \n\
/* 08035ce4 */ LDR R0, [R6] \n\
/* 08035ce6 */ LDR R1, [R4] \n\
/* 08035ce8 */ MOVS R2, 0x26 @ Set R2 to 0x26 \n\
/* 08035cea */ LDRSH R1, [R1, R2] \n\
/* 08035cec */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035cee */ BL sprite_set_visible \n\
 \n\
branch_08035cf2: \n\
/* 08035cf2 */ POP {R4-R6} \n\
/* 08035cf4 */ POP {R0} \n\
/* 08035cf6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
