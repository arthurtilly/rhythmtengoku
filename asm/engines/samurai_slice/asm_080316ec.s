asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080316ec \n\
/* 080316ec */ PUSH {R4-R6, LR} \n\
/* 080316ee */ SUB SP, 0xC \n\
/* 080316f0 */ LSLS R1, R1, 0x10 \n\
/* 080316f2 */ LSRS R4, R1, 0x10 \n\
/* 080316f4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080316f6 */ BL func_0800c604 \n\
/* 080316fa */ LDR R0, =gSpriteHandler \n\
/* 080316fc */ LDR R3, [R0] \n\
/* 080316fe */ LSLS R0, R4, 0x10 \n\
/* 08031700 */ ASRS R1, R0, 0x10 \n\
/* 08031702 */ LDR R5, =samurai_beat_anim \n\
/* 08031704 */ LDR R0, =gCurrentEngineData \n\
/* 08031706 */ LDR R0, [R0] \n\
/* 08031708 */ MOVS R6, 0xEC @ Set R6 to 0xEC \n\
/* 0803170a */ LSLS R6, R6, 0x1 \n\
/* 0803170c */ ADDS R2, R0, R6 @ Set R2 to R0 + R6 \n\
/* 0803170e */ LDRH R0, [R2] \n\
/* 08031710 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08031712 */ BHI branch_08031724 \n\
/* 08031714 */ LSLS R0, R0, 0x2 \n\
/* 08031716 */ B branch_08031726 \n\
\n\
.ltorg \n\
 \n\
branch_08031724: \n\
/* 08031724 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
 \n\
branch_08031726: \n\
/* 08031726 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 08031728 */ LDR R2, [R0] \n\
/* 0803172a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803172c */ STR R0, [SP] \n\
/* 0803172e */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08031730 */ STR R0, [SP, 0x4] \n\
/* 08031732 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08031734 */ STR R0, [SP, 0x8] \n\
/* 08031736 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08031738 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803173a */ BL sprite_set_anim \n\
/* 0803173e */ LDR R5, =gSpriteHandler \n\
/* 08031740 */ LDR R0, [R5] \n\
/* 08031742 */ LSLS R4, R4, 0x10 \n\
/* 08031744 */ ASRS R4, R4, 0x10 \n\
/* 08031746 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08031748 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803174a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803174c */ BL sprite_set_callback \n\
/* 08031750 */ LDR R0, [R5] \n\
/* 08031752 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08031754 */ LSLS R2, R2, 0x1 \n\
/* 08031756 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08031758 */ BL sprite_set_anim_speed \n\
/* 0803175c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803175e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08031760 */ BL gameplay_set_input_buttons \n\
/* 08031764 */ ADD SP, 0xC \n\
/* 08031766 */ POP {R4-R6} \n\
/* 08031768 */ POP {R0} \n\
/* 0803176a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
