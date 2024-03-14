asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080275a8 \n\
/* 080275a8 */ PUSH {LR} \n\
/* 080275aa */ LDR R0, =gCurrentEngineData \n\
/* 080275ac */ LDR R1, [R0] \n\
/* 080275ae */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 080275b0 */ LSLS R0, R0, 0x2 \n\
/* 080275b2 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080275b4 */ LDR R0, =gSpriteHandler \n\
/* 080275b6 */ LDR R0, [R0] \n\
/* 080275b8 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 080275ba */ LDRSH R1, [R1, R2] \n\
/* 080275bc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080275be */ BL sprite_set_visible \n\
/* 080275c2 */ POP {R0} \n\
/* 080275c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
