asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027304 \n\
/* 08027304 */ PUSH {R4, R5, LR} \n\
/* 08027306 */ LDR R0, =gCurrentEngineData \n\
/* 08027308 */ LDR R4, [R0] \n\
/* 0802730a */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 0802730c */ LSLS R0, R0, 0x2 \n\
/* 0802730e */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08027310 */ LDR R5, =gSpriteHandler \n\
/* 08027312 */ LDR R0, [R5] \n\
/* 08027314 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08027316 */ LDRSH R1, [R4, R2] \n\
/* 08027318 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802731a */ BL sprite_set_anim_cel \n\
/* 0802731e */ LDR R0, [R5] \n\
/* 08027320 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08027322 */ LDRSH R1, [R4, R2] \n\
/* 08027324 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027326 */ BL sprite_set_anim_cel \n\
/* 0802732a */ LDR R0, [R5] \n\
/* 0802732c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802732e */ LDRSH R1, [R4, R2] \n\
/* 08027330 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027332 */ BL sprite_set_anim_cel \n\
/* 08027336 */ LDR R0, [R5] \n\
/* 08027338 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0802733a */ LDRSH R1, [R4, R2] \n\
/* 0802733c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802733e */ BL sprite_set_anim_cel \n\
/* 08027342 */ POP {R4, R5} \n\
/* 08027344 */ POP {R0} \n\
/* 08027346 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
