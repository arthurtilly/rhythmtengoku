asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034dd0 \n\
/* 08034dd0 */ PUSH {R4-R6, LR} \n\
/* 08034dd2 */ SUB SP, 0x1C \n\
/* 08034dd4 */ LDR R0, =gCurrentEngineData \n\
/* 08034dd6 */ LDR R6, [R0] \n\
/* 08034dd8 */ ADDS R5, R6, 0x0 @ Set R5 to R6 + 0x0 \n\
/* 08034dda */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 08034ddc */ LDR R0, =anim_metronome_pendulum \n\
/* 08034dde */ LDR R1, =0x480a \n\
/* 08034de0 */ STR R1, [SP] \n\
/* 08034de2 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08034de4 */ LSLS R1, R1, 0x1 \n\
/* 08034de6 */ STR R1, [SP, 0x4] \n\
/* 08034de8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08034dea */ STR R4, [SP, 0x8] \n\
/* 08034dec */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08034dee */ STR R1, [SP, 0xC] \n\
/* 08034df0 */ STR R4, [SP, 0x10] \n\
/* 08034df2 */ STR R4, [SP, 0x14] \n\
/* 08034df4 */ STR R4, [SP, 0x18] \n\
/* 08034df6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08034df8 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08034dfa */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 08034dfc */ BL create_affine_sprite \n\
/* 08034e00 */ STR R0, [R6, 0x10] \n\
/* 08034e02 */ STR R4, [R5, 0x4] \n\
/* 08034e04 */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 08034e06 */ LSLS R0, R0, 0x1 \n\
/* 08034e08 */ STR R0, [R5, 0x10] \n\
/* 08034e0a */ STR R4, [R5, 0x18] \n\
/* 08034e0c */ STR R4, [R5, 0x14] \n\
/* 08034e0e */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08034e10 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 08034e12 */ STRB R4, [R0] \n\
/* 08034e14 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08034e16 */ LSLS R0, R0, 0x3 \n\
/* 08034e18 */ STR R0, [R5, 0x8] \n\
/* 08034e1a */ STR R4, [R5, 0xC] \n\
/* 08034e1c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08034e1e */ ADDS R0, 0x31 @ Add 0x31 to R0 \n\
/* 08034e20 */ STRB R4, [R0] \n\
/* 08034e22 */ LDR R0, [R6, 0x10] \n\
/* 08034e24 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08034e26 */ LDRSH R1, [R5, R2] \n\
/* 08034e28 */ BL affine_sprite_set_rotation \n\
/* 08034e2c */ ADD SP, 0x1C \n\
/* 08034e2e */ POP {R4-R6} \n\
/* 08034e30 */ POP {R0} \n\
/* 08034e32 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
