asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start quiz_show_input_event \n\
/* 08037e80 */ PUSH {R4-R7, LR} \n\
/* 08037e82 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08037e84 */ PUSH {R7} \n\
/* 08037e86 */ SUB SP, 0xC \n\
/* 08037e88 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08037e8a */ LDR R0, =gCurrentEngineData \n\
/* 08037e8c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08037e8e */ LDR R0, [R0] \n\
/* 08037e90 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08037e92 */ ADDS R5, 0x1C @ Add 0x1C to R5 \n\
/* 08037e94 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08037e96 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08037e98 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 08037e9a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037e9c */ BEQ branch_08037ed2 \n\
/* 08037e9e */ LDR R4, =gSpriteHandler \n\
/* 08037ea0 */ LDR R0, [R4] \n\
/* 08037ea2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08037ea4 */ LDRSH R1, [R5, R2] \n\
/* 08037ea6 */ LDR R2, =anim_quiz_show_player_press_button_r \n\
/* 08037ea8 */ STR R7, [SP] \n\
/* 08037eaa */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08037eac */ STR R3, [SP, 0x4] \n\
/* 08037eae */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08037eb0 */ STR R3, [SP, 0x8] \n\
/* 08037eb2 */ BL sprite_set_anim \n\
/* 08037eb6 */ LDR R0, [R4] \n\
/* 08037eb8 */ MOVS R4, 0xA @ Set R4 to 0xA \n\
/* 08037eba */ LDRSH R1, [R5, R4] \n\
/* 08037ebc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037ebe */ BL sprite_set_anim_cel \n\
/* 08037ec2 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08037ec4 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08037ec6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08037ec8 */ BL func_080378d8 \n\
/* 08037ecc */ LDR R0, =s_f_quiz_hit_ply_seqData \n\
/* 08037ece */ BL play_sound \n\
 \n\
branch_08037ed2: \n\
/* 08037ed2 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08037ed4 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 08037ed6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037ed8 */ BEQ branch_08037f0e \n\
/* 08037eda */ LDR R4, =gSpriteHandler \n\
/* 08037edc */ LDR R0, [R4] \n\
/* 08037ede */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08037ee0 */ LDRSH R1, [R5, R2] \n\
/* 08037ee2 */ LDR R2, =anim_quiz_show_player_press_button_l \n\
/* 08037ee4 */ STR R7, [SP] \n\
/* 08037ee6 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08037ee8 */ STR R3, [SP, 0x4] \n\
/* 08037eea */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08037eec */ STR R3, [SP, 0x8] \n\
/* 08037eee */ BL sprite_set_anim \n\
/* 08037ef2 */ LDR R0, [R4] \n\
/* 08037ef4 */ MOVS R4, 0x8 @ Set R4 to 0x8 \n\
/* 08037ef6 */ LDRSH R1, [R5, R4] \n\
/* 08037ef8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037efa */ BL sprite_set_anim_cel \n\
/* 08037efe */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08037f00 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08037f02 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08037f04 */ BL func_080378d8 \n\
/* 08037f08 */ LDR R0, =s_f_quiz_hit_ply_seqData \n\
/* 08037f0a */ BL play_sound \n\
 \n\
branch_08037f0e: \n\
/* 08037f0e */ LDR R0, =gSpriteHandler \n\
/* 08037f10 */ LDR R0, [R0] \n\
/* 08037f12 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08037f14 */ LDRSH R1, [R5, R2] \n\
/* 08037f16 */ LDR R3, =quiz_show_endless_player_face_anim \n\
/* 08037f18 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08037f1a */ LDR R2, [R4] \n\
/* 08037f1c */ ADDS R2, 0x49 @ Add 0x49 to R2 \n\
/* 08037f1e */ LDRB R2, [R2] \n\
/* 08037f20 */ LSLS R2, R2, 0x2 \n\
/* 08037f22 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08037f24 */ LDR R2, [R2] \n\
/* 08037f26 */ STR R7, [SP] \n\
/* 08037f28 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08037f2a */ STR R3, [SP, 0x4] \n\
/* 08037f2c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08037f2e */ STR R3, [SP, 0x8] \n\
/* 08037f30 */ BL sprite_set_anim \n\
/* 08037f34 */ ADD SP, 0xC \n\
/* 08037f36 */ POP {R3} \n\
/* 08037f38 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08037f3a */ POP {R4-R7} \n\
/* 08037f3c */ POP {R0} \n\
/* 08037f3e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
