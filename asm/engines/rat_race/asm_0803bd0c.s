asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bd0c \n\
/* 0803bd0c */ PUSH {R4, LR} \n\
/* 0803bd0e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803bd10 */ LDR R0, =gCurrentEngineData \n\
/* 0803bd12 */ LDR R1, [R0] \n\
/* 0803bd14 */ LDR R0, [R4, 0x4] \n\
/* 0803bd16 */ LDR R1, [R1, 0x34] \n\
/* 0803bd18 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0803bd1a */ STR R0, [R4, 0x4] \n\
/* 0803bd1c */ ASRS R0, R0, 0x8 \n\
/* 0803bd1e */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 0803bd20 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0803bd22 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0803bd24 */ BGT branch_0803bd38 \n\
/* 0803bd26 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803bd28 */ STRB R0, [R4, 0x2] \n\
/* 0803bd2a */ LDR R0, =gSpriteHandler \n\
/* 0803bd2c */ LDR R0, [R0] \n\
/* 0803bd2e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bd30 */ LDRSH R1, [R4, R2] \n\
/* 0803bd32 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bd34 */ BL sprite_set_visible \n\
 \n\
branch_0803bd38: \n\
/* 0803bd38 */ LDR R0, =gSpriteHandler \n\
/* 0803bd3a */ LDR R0, [R0] \n\
/* 0803bd3c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bd3e */ LDRSH R1, [R4, R2] \n\
/* 0803bd40 */ LDR R2, [R4, 0x4] \n\
/* 0803bd42 */ LSLS R2, R2, 0x8 \n\
/* 0803bd44 */ ASRS R2, R2, 0x10 \n\
/* 0803bd46 */ BL sprite_set_x \n\
/* 0803bd4a */ POP {R4} \n\
/* 0803bd4c */ POP {R0} \n\
/* 0803bd4e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
