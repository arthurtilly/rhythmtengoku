asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027668 \n\
/* 08027668 */ PUSH {R4-R6, LR} \n\
/* 0802766a */ SUB SP, 0xC \n\
/* 0802766c */ LDR R6, =gCurrentEngineData \n\
/* 0802766e */ LDR R4, [R6] \n\
/* 08027670 */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 08027672 */ LSLS R0, R0, 0x2 \n\
/* 08027674 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08027676 */ LDR R5, =gSpriteHandler \n\
/* 08027678 */ LDR R0, [R5] \n\
/* 0802767a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802767c */ LDRSH R1, [R4, R2] \n\
/* 0802767e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08027680 */ BL sprite_set_visible \n\
/* 08027684 */ LDR R0, [R5] \n\
/* 08027686 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08027688 */ LDRSH R1, [R4, R2] \n\
/* 0802768a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802768c */ BL sprite_set_visible \n\
/* 08027690 */ LDR R0, [R5] \n\
/* 08027692 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08027694 */ LDRSH R1, [R4, R2] \n\
/* 08027696 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08027698 */ BL sprite_set_visible \n\
/* 0802769c */ LDR R0, [R5] \n\
/* 0802769e */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080276a0 */ LDRSH R1, [R4, R2] \n\
/* 080276a2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080276a4 */ BL sprite_set_visible \n\
/* 080276a8 */ LDR R0, [R5] \n\
/* 080276aa */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080276ac */ LDRSH R1, [R4, R2] \n\
/* 080276ae */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080276b0 */ BL sprite_set_visible \n\
/* 080276b4 */ LDR R0, [R5] \n\
/* 080276b6 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 080276b8 */ LDRSH R1, [R4, R2] \n\
/* 080276ba */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080276bc */ BL sprite_set_visible \n\
/* 080276c0 */ LDR R0, [R5] \n\
/* 080276c2 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 080276c4 */ LDRSH R1, [R4, R2] \n\
/* 080276c6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080276c8 */ BL sprite_set_visible \n\
/* 080276cc */ LDR R0, [R5] \n\
/* 080276ce */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 080276d0 */ LDRSH R1, [R4, R2] \n\
/* 080276d2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080276d4 */ BL sprite_set_visible \n\
/* 080276d8 */ LDR R0, [R5] \n\
/* 080276da */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 080276dc */ LDRSH R1, [R4, R2] \n\
/* 080276de */ LDR R2, =anim_drum_teacher_use_pedal_r \n\
/* 080276e0 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080276e2 */ STR R4, [SP] \n\
/* 080276e4 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080276e6 */ STR R3, [SP, 0x4] \n\
/* 080276e8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080276ea */ STR R3, [SP, 0x8] \n\
/* 080276ec */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080276ee */ BL sprite_set_anim \n\
/* 080276f2 */ LDR R1, =D_089e16b0 \n\
/* 080276f4 */ LDR R0, [R6] \n\
/* 080276f6 */ MOVS R2, 0xE2 @ Set R2 to 0xE2 \n\
/* 080276f8 */ LSLS R2, R2, 0x2 \n\
/* 080276fa */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080276fc */ LDRB R0, [R0] \n\
/* 080276fe */ LSLS R0, R0, 0x2 \n\
/* 08027700 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027702 */ LDR R0, [R0] \n\
/* 08027704 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027706 */ BEQ branch_0802770e \n\
/* 08027708 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0802770a */ BL _call_via_r0 \n\
 \n\
branch_0802770e: \n\
/* 0802770e */ ADD SP, 0xC \n\
/* 08027710 */ POP {R4-R6} \n\
/* 08027712 */ POP {R0} \n\
/* 08027714 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
