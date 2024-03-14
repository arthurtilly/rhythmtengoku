asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027350 \n\
/* 08027350 */ PUSH {R4, R5, LR} \n\
/* 08027352 */ LDR R0, =gCurrentEngineData \n\
/* 08027354 */ LDR R4, [R0] \n\
/* 08027356 */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 08027358 */ LSLS R0, R0, 0x2 \n\
/* 0802735a */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802735c */ LDR R5, =gSpriteHandler \n\
/* 0802735e */ LDR R0, [R5] \n\
/* 08027360 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 08027362 */ LDRSH R1, [R4, R2] \n\
/* 08027364 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027366 */ BL sprite_set_anim_cel \n\
/* 0802736a */ LDR R0, [R5] \n\
/* 0802736c */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0802736e */ LDRSH R1, [R4, R2] \n\
/* 08027370 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027372 */ BL sprite_set_anim_cel \n\
/* 08027376 */ LDR R0, [R5] \n\
/* 08027378 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802737a */ LDRSH R1, [R4, R2] \n\
/* 0802737c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802737e */ BL sprite_set_anim_cel \n\
/* 08027382 */ LDR R0, [R5] \n\
/* 08027384 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08027386 */ LDRSH R1, [R4, R2] \n\
/* 08027388 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802738a */ BL sprite_set_anim_cel \n\
/* 0802738e */ POP {R4, R5} \n\
/* 08027390 */ POP {R0} \n\
/* 08027392 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
