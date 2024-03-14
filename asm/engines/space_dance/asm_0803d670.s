asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d670 \n\
/* 0803d670 */ PUSH {R4-R6, LR} \n\
/* 0803d672 */ SUB SP, 0xC \n\
/* 0803d674 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803d676 */ LDR R6, =gCurrentEngineData \n\
/* 0803d678 */ LDR R0, [R6] \n\
/* 0803d67a */ LDRH R5, [R0, 0x1C] \n\
/* 0803d67c */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0803d67e */ BNE branch_0803d6ae \n\
/* 0803d680 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0803d682 */ BL space_dance_get_anim \n\
/* 0803d686 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d688 */ LDR R0, =gSpriteHandler \n\
/* 0803d68a */ LDR R0, [R0] \n\
/* 0803d68c */ LDR R1, [R6] \n\
/* 0803d68e */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 0803d690 */ LDRSH R1, [R1, R3] \n\
/* 0803d692 */ LSLS R3, R4, 0x18 \n\
/* 0803d694 */ ASRS R3, R3, 0x18 \n\
/* 0803d696 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0803d698 */ STR R4, [SP] \n\
/* 0803d69a */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 0803d69c */ STR R4, [SP, 0x4] \n\
/* 0803d69e */ STR R5, [SP, 0x8] \n\
/* 0803d6a0 */ BL sprite_set_anim \n\
/* 0803d6a4 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0803d6a6 */ BL ticks_to_frames \n\
/* 0803d6aa */ LDR R1, [R6] \n\
/* 0803d6ac */ STRH R0, [R1, 0x1C] \n\
 \n\
branch_0803d6ae: \n\
/* 0803d6ae */ ADD SP, 0xC \n\
/* 0803d6b0 */ POP {R4-R6} \n\
/* 0803d6b2 */ POP {R0} \n\
/* 0803d6b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
