asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033f08 \n\
/* 08033f08 */ PUSH {LR} \n\
/* 08033f0a */ LDR R0, =gSpriteHandler \n\
/* 08033f0c */ LDR R0, [R0] \n\
/* 08033f0e */ LDR R1, =gCurrentEngineData \n\
/* 08033f10 */ LDR R1, [R1] \n\
/* 08033f12 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08033f14 */ LDRSH R1, [R1, R2] \n\
/* 08033f16 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033f18 */ BL sprite_set_anim_cel \n\
/* 08033f1c */ POP {R0} \n\
/* 08033f1e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
