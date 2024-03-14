asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c28c \n\
/* 0803c28c */ PUSH {LR} \n\
/* 0803c28e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803c290 */ BL scene_show_bg_layer \n\
/* 0803c294 */ LDR R0, =gSpriteHandler \n\
/* 0803c296 */ LDR R0, [R0] \n\
/* 0803c298 */ LDR R1, =gCurrentEngineData \n\
/* 0803c29a */ LDR R1, [R1] \n\
/* 0803c29c */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 0803c29e */ LSLS R2, R2, 0x2 \n\
/* 0803c2a0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c2a2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c2a4 */ LDRSH R1, [R1, R2] \n\
/* 0803c2a6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c2a8 */ BL sprite_set_visible \n\
/* 0803c2ac */ POP {R0} \n\
/* 0803c2ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
