asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033468 \n\
/* 08033468 */ PUSH {R4-R6, LR} \n\
/* 0803346a */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803346c */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803346e */ PUSH {R5, R6} \n\
/* 08033470 */ SUB SP, 0xC \n\
/* 08033472 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08033474 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08033476 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 08033478 */ LDR R0, =gSpriteHandler \n\
/* 0803347a */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803347c */ LDR R0, [R0] \n\
/* 0803347e */ LDR R1, =gCurrentEngineData \n\
/* 08033480 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08033482 */ LDR R1, [R1] \n\
/* 08033484 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08033486 */ LDRSH R1, [R1, R2] \n\
/* 08033488 */ LDR R2, =anim_power_calligraphy_brush \n\
/* 0803348a */ LSLS R3, R3, 0x18 \n\
/* 0803348c */ ASRS R3, R3, 0x18 \n\
/* 0803348e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08033490 */ STR R4, [SP] \n\
/* 08033492 */ STR R4, [SP, 0x4] \n\
/* 08033494 */ STR R4, [SP, 0x8] \n\
/* 08033496 */ BL sprite_set_anim \n\
/* 0803349a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803349c */ LDR R0, [R1] \n\
/* 0803349e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080334a0 */ LDR R1, [R2] \n\
/* 080334a2 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 080334a4 */ LDRSH R1, [R1, R2] \n\
/* 080334a6 */ ADDS R5, 0x78 @ Add 0x78 to R5 \n\
/* 080334a8 */ LSLS R5, R5, 0x10 \n\
/* 080334aa */ ASRS R5, R5, 0x10 \n\
/* 080334ac */ ADDS R6, 0x54 @ Add 0x54 to R6 \n\
/* 080334ae */ LSLS R6, R6, 0x10 \n\
/* 080334b0 */ ASRS R6, R6, 0x10 \n\
/* 080334b2 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 080334b4 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 080334b6 */ BL sprite_set_x_y \n\
/* 080334ba */ ADD SP, 0xC \n\
/* 080334bc */ POP {R3, R4} \n\
/* 080334be */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080334c0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080334c2 */ POP {R4-R6} \n\
/* 080334c4 */ POP {R0} \n\
/* 080334c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
