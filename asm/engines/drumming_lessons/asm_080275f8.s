asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080275f8 \n\
/* 080275f8 */ PUSH {R4, R5, LR} \n\
/* 080275fa */ LDR R0, =gCurrentEngineData \n\
/* 080275fc */ LDR R4, [R0] \n\
/* 080275fe */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08027600 */ LSLS R0, R0, 0x2 \n\
/* 08027602 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08027604 */ LDR R5, =gSpriteHandler \n\
/* 08027606 */ LDR R0, [R5] \n\
/* 08027608 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802760a */ LDRSH R1, [R4, R2] \n\
/* 0802760c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802760e */ BL sprite_set_visible \n\
/* 08027612 */ LDR R0, [R5] \n\
/* 08027614 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08027616 */ LDRSH R1, [R4, R2] \n\
/* 08027618 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802761a */ BL sprite_set_visible \n\
/* 0802761e */ LDR R0, [R5] \n\
/* 08027620 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08027622 */ LDRSH R1, [R4, R2] \n\
/* 08027624 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027626 */ BL sprite_set_visible \n\
/* 0802762a */ LDR R0, [R5] \n\
/* 0802762c */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802762e */ LDRSH R1, [R4, R2] \n\
/* 08027630 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027632 */ BL sprite_set_visible \n\
/* 08027636 */ LDR R0, [R5] \n\
/* 08027638 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0802763a */ LDRSH R1, [R4, R2] \n\
/* 0802763c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802763e */ BL sprite_set_visible \n\
/* 08027642 */ LDR R0, [R5] \n\
/* 08027644 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08027646 */ LDRSH R1, [R4, R2] \n\
/* 08027648 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802764a */ BL sprite_set_visible \n\
/* 0802764e */ LDR R0, [R5] \n\
/* 08027650 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 08027652 */ LDRSH R1, [R4, R2] \n\
/* 08027654 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027656 */ BL sprite_set_visible \n\
/* 0802765a */ POP {R4, R5} \n\
/* 0802765c */ POP {R0} \n\
/* 0802765e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
