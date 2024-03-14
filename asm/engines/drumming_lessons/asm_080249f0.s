asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080249f0 \n\
/* 080249f0 */ PUSH {R4, R5, LR} \n\
/* 080249f2 */ LDR R0, =gSpriteHandler \n\
/* 080249f4 */ LDR R0, [R0] \n\
/* 080249f6 */ LDR R4, =gCurrentEngineData \n\
/* 080249f8 */ LDR R1, [R4] \n\
/* 080249fa */ LDR R2, =0x00000356 \n\
/* 080249fc */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080249fe */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08024a00 */ LDRSH R1, [R1, R5] \n\
/* 08024a02 */ BL sprite_get_anim_cel \n\
/* 08024a06 */ LSLS R0, R0, 0x18 \n\
/* 08024a08 */ LDR R3, [R4] \n\
/* 08024a0a */ LDR R1, =D_089e0164 \n\
/* 08024a0c */ ASRS R0, R0, 0x16 \n\
/* 08024a0e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08024a10 */ LDR R4, =D_03004b10 \n\
/* 08024a12 */ LDRH R1, [R4, 0x10] \n\
/* 08024a14 */ LDRH R2, [R0] \n\
/* 08024a16 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08024a18 */ LDR R5, =0x00000362 \n\
/* 08024a1a */ ADDS R2, R3, R5 @ Set R2 to R3 + R5 \n\
/* 08024a1c */ STRH R1, [R2] \n\
/* 08024a1e */ LDRH R1, [R4, 0x12] \n\
/* 08024a20 */ LDRH R0, [R0, 0x2] \n\
/* 08024a22 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08024a24 */ MOVS R0, 0xD9 @ Set R0 to 0xD9 \n\
/* 08024a26 */ LSLS R0, R0, 0x2 \n\
/* 08024a28 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 08024a2a */ STRH R1, [R3] \n\
/* 08024a2c */ POP {R4, R5} \n\
/* 08024a2e */ POP {R0} \n\
/* 08024a30 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
