asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023df8 \n\
/* 08023df8 */ PUSH {R4-R6, LR} \n\
/* 08023dfa */ LDR R0, =gCurrentEngineData \n\
/* 08023dfc */ LDR R6, [R0] \n\
/* 08023dfe */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08023e00 */ LSLS R0, R0, 0x2 \n\
/* 08023e02 */ ADDS R5, R6, R0 @ Set R5 to R6 + R0 \n\
/* 08023e04 */ LDR R4, =gSpriteHandler \n\
/* 08023e06 */ LDR R0, [R4] \n\
/* 08023e08 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08023e0a */ LDRSH R1, [R5, R2] \n\
/* 08023e0c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023e0e */ BL sprite_set_anim_cel \n\
/* 08023e12 */ LDR R0, [R4] \n\
/* 08023e14 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08023e16 */ LDRSH R1, [R5, R2] \n\
/* 08023e18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023e1a */ BL sprite_set_anim_cel \n\
/* 08023e1e */ LDR R0, [R4] \n\
/* 08023e20 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08023e22 */ LDRSH R1, [R5, R2] \n\
/* 08023e24 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08023e26 */ BL sprite_set_anim_cel \n\
/* 08023e2a */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 08023e2c */ LDRSH R0, [R5, R1] \n\
/* 08023e2e */ LDR R2, =0x00000377 \n\
/* 08023e30 */ ADDS R6, R6, R2 @ Set R6 to R6 + R2 \n\
/* 08023e32 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08023e34 */ BL func_08023d78 \n\
/* 08023e38 */ POP {R4-R6} \n\
/* 08023e3a */ POP {R0} \n\
/* 08023e3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
