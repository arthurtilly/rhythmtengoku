asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_input_event \n\
/* 0803cf60 */ PUSH {R4-R7, LR} \n\
/* 0803cf62 */ SUB SP, 0xC \n\
/* 0803cf64 */ LDR R7, =gCurrentEngineData \n\
/* 0803cf66 */ LDR R0, [R7] \n\
/* 0803cf68 */ LDRB R6, [R0, 0x6] \n\
/* 0803cf6a */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0803cf6c */ BEQ branch_0803cf78 \n\
/* 0803cf6e */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0803cf70 */ BEQ branch_0803cfb8 \n\
/* 0803cf72 */ B branch_0803cffa \n\
\n\
.ltorg \n\
 \n\
branch_0803cf78: \n\
/* 0803cf78 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0803cf7a */ BL ninja_get_anim \n\
/* 0803cf7e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803cf80 */ LDR R4, =gSpriteHandler \n\
/* 0803cf82 */ LDR R0, [R4] \n\
/* 0803cf84 */ LDR R1, [R7] \n\
/* 0803cf86 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803cf88 */ LDRSH R1, [R1, R3] \n\
/* 0803cf8a */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0803cf8c */ STR R5, [SP] \n\
/* 0803cf8e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803cf90 */ STR R3, [SP, 0x4] \n\
/* 0803cf92 */ STR R6, [SP, 0x8] \n\
/* 0803cf94 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cf96 */ BL sprite_set_anim \n\
/* 0803cf9a */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0803cf9c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803cf9e */ BL gameplay_set_input_buttons \n\
/* 0803cfa2 */ LDR R0, [R4] \n\
/* 0803cfa4 */ LDR R1, [R7] \n\
/* 0803cfa6 */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803cfa8 */ LSLS R2, R2, 0x2 \n\
/* 0803cfaa */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803cfac */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cfae */ LDRSH R1, [R1, R3] \n\
/* 0803cfb0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803cfb2 */ B branch_0803cff2 \n\
\n\
.ltorg \n\
 \n\
branch_0803cfb8: \n\
/* 0803cfb8 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803cfba */ BL ninja_get_anim \n\
/* 0803cfbe */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803cfc0 */ LDR R4, =gSpriteHandler \n\
/* 0803cfc2 */ LDR R0, [R4] \n\
/* 0803cfc4 */ LDR R1, [R7] \n\
/* 0803cfc6 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803cfc8 */ LDRSH R1, [R1, R3] \n\
/* 0803cfca */ STR R6, [SP] \n\
/* 0803cfcc */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803cfce */ STR R3, [SP, 0x4] \n\
/* 0803cfd0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803cfd2 */ STR R5, [SP, 0x8] \n\
/* 0803cfd4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cfd6 */ BL sprite_set_anim \n\
/* 0803cfda */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803cfdc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803cfde */ BL gameplay_set_input_buttons \n\
/* 0803cfe2 */ LDR R0, [R4] \n\
/* 0803cfe4 */ LDR R1, [R7] \n\
/* 0803cfe6 */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803cfe8 */ LSLS R2, R2, 0x2 \n\
/* 0803cfea */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803cfec */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cfee */ LDRSH R1, [R1, R3] \n\
/* 0803cff0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0803cff2: \n\
/* 0803cff2 */ BL sprite_set_anim_cel \n\
/* 0803cff6 */ LDR R0, [R7] \n\
/* 0803cff8 */ STRB R5, [R0, 0x6] \n\
 \n\
branch_0803cffa: \n\
/* 0803cffa */ LDR R0, =s_ninja_furu_seqData \n\
/* 0803cffc */ BL play_sound \n\
/* 0803d000 */ ADD SP, 0xC \n\
/* 0803d002 */ POP {R4-R7} \n\
/* 0803d004 */ POP {R0} \n\
/* 0803d006 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
