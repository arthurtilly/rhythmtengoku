asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033b9c \n\
/* 08033b9c */ PUSH {R4-R7, LR} \n\
/* 08033b9e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08033ba0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08033ba2 */ BL scene_set_bg_layer_priority \n\
/* 08033ba6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08033ba8 */ LDR R1, =gCurrentEngineData \n\
/* 08033baa */ LDR R0, [R1] \n\
/* 08033bac */ LDRH R0, [R0, 0xC] \n\
/* 08033bae */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08033bb0 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08033bb2 */ BGE branch_08033bec \n\
/* 08033bb4 */ LDR R7, =gSpriteHandler \n\
/* 08033bb6 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
 \n\
branch_08033bb8: \n\
/* 08033bb8 */ LDR R0, [R7] \n\
/* 08033bba */ LDR R1, [R6] \n\
/* 08033bbc */ LSLS R4, R5, 0x1 \n\
/* 08033bbe */ ADDS R1, 0xE @ Add 0xE to R1 \n\
/* 08033bc0 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08033bc2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033bc4 */ LDRSH R1, [R1, R2] \n\
/* 08033bc6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08033bc8 */ LSLS R2, R2, 0x4 \n\
/* 08033bca */ BL sprite_set_z \n\
/* 08033bce */ LDR R0, [R7] \n\
/* 08033bd0 */ LDR R1, [R6] \n\
/* 08033bd2 */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 08033bd4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08033bd6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033bd8 */ LDRSH R1, [R1, R2] \n\
/* 08033bda */ LDR R2, =0x801 \n\
/* 08033bdc */ BL sprite_set_z \n\
/* 08033be0 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08033be2 */ LDR R0, [R6] \n\
/* 08033be4 */ LDRH R0, [R0, 0xC] \n\
/* 08033be6 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08033be8 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08033bea */ BLT branch_08033bb8 \n\
 \n\
branch_08033bec: \n\
/* 08033bec */ LDR R0, =gSpriteHandler \n\
/* 08033bee */ LDR R0, [R0] \n\
/* 08033bf0 */ LDR R4, =gCurrentEngineData \n\
/* 08033bf2 */ LDR R1, [R4] \n\
/* 08033bf4 */ LSLS R2, R5, 0x1 \n\
/* 08033bf6 */ ADDS R1, 0xE @ Add 0xE to R1 \n\
/* 08033bf8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08033bfa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033bfc */ LDRSH R1, [R1, R2] \n\
/* 08033bfe */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08033c00 */ LSLS R2, R2, 0x4 \n\
/* 08033c02 */ BL sprite_set_z \n\
/* 08033c06 */ LDR R1, [R4] \n\
/* 08033c08 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08033c0a */ ADDS R2, 0x92 @ Add 0x92 to R2 \n\
/* 08033c0c */ LDR R0, =0xfffe \n\
/* 08033c0e */ STRH R0, [R2] \n\
/* 08033c10 */ ADDS R1, 0x94 @ Add 0x94 to R1 \n\
/* 08033c12 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08033c14 */ STRH R0, [R1] \n\
/* 08033c16 */ POP {R4-R7} \n\
/* 08033c18 */ POP {R0} \n\
/* 08033c1a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
