asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032bf8 \n\
/* 08032bf8 */ PUSH {R4-R7, LR} \n\
/* 08032bfa */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08032bfc */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08032bfe */ PUSH {R6, R7} \n\
/* 08032c00 */ SUB SP, 0x14 \n\
/* 08032c02 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08032c04 */ LDR R0, =gCurrentEngineData \n\
/* 08032c06 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08032c08 */ LDR R5, =gSpriteHandler \n\
/* 08032c0a */ MOVS R6, 0x3C @ Set R6 to 0x3C \n\
/* 08032c0c */ LDR R2, =(D_03004b10 + 0x14) \n\
/* 08032c0e */ MOV R8, R2 @ Set R8 to R2 \n\
 \n\
branch_08032c10: \n\
/* 08032c10 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08032c12 */ LDR R4, [R0] \n\
/* 08032c14 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 08032c16 */ LDR R0, [R5] \n\
/* 08032c18 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 08032c1a */ STR R1, [SP] \n\
/* 08032c1c */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08032c1e */ LSLS R1, R1, 0x7 \n\
/* 08032c20 */ STR R1, [SP, 0x4] \n\
/* 08032c22 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08032c24 */ STR R1, [SP, 0x8] \n\
/* 08032c26 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08032c28 */ STR R1, [SP, 0xC] \n\
/* 08032c2a */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08032c2c */ LSLS R1, R1, 0x8 \n\
/* 08032c2e */ STR R1, [SP, 0x10] \n\
/* 08032c30 */ LDR R1, =anim_power_calligraphy_ink_dot \n\
/* 08032c32 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032c34 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08032c36 */ BL sprite_create \n\
/* 08032c3a */ STRH R0, [R4] \n\
/* 08032c3c */ LDR R0, [R5] \n\
/* 08032c3e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032c40 */ LDRSH R1, [R4, R2] \n\
/* 08032c42 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08032c44 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08032c46 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 08032c48 */ BL sprite_set_origin_x_y \n\
/* 08032c4c */ LDR R0, [R5] \n\
/* 08032c4e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032c50 */ LDRSH R1, [R4, R2] \n\
/* 08032c52 */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 08032c54 */ BL sprite_set_anim_speed \n\
/* 08032c58 */ ADDS R6, 0xC @ Add 0xC to R6 \n\
/* 08032c5a */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08032c5c */ CMP R7, 0x1D @ Compare R7 and 0x1D \n\
/* 08032c5e */ BLS branch_08032c10 \n\
/* 08032c60 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08032c62 */ LDR R0, =gCurrentEngineData \n\
/* 08032c64 */ LDR R0, [R0] \n\
/* 08032c66 */ MOVS R2, 0xD2 @ Set R2 to 0xD2 \n\
/* 08032c68 */ LSLS R2, R2, 0x1 \n\
/* 08032c6a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08032c6c */ STRB R1, [R0] \n\
/* 08032c6e */ ADD SP, 0x14 \n\
/* 08032c70 */ POP {R3, R4} \n\
/* 08032c72 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08032c74 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08032c76 */ POP {R4-R7} \n\
/* 08032c78 */ POP {R0} \n\
/* 08032c7a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
