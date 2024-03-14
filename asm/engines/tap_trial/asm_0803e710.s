asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_common_beat_animation \n\
/* 0803e710 */ PUSH {R4-R7, LR} \n\
/* 0803e712 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0803e714 */ PUSH {R7} \n\
/* 0803e716 */ SUB SP, 0xC \n\
/* 0803e718 */ LDR R0, =gCurrentEngineData \n\
/* 0803e71a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803e71c */ LDR R0, [R0] \n\
/* 0803e71e */ LDRH R4, [R0, 0xA] \n\
/* 0803e720 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803e722 */ BNE branch_0803e748 \n\
/* 0803e724 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803e726 */ BL tap_trial_get_anim \n\
/* 0803e72a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e72c */ LDR R0, =gSpriteHandler \n\
/* 0803e72e */ LDR R0, [R0] \n\
/* 0803e730 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803e732 */ LDR R1, [R3] \n\
/* 0803e734 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0803e736 */ LDRSH R1, [R1, R3] \n\
/* 0803e738 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803e73a */ STR R3, [SP] \n\
/* 0803e73c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803e73e */ STR R3, [SP, 0x4] \n\
/* 0803e740 */ STR R4, [SP, 0x8] \n\
/* 0803e742 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e744 */ BL sprite_set_anim \n\
 \n\
branch_0803e748: \n\
/* 0803e748 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803e74a */ LDR R0, [R1] \n\
/* 0803e74c */ LDRH R7, [R0, 0x16] \n\
/* 0803e74e */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0803e750 */ BNE branch_0803e794 \n\
/* 0803e752 */ MOVS R0, 0x1B @ Set R0 to 0x1B \n\
/* 0803e754 */ BL tap_trial_get_anim \n\
/* 0803e758 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e75a */ LDR R6, =gSpriteHandler \n\
/* 0803e75c */ LDR R0, [R6] \n\
/* 0803e75e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803e760 */ LDR R1, [R3] \n\
/* 0803e762 */ MOVS R3, 0x12 @ Set R3 to 0x12 \n\
/* 0803e764 */ LDRSH R1, [R1, R3] \n\
/* 0803e766 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0803e768 */ STR R5, [SP] \n\
/* 0803e76a */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 0803e76c */ STR R4, [SP, 0x4] \n\
/* 0803e76e */ STR R7, [SP, 0x8] \n\
/* 0803e770 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e772 */ BL sprite_set_anim \n\
/* 0803e776 */ MOVS R0, 0x1B @ Set R0 to 0x1B \n\
/* 0803e778 */ BL tap_trial_get_anim \n\
/* 0803e77c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e77e */ LDR R0, [R6] \n\
/* 0803e780 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803e782 */ LDR R1, [R3] \n\
/* 0803e784 */ MOVS R3, 0x14 @ Set R3 to 0x14 \n\
/* 0803e786 */ LDRSH R1, [R1, R3] \n\
/* 0803e788 */ STR R5, [SP] \n\
/* 0803e78a */ STR R4, [SP, 0x4] \n\
/* 0803e78c */ STR R7, [SP, 0x8] \n\
/* 0803e78e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e790 */ BL sprite_set_anim \n\
 \n\
branch_0803e794: \n\
/* 0803e794 */ ADD SP, 0xC \n\
/* 0803e796 */ POP {R3} \n\
/* 0803e798 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803e79a */ POP {R4-R7} \n\
/* 0803e79c */ POP {R0} \n\
/* 0803e79e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
