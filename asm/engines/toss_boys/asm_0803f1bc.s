asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f1bc \n\
/* 0803f1bc */ PUSH {R4, LR} \n\
/* 0803f1be */ LDR R0, =gSpriteHandler \n\
/* 0803f1c0 */ LDR R0, [R0] \n\
/* 0803f1c2 */ LDR R4, =gCurrentEngineData \n\
/* 0803f1c4 */ LDR R1, [R4] \n\
/* 0803f1c6 */ LDR R2, =0x366 \n\
/* 0803f1c8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803f1ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f1cc */ LDRSH R1, [R1, R2] \n\
/* 0803f1ce */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f1d0 */ BL sprite_set_visible \n\
/* 0803f1d4 */ LDR R0, [R4] \n\
/* 0803f1d6 */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0803f1d8 */ LSLS R1, R1, 0x2 \n\
/* 0803f1da */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f1dc */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0803f1de */ STRB R1, [R0] \n\
/* 0803f1e0 */ POP {R4} \n\
/* 0803f1e2 */ POP {R0} \n\
/* 0803f1e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
