asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080283f8 \n\
/* 080283f8 */ PUSH {R4, R5, LR} \n\
/* 080283fa */ LDR R0, =gCurrentEngineData \n\
/* 080283fc */ LDR R4, [R0] \n\
/* 080283fe */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08028400 */ LSLS R0, R0, 0x2 \n\
/* 08028402 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08028404 */ LDR R5, =gSpriteHandler \n\
/* 08028406 */ LDR R0, [R5] \n\
/* 08028408 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 0802840a */ LDRSH R1, [R4, R2] \n\
/* 0802840c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802840e */ BL sprite_set_anim_cel \n\
/* 08028412 */ LDR R0, [R5] \n\
/* 08028414 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08028416 */ LDRSH R1, [R4, R2] \n\
/* 08028418 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802841a */ BL sprite_set_anim_cel \n\
/* 0802841e */ LDR R0, [R5] \n\
/* 08028420 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08028422 */ LDRSH R1, [R4, R2] \n\
/* 08028424 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028426 */ BL sprite_set_anim_cel \n\
/* 0802842a */ LDR R0, [R5] \n\
/* 0802842c */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0802842e */ LDRSH R1, [R4, R2] \n\
/* 08028430 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028432 */ BL sprite_set_anim_cel \n\
/* 08028436 */ POP {R4, R5} \n\
/* 08028438 */ POP {R0} \n\
/* 0802843a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
