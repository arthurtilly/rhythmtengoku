asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bbd8 \n\
/* 0803bbd8 */ PUSH {R4, LR} \n\
/* 0803bbda */ LDR R1, =gCurrentEngineData \n\
/* 0803bbdc */ LDR R1, [R1] \n\
/* 0803bbde */ LDR R2, [R0, 0x4] \n\
/* 0803bbe0 */ LDR R1, [R1, 0x34] \n\
/* 0803bbe2 */ SUBS R2, R2, R1 @ Set R2 to R2 - R1 \n\
/* 0803bbe4 */ STR R2, [R0, 0x4] \n\
/* 0803bbe6 */ LDR R1, =gSpriteHandler \n\
/* 0803bbe8 */ LDR R3, [R1] \n\
/* 0803bbea */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803bbec */ LDRSH R1, [R0, R4] \n\
/* 0803bbee */ LSLS R2, R2, 0x8 \n\
/* 0803bbf0 */ ASRS R2, R2, 0x10 \n\
/* 0803bbf2 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803bbf4 */ BL sprite_set_x \n\
/* 0803bbf8 */ POP {R4} \n\
/* 0803bbfa */ POP {R0} \n\
/* 0803bbfc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
