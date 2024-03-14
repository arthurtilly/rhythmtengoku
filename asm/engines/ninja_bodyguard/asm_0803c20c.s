asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c20c \n\
/* 0803c20c */ PUSH {R4, R5, LR} \n\
/* 0803c20e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803c210 */ BL scene_show_bg_layer \n\
/* 0803c214 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803c216 */ LDR R1, =gCurrentEngineData \n\
/* 0803c218 */ LDR R0, [R1] \n\
/* 0803c21a */ MOVS R2, 0xB6 @ Set R2 to 0xB6 \n\
/* 0803c21c */ LSLS R2, R2, 0x2 \n\
/* 0803c21e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803c220 */ LDRH R0, [R0] \n\
/* 0803c222 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803c224 */ BCS branch_0803c252 \n\
/* 0803c226 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
 \n\
branch_0803c228: \n\
/* 0803c228 */ LDR R0, =gSpriteHandler \n\
/* 0803c22a */ LDR R0, [R0] \n\
/* 0803c22c */ LDR R1, [R5] \n\
/* 0803c22e */ LSLS R2, R4, 0x1 \n\
/* 0803c230 */ MOVS R3, 0xB7 @ Set R3 to 0xB7 \n\
/* 0803c232 */ LSLS R3, R3, 0x2 \n\
/* 0803c234 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803c236 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c238 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c23a */ LDRSH R1, [R1, R2] \n\
/* 0803c23c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c23e */ BL sprite_set_visible \n\
/* 0803c242 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0803c244 */ LDR R0, [R5] \n\
/* 0803c246 */ MOVS R3, 0xB6 @ Set R3 to 0xB6 \n\
/* 0803c248 */ LSLS R3, R3, 0x2 \n\
/* 0803c24a */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803c24c */ LDRH R0, [R0] \n\
/* 0803c24e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803c250 */ BCC branch_0803c228 \n\
 \n\
branch_0803c252: \n\
/* 0803c252 */ POP {R4, R5} \n\
/* 0803c254 */ POP {R0} \n\
/* 0803c256 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
