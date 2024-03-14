asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08028744 \n\
/* 08028744 */ PUSH {R4, R5, LR} \n\
/* 08028746 */ LDR R0, =gCurrentEngineData \n\
/* 08028748 */ LDR R4, [R0] \n\
/* 0802874a */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 0802874c */ LSLS R0, R0, 0x2 \n\
/* 0802874e */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08028750 */ LDR R5, =gSpriteHandler \n\
/* 08028752 */ LDR R0, [R5] \n\
/* 08028754 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08028756 */ LDRSH R1, [R4, R2] \n\
/* 08028758 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802875a */ BL sprite_set_visible \n\
/* 0802875e */ LDR R0, [R5] \n\
/* 08028760 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08028762 */ LDRSH R1, [R4, R2] \n\
/* 08028764 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028766 */ BL sprite_set_visible \n\
/* 0802876a */ LDR R0, [R5] \n\
/* 0802876c */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802876e */ LDRSH R1, [R4, R2] \n\
/* 08028770 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028772 */ BL sprite_set_visible \n\
/* 08028776 */ LDR R0, [R5] \n\
/* 08028778 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802877a */ LDRSH R1, [R4, R2] \n\
/* 0802877c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802877e */ BL sprite_set_visible \n\
/* 08028782 */ LDR R0, [R5] \n\
/* 08028784 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08028786 */ LDRSH R1, [R4, R2] \n\
/* 08028788 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802878a */ BL sprite_set_visible \n\
/* 0802878e */ LDR R0, [R5] \n\
/* 08028790 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08028792 */ LDRSH R1, [R4, R2] \n\
/* 08028794 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028796 */ BL sprite_set_visible \n\
/* 0802879a */ LDR R0, [R5] \n\
/* 0802879c */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0802879e */ LDRSH R1, [R4, R2] \n\
/* 080287a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080287a2 */ BL sprite_set_visible \n\
/* 080287a6 */ POP {R4, R5} \n\
/* 080287a8 */ POP {R0} \n\
/* 080287aa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
