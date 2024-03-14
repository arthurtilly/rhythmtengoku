asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022894 \n\
/* 08022894 */ PUSH {R4, R5, LR} \n\
/* 08022896 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08022898 */ LDR R4, =gSpriteHandler \n\
/* 0802289a */ LDR R0, [R4] \n\
/* 0802289c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802289e */ LDRSH R1, [R5, R2] \n\
/* 080228a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080228a2 */ BL sprite_set_visible \n\
/* 080228a6 */ LDR R0, [R4] \n\
/* 080228a8 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080228aa */ LDRSH R1, [R5, R2] \n\
/* 080228ac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080228ae */ BL sprite_set_visible \n\
/* 080228b2 */ LDR R0, [R4] \n\
/* 080228b4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080228b6 */ LDRSH R1, [R5, R2] \n\
/* 080228b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080228ba */ BL sprite_set_visible \n\
/* 080228be */ LDR R0, [R4] \n\
/* 080228c0 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 080228c2 */ LDRSH R1, [R5, R2] \n\
/* 080228c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080228c6 */ BL sprite_set_visible \n\
/* 080228ca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080228cc */ STRB R0, [R5] \n\
/* 080228ce */ POP {R4, R5} \n\
/* 080228d0 */ POP {R0} \n\
/* 080228d2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
