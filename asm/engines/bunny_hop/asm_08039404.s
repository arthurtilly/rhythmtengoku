asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08039404 \n\
/* 08039404 */ PUSH {R4, R5, LR} \n\
/* 08039406 */ LDR R0, =gCurrentEngineData \n\
/* 08039408 */ LDR R5, [R0] \n\
/* 0803940a */ ADDS R4, R5, 0x4 @ Set R4 to R5 + 0x4 \n\
/* 0803940c */ BL func_0800c398 \n\
/* 08039410 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08039412 */ LDR R0, [R4, 0xC] \n\
/* 08039414 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08039416 */ STR R0, [R4, 0xC] \n\
/* 08039418 */ ASRS R0, R0, 0x8 \n\
/* 0803941a */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0803941c */ BL __modsi3 \n\
/* 08039420 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039422 */ LSLS R2, R2, 0x18 \n\
/* 08039424 */ LDR R0, =gSpriteHandler \n\
/* 08039426 */ LDR R0, [R0] \n\
/* 08039428 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803942a */ LDRSH R1, [R5, R3] \n\
/* 0803942c */ LSRS R2, R2, 0x1A \n\
/* 0803942e */ BL sprite_set_anim_cel \n\
/* 08039432 */ POP {R4, R5} \n\
/* 08039434 */ POP {R0} \n\
/* 08039436 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
