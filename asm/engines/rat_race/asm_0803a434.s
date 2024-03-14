asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a434 \n\
/* 0803a434 */ PUSH {LR} \n\
/* 0803a436 */ LDR R0, =gSpriteHandler \n\
/* 0803a438 */ LDR R0, [R0] \n\
/* 0803a43a */ LDR R1, =gCurrentEngineData \n\
/* 0803a43c */ LDR R1, [R1] \n\
/* 0803a43e */ ADDS R1, 0x6C @ Add 0x6C to R1 \n\
/* 0803a440 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a442 */ LDRSH R1, [R1, R2] \n\
/* 0803a444 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a446 */ BL sprite_set_visible \n\
/* 0803a44a */ POP {R0} \n\
/* 0803a44c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
