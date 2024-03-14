asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037bf4 \n\
/* 08037bf4 */ PUSH {R4, LR} \n\
/* 08037bf6 */ SUB SP, 0xC \n\
/* 08037bf8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08037bfa */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08037bfc */ BNE branch_08037c0c \n\
/* 08037bfe */ LDR R0, =gCurrentEngineData \n\
/* 08037c00 */ LDR R0, [R0] \n\
/* 08037c02 */ LDRH R1, [R0, 0xC] \n\
/* 08037c04 */ B branch_08037c12 \n\
\n\
.ltorg \n\
 \n\
branch_08037c0c: \n\
/* 08037c0c */ LDR R0, =gCurrentEngineData \n\
/* 08037c0e */ LDR R0, [R0] \n\
/* 08037c10 */ LDRH R1, [R0, 0xE] \n\
 \n\
branch_08037c12: \n\
/* 08037c12 */ LDR R0, =gSpriteHandler \n\
/* 08037c14 */ LDR R0, [R0] \n\
/* 08037c16 */ LSLS R1, R1, 0x10 \n\
/* 08037c18 */ ASRS R1, R1, 0x10 \n\
/* 08037c1a */ LDR R3, =quiz_show_host_button_press_anim \n\
/* 08037c1c */ LSLS R2, R4, 0x2 \n\
/* 08037c1e */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08037c20 */ LDR R2, [R2] \n\
/* 08037c22 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08037c24 */ STR R3, [SP] \n\
/* 08037c26 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08037c28 */ STR R3, [SP, 0x4] \n\
/* 08037c2a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08037c2c */ STR R3, [SP, 0x8] \n\
/* 08037c2e */ BL sprite_set_anim \n\
/* 08037c32 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08037c34 */ BNE branch_08037c4c \n\
/* 08037c36 */ LDR R0, =gCurrentEngineData \n\
/* 08037c38 */ LDR R0, [R0] \n\
/* 08037c3a */ LDRH R1, [R0, 0x12] \n\
/* 08037c3c */ B branch_08037c52 \n\
\n\
.ltorg \n\
 \n\
branch_08037c4c: \n\
/* 08037c4c */ LDR R0, =gCurrentEngineData \n\
/* 08037c4e */ LDR R0, [R0] \n\
/* 08037c50 */ LDRH R1, [R0, 0x10] \n\
 \n\
branch_08037c52: \n\
/* 08037c52 */ LDR R4, =gSpriteHandler \n\
/* 08037c54 */ LDR R0, [R4] \n\
/* 08037c56 */ LSLS R1, R1, 0x10 \n\
/* 08037c58 */ ASRS R1, R1, 0x10 \n\
/* 08037c5a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037c5c */ BL sprite_set_anim_cel \n\
/* 08037c60 */ LDR R0, [R4] \n\
/* 08037c62 */ LDR R4, =gCurrentEngineData \n\
/* 08037c64 */ LDR R2, [R4] \n\
/* 08037c66 */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 08037c68 */ LDRSH R1, [R2, R3] \n\
/* 08037c6a */ LDR R3, =quiz_show_endless_host_face_anim \n\
/* 08037c6c */ ADDS R2, 0x49 @ Add 0x49 to R2 \n\
/* 08037c6e */ LDRB R2, [R2] \n\
/* 08037c70 */ LSLS R2, R2, 0x2 \n\
/* 08037c72 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08037c74 */ LDR R2, [R2] \n\
/* 08037c76 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08037c78 */ STR R3, [SP] \n\
/* 08037c7a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08037c7c */ STR R3, [SP, 0x4] \n\
/* 08037c7e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08037c80 */ STR R3, [SP, 0x8] \n\
/* 08037c82 */ BL sprite_set_anim \n\
/* 08037c86 */ LDR R0, [R4] \n\
/* 08037c88 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08037c8a */ LDRSH R0, [R0, R1] \n\
/* 08037c8c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08037c8e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08037c90 */ MOVS R2, 0x63 @ Set R2 to 0x63 \n\
/* 08037c92 */ BL clamp_int32 \n\
/* 08037c96 */ LDR R1, [R4] \n\
/* 08037c98 */ STRH R0, [R1, 0x18] \n\
/* 08037c9a */ LDR R0, =s_f_quiz_hit_com_seqData \n\
/* 08037c9c */ BL play_sound \n\
/* 08037ca0 */ ADD SP, 0xC \n\
/* 08037ca2 */ POP {R4} \n\
/* 08037ca4 */ POP {R0} \n\
/* 08037ca6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
