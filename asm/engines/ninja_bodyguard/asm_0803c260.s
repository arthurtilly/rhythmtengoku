asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c260 \n\
/* 0803c260 */ PUSH {LR} \n\
/* 0803c262 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803c264 */ BL scene_show_bg_layer \n\
/* 0803c268 */ LDR R0, =gSpriteHandler \n\
/* 0803c26a */ LDR R0, [R0] \n\
/* 0803c26c */ LDR R1, =gCurrentEngineData \n\
/* 0803c26e */ LDR R1, [R1] \n\
/* 0803c270 */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 0803c272 */ LSLS R2, R2, 0x2 \n\
/* 0803c274 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c276 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c278 */ LDRSH R1, [R1, R2] \n\
/* 0803c27a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c27c */ BL sprite_set_visible \n\
/* 0803c280 */ POP {R0} \n\
/* 0803c282 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
