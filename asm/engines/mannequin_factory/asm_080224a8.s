asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080224a8 \n\
/* 080224a8 */ PUSH {R4-R7, LR} \n\
/* 080224aa */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080224ac */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080224ae */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080224b0 */ PUSH {R5-R7} \n\
/* 080224b2 */ SUB SP, 0x14 \n\
/* 080224b4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080224b6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080224b8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080224ba */ LDR R6, =gSpriteHandler \n\
/* 080224bc */ MOVS R7, 0x40 @ Set R7 to 0x40 \n\
/* 080224be */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080224c0 */ LSLS R1, R1, 0x8 \n\
/* 080224c2 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080224c4 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080224c6 */ MOV R9, R2 @ Set R9 to R2 \n\
 \n\
branch_080224c8: \n\
/* 080224c8 */ LDR R0, =gCurrentEngineData \n\
/* 080224ca */ LDR R4, [R0] \n\
/* 080224cc */ ADD R4, R9 @ Add R9 to R4 \n\
/* 080224ce */ STRB R5, [R4] \n\
/* 080224d0 */ LDR R0, [R6] \n\
/* 080224d2 */ STR R7, [SP] \n\
/* 080224d4 */ LDR R1, =0x00004864 \n\
/* 080224d6 */ STR R1, [SP, 0x4] \n\
/* 080224d8 */ STR R5, [SP, 0x8] \n\
/* 080224da */ STR R5, [SP, 0xC] \n\
/* 080224dc */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080224de */ STR R1, [SP, 0x10] \n\
/* 080224e0 */ LDR R1, =anim_mannequin_head \n\
/* 080224e2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080224e4 */ MOVS R3, 0x68 @ Set R3 to 0x68 \n\
/* 080224e6 */ BL sprite_create \n\
/* 080224ea */ STRH R0, [R4, 0x2] \n\
/* 080224ec */ LDR R0, [R6] \n\
/* 080224ee */ STR R7, [SP] \n\
/* 080224f0 */ LDR R2, =0x00004863 \n\
/* 080224f2 */ STR R2, [SP, 0x4] \n\
/* 080224f4 */ STR R5, [SP, 0x8] \n\
/* 080224f6 */ STR R5, [SP, 0xC] \n\
/* 080224f8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080224fa */ STR R1, [SP, 0x10] \n\
/* 080224fc */ LDR R1, =anim_mannequin_eye_l \n\
/* 080224fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022500 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08022502 */ BL sprite_create \n\
/* 08022506 */ STRH R0, [R4, 0x6] \n\
/* 08022508 */ LDR R0, [R6] \n\
/* 0802250a */ STR R7, [SP] \n\
/* 0802250c */ LDR R2, =0x00004863 \n\
/* 0802250e */ STR R2, [SP, 0x4] \n\
/* 08022510 */ STR R5, [SP, 0x8] \n\
/* 08022512 */ STR R5, [SP, 0xC] \n\
/* 08022514 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08022516 */ STR R1, [SP, 0x10] \n\
/* 08022518 */ LDR R1, =anim_mannequin_eye_r \n\
/* 0802251a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802251c */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802251e */ BL sprite_create \n\
/* 08022522 */ STRH R0, [R4, 0x4] \n\
/* 08022524 */ LDR R0, [R6] \n\
/* 08022526 */ STR R7, [SP] \n\
/* 08022528 */ LDR R1, =0x00004865 \n\
/* 0802252a */ STR R1, [SP, 0x4] \n\
/* 0802252c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802252e */ STR R1, [SP, 0x8] \n\
/* 08022530 */ STR R5, [SP, 0xC] \n\
/* 08022532 */ LDR R1, =0x00008002 \n\
/* 08022534 */ STR R1, [SP, 0x10] \n\
/* 08022536 */ LDR R1, =anim_mannequin_dash_effect \n\
/* 08022538 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802253a */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 0802253c */ BL sprite_create \n\
/* 08022540 */ STRH R0, [R4, 0x8] \n\
/* 08022542 */ LDR R0, [R6] \n\
/* 08022544 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022546 */ LDRSH R1, [R4, R2] \n\
/* 08022548 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0802254a */ BL sprite_set_y \n\
/* 0802254e */ LDR R0, [R6] \n\
/* 08022550 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08022552 */ LDRSH R1, [R4, R2] \n\
/* 08022554 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08022556 */ BL sprite_set_y \n\
/* 0802255a */ LDR R0, [R6] \n\
/* 0802255c */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802255e */ LDRSH R1, [R4, R2] \n\
/* 08022560 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08022562 */ BL sprite_set_y \n\
/* 08022566 */ STRH R5, [R4, 0x12] \n\
/* 08022568 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0802256a */ ADD R9, R0 @ Add R0 to R9 \n\
/* 0802256c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802256e */ ADD R10, R1 @ Add R1 to R10 \n\
/* 08022570 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08022572 */ CMP R2, 0x5 @ Compare R2 and 0x5 \n\
/* 08022574 */ BLS branch_080224c8 \n\
/* 08022576 */ LDR R1, =gCurrentEngineData \n\
/* 08022578 */ LDR R0, [R1] \n\
/* 0802257a */ MOVS R2, 0x86 @ Set R2 to 0x86 \n\
/* 0802257c */ LSLS R2, R2, 0x3 \n\
/* 0802257e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08022580 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08022582 */ STRB R1, [R0] \n\
/* 08022584 */ ADD SP, 0x14 \n\
/* 08022586 */ POP {R3-R5} \n\
/* 08022588 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802258a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802258c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802258e */ POP {R4-R7} \n\
/* 08022590 */ POP {R0} \n\
/* 08022592 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
