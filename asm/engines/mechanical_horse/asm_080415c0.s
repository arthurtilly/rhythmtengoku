asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080415c0 \n\
/* 080415c0 */ PUSH {R4-R7, LR} \n\
/* 080415c2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080415c4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080415c6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080415c8 */ PUSH {R5-R7} \n\
/* 080415ca */ SUB SP, 0xC \n\
/* 080415cc */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080415ce */ LDR R0, =gCurrentEngineData \n\
/* 080415d0 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080415d2 */ LDR R0, [R0] \n\
/* 080415d4 */ MOVS R1, 0xB3 @ Set R1 to 0xB3 \n\
/* 080415d6 */ LSLS R1, R1, 0x2 \n\
/* 080415d8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080415da */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080415dc */ STRB R6, [R0] \n\
/* 080415de */ LDR R2, =gSpriteHandler \n\
/* 080415e0 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080415e2 */ LDR R0, [R2] \n\
/* 080415e4 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 080415e6 */ LDR R1, [R4] \n\
/* 080415e8 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080415ea */ LDRSH R1, [R1, R2] \n\
/* 080415ec */ LDR R2, =mechanical_horse_anim \n\
/* 080415ee */ LSLS R4, R6, 0x2 \n\
/* 080415f0 */ ADDS R2, R4, R2 @ Set R2 to R4 + R2 \n\
/* 080415f2 */ LDR R2, [R2] \n\
/* 080415f4 */ STR R5, [SP] \n\
/* 080415f6 */ STR R5, [SP, 0x4] \n\
/* 080415f8 */ STR R5, [SP, 0x8] \n\
/* 080415fa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080415fc */ BL sprite_set_anim \n\
/* 08041600 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08041602 */ LDR R0, [R1] \n\
/* 08041604 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08041606 */ LDR R1, [R2] \n\
/* 08041608 */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 0804160a */ LDRSH R1, [R1, R2] \n\
/* 0804160c */ LDR R2, =mechanical_horse_jockey_anim \n\
/* 0804160e */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 08041610 */ LDR R2, [R4] \n\
/* 08041612 */ STR R5, [SP] \n\
/* 08041614 */ STR R5, [SP, 0x4] \n\
/* 08041616 */ STR R5, [SP, 0x8] \n\
/* 08041618 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804161a */ BL sprite_set_anim \n\
/* 0804161e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08041620 */ MOV R10, R9 @ Set R10 to R9 \n\
/* 08041622 */ MOV R9, R8 @ Set R9 to R8 \n\
/* 08041624 */ MOVS R4, 0x9B @ Set R4 to 0x9B \n\
/* 08041626 */ LSLS R4, R4, 0x2 \n\
/* 08041628 */ MOV R8, R4 @ Set R8 to R4 \n\
 \n\
branch_0804162a: \n\
/* 0804162a */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804162c */ LDR R3, [R0] \n\
/* 0804162e */ LSLS R5, R7, 0x1 \n\
/* 08041630 */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 08041632 */ LSLS R5, R5, 0x3 \n\
/* 08041634 */ MOVS R1, 0x9D @ Set R1 to 0x9D \n\
/* 08041636 */ LSLS R1, R1, 0x2 \n\
/* 08041638 */ ADDS R4, R3, R1 @ Set R4 to R3 + R1 \n\
/* 0804163a */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 0804163c */ LDR R2, =D_0805aab0 \n\
/* 0804163e */ LSLS R0, R7, 0x2 \n\
/* 08041640 */ LSLS R1, R6, 0x4 \n\
/* 08041642 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041644 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08041646 */ LDR R2, [R0] \n\
/* 08041648 */ LSLS R2, R2, 0x8 \n\
/* 0804164a */ STR R2, [R4] \n\
/* 0804164c */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0804164e */ LDR R0, [R4] \n\
/* 08041650 */ ADDS R1, R3, R5 @ Set R1 to R3 + R5 \n\
/* 08041652 */ ADD R1, R8 @ Add R8 to R1 \n\
/* 08041654 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08041656 */ LDRSH R1, [R1, R4] \n\
/* 08041658 */ LSLS R2, R2, 0x8 \n\
/* 0804165a */ ASRS R2, R2, 0x10 \n\
/* 0804165c */ MOVS R4, 0x9E @ Set R4 to 0x9E \n\
/* 0804165e */ LSLS R4, R4, 0x2 \n\
/* 08041660 */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 08041662 */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 08041664 */ LDR R3, [R3] \n\
/* 08041666 */ LSLS R3, R3, 0x8 \n\
/* 08041668 */ ASRS R3, R3, 0x10 \n\
/* 0804166a */ BL sprite_set_x_y \n\
/* 0804166e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08041670 */ LDR R0, [R1] \n\
/* 08041672 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08041674 */ LDR R1, [R2] \n\
/* 08041676 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08041678 */ ADD R1, R8 @ Add R8 to R1 \n\
/* 0804167a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804167c */ LDRSH R1, [R1, R4] \n\
/* 0804167e */ LDR R3, =mechanical_horse_lesson_text_anim \n\
/* 08041680 */ LSLS R2, R6, 0x2 \n\
/* 08041682 */ ADDS R2, R2, R7 @ Set R2 to R2 + R7 \n\
/* 08041684 */ LSLS R2, R2, 0x2 \n\
/* 08041686 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08041688 */ LDR R2, [R2] \n\
/* 0804168a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804168c */ STR R3, [SP] \n\
/* 0804168e */ STR R3, [SP, 0x4] \n\
/* 08041690 */ STR R3, [SP, 0x8] \n\
/* 08041692 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08041694 */ BL sprite_set_anim \n\
/* 08041698 */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 0804169a */ LSLS R0, R0, 0x18 \n\
/* 0804169c */ LSRS R7, R0, 0x18 \n\
/* 0804169e */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 080416a0 */ BLS branch_0804162a \n\
/* 080416a2 */ ADD SP, 0xC \n\
/* 080416a4 */ POP {R3-R5} \n\
/* 080416a6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080416a8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080416aa */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080416ac */ POP {R4-R7} \n\
/* 080416ae */ POP {R0} \n\
/* 080416b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
