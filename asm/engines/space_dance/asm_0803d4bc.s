asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d4bc \n\
/* 0803d4bc */ PUSH {LR} \n\
/* 0803d4be */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d4c0 */ LDR R0, =gSpriteHandler \n\
/* 0803d4c2 */ LDR R0, [R0] \n\
/* 0803d4c4 */ LDR R1, =gCurrentEngineData \n\
/* 0803d4c6 */ LDR R1, [R1] \n\
/* 0803d4c8 */ MOVS R3, 0x2C @ Set R3 to 0x2C \n\
/* 0803d4ca */ LDRSH R1, [R1, R3] \n\
/* 0803d4cc */ LSLS R2, R2, 0x18 \n\
/* 0803d4ce */ ASRS R2, R2, 0x18 \n\
/* 0803d4d0 */ BL sprite_set_anim_cel \n\
/* 0803d4d4 */ POP {R0} \n\
/* 0803d4d6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
