asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033f80 \n\
/* 08033f80 */ PUSH {R4-R7, LR} \n\
/* 08033f82 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08033f84 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08033f86 */ BL scene_set_bg_layer_priority \n\
/* 08033f8a */ LDR R1, =D_03004b10 \n\
/* 08033f8c */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08033f8e */ STRH R0, [R1, 0x16] \n\
/* 08033f90 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08033f92 */ LDR R1, =gCurrentEngineData \n\
/* 08033f94 */ LDR R0, [R1] \n\
/* 08033f96 */ LDRH R0, [R0, 0xC] \n\
/* 08033f98 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08033f9a */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08033f9c */ BGE branch_08033fd0 \n\
/* 08033f9e */ LDR R7, =gSpriteHandler \n\
/* 08033fa0 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
 \n\
branch_08033fa2: \n\
/* 08033fa2 */ LDR R0, [R7] \n\
/* 08033fa4 */ LDR R1, [R6] \n\
/* 08033fa6 */ LSLS R4, R5, 0x1 \n\
/* 08033fa8 */ ADDS R1, 0xE @ Add 0xE to R1 \n\
/* 08033faa */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08033fac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033fae */ LDRSH R1, [R1, R2] \n\
/* 08033fb0 */ BL sprite_delete \n\
/* 08033fb4 */ LDR R0, [R7] \n\
/* 08033fb6 */ LDR R1, [R6] \n\
/* 08033fb8 */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 08033fba */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08033fbc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033fbe */ LDRSH R1, [R1, R2] \n\
/* 08033fc0 */ BL sprite_delete \n\
/* 08033fc4 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08033fc6 */ LDR R0, [R6] \n\
/* 08033fc8 */ LDRH R0, [R0, 0xC] \n\
/* 08033fca */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08033fcc */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08033fce */ BLT branch_08033fa2 \n\
 \n\
branch_08033fd0: \n\
/* 08033fd0 */ LDR R0, =gSpriteHandler \n\
/* 08033fd2 */ LDR R0, [R0] \n\
/* 08033fd4 */ LDR R1, =gCurrentEngineData \n\
/* 08033fd6 */ LDR R1, [R1] \n\
/* 08033fd8 */ LSLS R2, R5, 0x1 \n\
/* 08033fda */ ADDS R1, 0xE @ Add 0xE to R1 \n\
/* 08033fdc */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08033fde */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033fe0 */ LDRSH R1, [R1, R2] \n\
/* 08033fe2 */ BL sprite_delete \n\
/* 08033fe6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08033fe8 */ BL func_08033e00 \n\
/* 08033fec */ BL func_0803397c \n\
/* 08033ff0 */ POP {R4-R7} \n\
/* 08033ff2 */ POP {R0} \n\
/* 08033ff4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
