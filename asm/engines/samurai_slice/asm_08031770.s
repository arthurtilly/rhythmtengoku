asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08031770 \n\
/* 08031770 */ PUSH {R4, R5, LR} \n\
/* 08031772 */ SUB SP, 0xC \n\
/* 08031774 */ LDR R1, =gCurrentEngineData \n\
/* 08031776 */ LDR R2, [R1] \n\
/* 08031778 */ MOVS R1, 0xEC @ Set R1 to 0xEC \n\
/* 0803177a */ LSLS R1, R1, 0x1 \n\
/* 0803177c */ ADDS R3, R2, R1 @ Set R3 to R2 + R1 \n\
/* 0803177e */ STRH R0, [R3] \n\
/* 08031780 */ LDR R1, =gSpriteHandler \n\
/* 08031782 */ LDR R1, [R1] \n\
/* 08031784 */ MOVS R5, 0xC @ Set R5 to 0xC \n\
/* 08031786 */ LDRSH R4, [R2, R5] \n\
/* 08031788 */ LDR R2, =samurai_beat_anim \n\
/* 0803178a */ LSLS R0, R0, 0x10 \n\
/* 0803178c */ LSRS R0, R0, 0x10 \n\
/* 0803178e */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08031790 */ BHI branch_080317a4 \n\
/* 08031792 */ LDRH R0, [R3] \n\
/* 08031794 */ LSLS R0, R0, 0x2 \n\
/* 08031796 */ B branch_080317a6 \n\
\n\
.ltorg \n\
 \n\
branch_080317a4: \n\
/* 080317a4 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
 \n\
branch_080317a6: \n\
/* 080317a6 */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 080317a8 */ LDR R2, [R0] \n\
/* 080317aa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080317ac */ STR R0, [SP] \n\
/* 080317ae */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 080317b0 */ STR R0, [SP, 0x4] \n\
/* 080317b2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080317b4 */ STR R0, [SP, 0x8] \n\
/* 080317b6 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080317b8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080317ba */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080317bc */ BL sprite_set_anim \n\
/* 080317c0 */ ADD SP, 0xC \n\
/* 080317c2 */ POP {R4, R5} \n\
/* 080317c4 */ POP {R0} \n\
/* 080317c6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
