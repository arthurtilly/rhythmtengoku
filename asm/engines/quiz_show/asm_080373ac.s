asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080373ac \n\
/* 080373ac */ PUSH {R4, R5, LR} \n\
/* 080373ae */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080373b0 */ LDR R0, =gSpriteHandler \n\
/* 080373b2 */ LDR R0, [R0] \n\
/* 080373b4 */ LDR R4, =gCurrentEngineData \n\
/* 080373b6 */ LDR R1, [R4] \n\
/* 080373b8 */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 080373ba */ LDRSH R1, [R1, R2] \n\
/* 080373bc */ LSLS R2, R5, 0x10 \n\
/* 080373be */ LSRS R2, R2, 0x10 \n\
/* 080373c0 */ BL sprite_set_visible \n\
/* 080373c4 */ LDR R0, [R4] \n\
/* 080373c6 */ LDR R0, [R0, 0x34] \n\
/* 080373c8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080373ca */ BL affine_sprite_set_visible \n\
/* 080373ce */ POP {R4, R5} \n\
/* 080373d0 */ POP {R0} \n\
/* 080373d2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
