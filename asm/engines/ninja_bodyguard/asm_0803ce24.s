asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_cue_barely \n\
/* 0803ce24 */ PUSH {R4-R7, LR} \n\
/* 0803ce26 */ SUB SP, 0xC \n\
/* 0803ce28 */ LDR R7, =gCurrentEngineData \n\
/* 0803ce2a */ LDR R0, [R7] \n\
/* 0803ce2c */ LDRB R6, [R0, 0x6] \n\
/* 0803ce2e */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0803ce30 */ BEQ branch_0803ce3c \n\
/* 0803ce32 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0803ce34 */ BEQ branch_0803ce8c \n\
/* 0803ce36 */ B branch_0803ced4 \n\
\n\
.ltorg \n\
 \n\
branch_0803ce3c: \n\
/* 0803ce3c */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0803ce3e */ BL ninja_get_anim \n\
/* 0803ce42 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803ce44 */ LDR R4, =gSpriteHandler \n\
/* 0803ce46 */ LDR R0, [R4] \n\
/* 0803ce48 */ LDR R1, [R7] \n\
/* 0803ce4a */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803ce4c */ LDRSH R1, [R1, R3] \n\
/* 0803ce4e */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0803ce50 */ STR R5, [SP] \n\
/* 0803ce52 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803ce54 */ STR R3, [SP, 0x4] \n\
/* 0803ce56 */ STR R6, [SP, 0x8] \n\
/* 0803ce58 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ce5a */ BL sprite_set_anim \n\
/* 0803ce5e */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0803ce60 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ce62 */ BL gameplay_set_input_buttons \n\
/* 0803ce66 */ LDR R0, [R4] \n\
/* 0803ce68 */ LDR R1, [R7] \n\
/* 0803ce6a */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803ce6c */ LSLS R2, R2, 0x2 \n\
/* 0803ce6e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803ce70 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ce72 */ LDRSH R1, [R1, R3] \n\
/* 0803ce74 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803ce76 */ BL sprite_set_anim_cel \n\
/* 0803ce7a */ LDR R0, [R7] \n\
/* 0803ce7c */ STRB R5, [R0, 0x6] \n\
/* 0803ce7e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ce80 */ BL func_0803c710 \n\
/* 0803ce84 */ B branch_0803ced4 \n\
\n\
.ltorg \n\
 \n\
branch_0803ce8c: \n\
/* 0803ce8c */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 0803ce8e */ BL ninja_get_anim \n\
/* 0803ce92 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803ce94 */ LDR R4, =gSpriteHandler \n\
/* 0803ce96 */ LDR R0, [R4] \n\
/* 0803ce98 */ LDR R1, [R7] \n\
/* 0803ce9a */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803ce9c */ LDRSH R1, [R1, R3] \n\
/* 0803ce9e */ STR R6, [SP] \n\
/* 0803cea0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803cea2 */ STR R3, [SP, 0x4] \n\
/* 0803cea4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803cea6 */ STR R5, [SP, 0x8] \n\
/* 0803cea8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ceaa */ BL sprite_set_anim \n\
/* 0803ceae */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803ceb0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ceb2 */ BL gameplay_set_input_buttons \n\
/* 0803ceb6 */ LDR R0, [R4] \n\
/* 0803ceb8 */ LDR R1, [R7] \n\
/* 0803ceba */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803cebc */ LSLS R2, R2, 0x2 \n\
/* 0803cebe */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803cec0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cec2 */ LDRSH R1, [R1, R3] \n\
/* 0803cec4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803cec6 */ BL sprite_set_anim_cel \n\
/* 0803ceca */ LDR R0, [R7] \n\
/* 0803cecc */ STRB R5, [R0, 0x6] \n\
/* 0803cece */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803ced0 */ BL func_0803c710 \n\
 \n\
branch_0803ced4: \n\
/* 0803ced4 */ LDR R0, =s_ninja_kin_seqData \n\
/* 0803ced6 */ BL play_sound \n\
/* 0803ceda */ LDR R0, =gCurrentEngineData \n\
/* 0803cedc */ LDR R1, [R0] \n\
/* 0803cede */ LDR R0, =0x2ce \n\
/* 0803cee0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803cee2 */ LDRB R0, [R1] \n\
/* 0803cee4 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803cee6 */ STRB R0, [R1] \n\
/* 0803cee8 */ ADD SP, 0xC \n\
/* 0803ceea */ POP {R4-R7} \n\
/* 0803ceec */ POP {R0} \n\
/* 0803ceee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
