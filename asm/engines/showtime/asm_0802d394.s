asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d394 \n\
/* 0802d394 */ PUSH {R4-R7, LR} \n\
/* 0802d396 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0802d398 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802d39a */ PUSH {R6, R7} \n\
/* 0802d39c */ SUB SP, 0x14 \n\
/* 0802d39e */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802d3a0 */ LDR R0, =gCurrentEngineData \n\
/* 0802d3a2 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802d3a4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802d3a6 */ LDR R7, =gSpriteHandler \n\
/* 0802d3a8 */ MOVS R1, 0xBA @ Set R1 to 0xBA \n\
/* 0802d3aa */ LSLS R1, R1, 0x1 \n\
/* 0802d3ac */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_0802d3ae: \n\
/* 0802d3ae */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802d3b0 */ LDR R0, [R2] \n\
/* 0802d3b2 */ LSLS R4, R6, 0x4 \n\
/* 0802d3b4 */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 0802d3b6 */ LSLS R3, R3, 0x1 \n\
/* 0802d3b8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802d3ba */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802d3bc */ STR R5, [R0] \n\
/* 0802d3be */ LDR R0, [R7] \n\
/* 0802d3c0 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802d3c2 */ STR R1, [SP] \n\
/* 0802d3c4 */ STR R5, [SP, 0x4] \n\
/* 0802d3c6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802d3c8 */ STR R1, [SP, 0x8] \n\
/* 0802d3ca */ STR R5, [SP, 0xC] \n\
/* 0802d3cc */ STR R5, [SP, 0x10] \n\
/* 0802d3ce */ LDR R1, =anim_showtime_ball \n\
/* 0802d3d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d3d2 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802d3d4 */ BL sprite_create \n\
/* 0802d3d8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802d3da */ LDR R1, [R2] \n\
/* 0802d3dc */ ADDS R2, R1, R4 @ Set R2 to R1 + R4 \n\
/* 0802d3de */ ADD R2, R9 @ Add R9 to R2 \n\
/* 0802d3e0 */ STRH R0, [R2] \n\
/* 0802d3e2 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 0802d3e4 */ LSLS R3, R3, 0x1 \n\
/* 0802d3e6 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0802d3e8 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802d3ea */ STR R5, [R0] \n\
/* 0802d3ec */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0802d3ee */ LSLS R0, R0, 0x1 \n\
/* 0802d3f0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802d3f2 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d3f4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802d3f6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802d3f8 */ STR R0, [R1] \n\
/* 0802d3fa */ LDR R0, [R7] \n\
/* 0802d3fc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d3fe */ LDRSH R1, [R2, R3] \n\
/* 0802d400 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d402 */ BL sprite_set_visible \n\
/* 0802d406 */ LDR R0, [R7] \n\
/* 0802d408 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802d40a */ LDR R1, [R2] \n\
/* 0802d40c */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d40e */ ADD R1, R9 @ Add R9 to R1 \n\
/* 0802d410 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d412 */ LDRSH R1, [R1, R3] \n\
/* 0802d414 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0802d416 */ MOVS R3, 0x74 @ Set R3 to 0x74 \n\
/* 0802d418 */ BL sprite_set_x_y \n\
/* 0802d41c */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0802d41e */ CMP R6, 0x7 @ Compare R6 and 0x7 \n\
/* 0802d420 */ BLE branch_0802d3ae \n\
/* 0802d422 */ ADD SP, 0x14 \n\
/* 0802d424 */ POP {R3, R4} \n\
/* 0802d426 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802d428 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802d42a */ POP {R4-R7} \n\
/* 0802d42c */ POP {R0} \n\
/* 0802d42e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
