asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080347c0 \n\
/* 080347c0 */ PUSH {R4-R6, LR} \n\
/* 080347c2 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080347c4 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080347c6 */ BGE branch_080347e8 \n\
/* 080347c8 */ LDR R0, =gSpriteHandler \n\
/* 080347ca */ LDR R0, [R0] \n\
/* 080347cc */ LDR R1, =gCurrentEngineData \n\
/* 080347ce */ LDR R1, [R1] \n\
/* 080347d0 */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 080347d2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080347d4 */ LDRSH R1, [R1, R2] \n\
/* 080347d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080347d8 */ BL sprite_set_visible \n\
/* 080347dc */ B branch_0803480e \n\
\n\
.ltorg \n\
 \n\
branch_080347e8: \n\
/* 080347e8 */ LDR R5, =gSpriteHandler \n\
/* 080347ea */ LDR R0, [R5] \n\
/* 080347ec */ LDR R4, =gCurrentEngineData \n\
/* 080347ee */ LDR R1, [R4] \n\
/* 080347f0 */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 080347f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080347f4 */ LDRSH R1, [R1, R2] \n\
/* 080347f6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080347f8 */ BL sprite_set_visible \n\
/* 080347fc */ LDR R0, [R5] \n\
/* 080347fe */ LDR R1, [R4] \n\
/* 08034800 */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 08034802 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034804 */ LDRSH R1, [R1, R2] \n\
/* 08034806 */ LSLS R2, R6, 0x18 \n\
/* 08034808 */ ASRS R2, R2, 0x18 \n\
/* 0803480a */ BL sprite_set_anim_cel \n\
 \n\
branch_0803480e: \n\
/* 0803480e */ POP {R4-R6} \n\
/* 08034810 */ POP {R0} \n\
/* 08034812 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
