asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027c90 \n\
/* 08027c90 */ PUSH {R4, R5, LR} \n\
/* 08027c92 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08027c94 */ LDR R5, =gCurrentEngineData \n\
/* 08027c96 */ LDR R1, [R5] \n\
/* 08027c98 */ LDR R2, =0x00000562 \n\
/* 08027c9a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08027c9c */ LDRB R0, [R0] \n\
/* 08027c9e */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08027ca0 */ BEQ branch_08027ce8 \n\
/* 08027ca2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08027ca4 */ BNE branch_08027cde \n\
/* 08027ca6 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08027ca8 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08027caa */ LDRB R0, [R0] \n\
/* 08027cac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027cae */ BEQ branch_08027cde \n\
/* 08027cb0 */ LDR R0, =gSpriteHandler \n\
/* 08027cb2 */ LDR R0, [R0] \n\
/* 08027cb4 */ SUBS R2, 0x3 @ Subtract 0x3 from R2 \n\
/* 08027cb6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08027cb8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027cba */ LDRSH R1, [R1, R2] \n\
/* 08027cbc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027cbe */ BL sprite_set_visible \n\
/* 08027cc2 */ LDR R0, [R5] \n\
/* 08027cc4 */ LDR R1, =0x00000566 \n\
/* 08027cc6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027cc8 */ LDRH R0, [R0] \n\
/* 08027cca */ BL set_beatscript_tempo \n\
/* 08027cce */ LDR R0, [R5] \n\
/* 08027cd0 */ LDR R2, =0x00000563 \n\
/* 08027cd2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08027cd4 */ STRB R4, [R0] \n\
/* 08027cd6 */ LDR R0, [R5] \n\
/* 08027cd8 */ LDR R1, =0x00000564 \n\
/* 08027cda */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027cdc */ STRH R4, [R0] \n\
 \n\
branch_08027cde: \n\
/* 08027cde */ LDR R0, =gCurrentEngineData \n\
/* 08027ce0 */ LDR R0, [R0] \n\
/* 08027ce2 */ LDR R2, =0x00000562 \n\
/* 08027ce4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08027ce6 */ STRB R4, [R0] \n\
 \n\
branch_08027ce8: \n\
/* 08027ce8 */ POP {R4, R5} \n\
/* 08027cea */ POP {R0} \n\
/* 08027cec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
