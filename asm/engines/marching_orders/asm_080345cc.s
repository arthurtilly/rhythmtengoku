asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080345cc \n\
/* 080345cc */ PUSH {R4-R7, LR} \n\
/* 080345ce */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080345d0 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080345d2 */ PUSH {R6, R7} \n\
/* 080345d4 */ SUB SP, 0x4 \n\
/* 080345d6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080345d8 */ LDR R0, =gSpriteHandler \n\
/* 080345da */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080345dc */ LDR R0, [R0] \n\
/* 080345de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080345e0 */ LDRSH R1, [R5, R2] \n\
/* 080345e2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080345e4 */ BL sprite_get_data \n\
/* 080345e8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080345ea */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080345ec */ LDR R0, [R3] \n\
/* 080345ee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080345f0 */ LDRSH R1, [R5, R2] \n\
/* 080345f2 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 080345f4 */ BL sprite_get_data \n\
/* 080345f8 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080345fa */ LDRH R0, [R5, 0x6] \n\
/* 080345fc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080345fe */ BEQ branch_08034686 \n\
/* 08034600 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08034602 */ LDR R0, [R3] \n\
/* 08034604 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034606 */ LDRSH R1, [R5, R2] \n\
/* 08034608 */ BL sprite_get_anim_cel \n\
/* 0803460c */ LSLS R0, R0, 0x18 \n\
/* 0803460e */ ASRS R3, R0, 0x18 \n\
/* 08034610 */ LDR R2, =D_089e5368 \n\
/* 08034612 */ LDR R0, =gCurrentEngineData \n\
/* 08034614 */ LDR R0, [R0] \n\
/* 08034616 */ LDRB R0, [R0] \n\
/* 08034618 */ LSLS R0, R0, 0x2 \n\
/* 0803461a */ LSLS R1, R3, 0x4 \n\
/* 0803461c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803461e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08034620 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034622 */ LDRSH R1, [R0, R2] \n\
/* 08034624 */ ADD R8, R1 @ Add R1 to R8 \n\
/* 08034626 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08034628 */ LDRSH R0, [R0, R1] \n\
/* 0803462a */ ADDS R7, R7, R0 @ Set R7 to R7 + R0 \n\
/* 0803462c */ LDRH R0, [R5, 0x6] \n\
/* 0803462e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08034630 */ STRH R0, [R5, 0x6] \n\
/* 08034632 */ LDRB R6, [R5, 0x8] \n\
/* 08034634 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08034636 */ BEQ branch_08034654 \n\
/* 08034638 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0803463a */ BNE branch_08034686 \n\
/* 0803463c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803463e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08034640 */ BL func_080343b8 \n\
/* 08034644 */ B branch_0803469c \n\
\n\
.ltorg \n\
 \n\
branch_08034654: \n\
/* 08034654 */ LDRH R4, [R5, 0x6] \n\
/* 08034656 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08034658 */ BL ticks_to_frames \n\
/* 0803465c */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803465e */ BLE branch_08034686 \n\
/* 08034660 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08034662 */ STRB R0, [R5, 0x8] \n\
/* 08034664 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08034666 */ LDR R0, [R2] \n\
/* 08034668 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803466a */ LDRSH R1, [R5, R3] \n\
/* 0803466c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803466e */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08034670 */ STR R6, [SP] \n\
/* 08034672 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08034674 */ BL sprite_set_playback \n\
/* 08034678 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803467a */ LDR R0, [R1] \n\
/* 0803467c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803467e */ LDRSH R1, [R5, R2] \n\
/* 08034680 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08034682 */ BL sprite_set_anim_cel \n\
 \n\
branch_08034686: \n\
/* 08034686 */ LDR R0, =gSpriteHandler \n\
/* 08034688 */ LDR R0, [R0] \n\
/* 0803468a */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0803468c */ LDRSH R1, [R5, R3] \n\
/* 0803468e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08034690 */ LSLS R2, R3, 0x10 \n\
/* 08034692 */ ASRS R2, R2, 0x10 \n\
/* 08034694 */ LSLS R3, R7, 0x10 \n\
/* 08034696 */ ASRS R3, R3, 0x10 \n\
/* 08034698 */ BL sprite_set_x_y \n\
 \n\
branch_0803469c: \n\
/* 0803469c */ ADD SP, 0x4 \n\
/* 0803469e */ POP {R3, R4} \n\
/* 080346a0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080346a2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080346a4 */ POP {R4-R7} \n\
/* 080346a6 */ POP {R0} \n\
/* 080346a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
