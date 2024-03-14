asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023da4 \n\
/* 08023da4 */ PUSH {R4-R6, LR} \n\
/* 08023da6 */ LDR R0, =gCurrentEngineData \n\
/* 08023da8 */ LDR R6, [R0] \n\
/* 08023daa */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08023dac */ LSLS R0, R0, 0x2 \n\
/* 08023dae */ ADDS R5, R6, R0 @ Set R5 to R6 + R0 \n\
/* 08023db0 */ LDR R4, =gSpriteHandler \n\
/* 08023db2 */ LDR R0, [R4] \n\
/* 08023db4 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08023db6 */ LDRSH R1, [R5, R2] \n\
/* 08023db8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023dba */ BL sprite_set_anim_cel \n\
/* 08023dbe */ LDR R0, [R4] \n\
/* 08023dc0 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 08023dc2 */ LDRSH R1, [R5, R2] \n\
/* 08023dc4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023dc6 */ BL sprite_set_anim_cel \n\
/* 08023dca */ LDR R0, [R4] \n\
/* 08023dcc */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08023dce */ LDRSH R1, [R5, R2] \n\
/* 08023dd0 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08023dd2 */ BL sprite_set_anim_cel \n\
/* 08023dd6 */ MOVS R1, 0x12 @ Set R1 to 0x12 \n\
/* 08023dd8 */ LDRSH R0, [R5, R1] \n\
/* 08023dda */ LDR R2, =0x00000376 \n\
/* 08023ddc */ ADDS R6, R6, R2 @ Set R6 to R6 + R2 \n\
/* 08023dde */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08023de0 */ BL func_08023d78 \n\
/* 08023de4 */ POP {R4-R6} \n\
/* 08023de6 */ POP {R0} \n\
/* 08023de8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
