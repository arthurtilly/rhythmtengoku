asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080283ac \n\
/* 080283ac */ PUSH {R4, R5, LR} \n\
/* 080283ae */ LDR R0, =gCurrentEngineData \n\
/* 080283b0 */ LDR R4, [R0] \n\
/* 080283b2 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 080283b4 */ LSLS R0, R0, 0x2 \n\
/* 080283b6 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080283b8 */ LDR R5, =gSpriteHandler \n\
/* 080283ba */ LDR R0, [R5] \n\
/* 080283bc */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 080283be */ LDRSH R1, [R4, R2] \n\
/* 080283c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080283c2 */ BL sprite_set_anim_cel \n\
/* 080283c6 */ LDR R0, [R5] \n\
/* 080283c8 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080283ca */ LDRSH R1, [R4, R2] \n\
/* 080283cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080283ce */ BL sprite_set_anim_cel \n\
/* 080283d2 */ LDR R0, [R5] \n\
/* 080283d4 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080283d6 */ LDRSH R1, [R4, R2] \n\
/* 080283d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080283da */ BL sprite_set_anim_cel \n\
/* 080283de */ LDR R0, [R5] \n\
/* 080283e0 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080283e2 */ LDRSH R1, [R4, R2] \n\
/* 080283e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080283e6 */ BL sprite_set_anim_cel \n\
/* 080283ea */ POP {R4, R5} \n\
/* 080283ec */ POP {R0} \n\
/* 080283ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
