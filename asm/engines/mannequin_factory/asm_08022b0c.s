asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022b0c \n\
/* 08022b0c */ PUSH {R4-R6, LR} \n\
/* 08022b0e */ SUB SP, 0x14 \n\
/* 08022b10 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08022b12 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08022b14 */ LDR R2, =anim_mannequin_stamp_effect_l \n\
/* 08022b16 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08022b18 */ BNE branch_08022b1c \n\
/* 08022b1a */ LDR R2, =anim_mannequin_stamp_effect_r \n\
 \n\
branch_08022b1c: \n\
/* 08022b1c */ LDR R5, =gSpriteHandler \n\
/* 08022b1e */ LDR R0, [R5] \n\
/* 08022b20 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 08022b22 */ STR R1, [SP] \n\
/* 08022b24 */ LDR R1, =0x00004814 \n\
/* 08022b26 */ STR R1, [SP, 0x4] \n\
/* 08022b28 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08022b2a */ STR R1, [SP, 0x8] \n\
/* 08022b2c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08022b2e */ STR R1, [SP, 0xC] \n\
/* 08022b30 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08022b32 */ STR R1, [SP, 0x10] \n\
/* 08022b34 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08022b36 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022b38 */ MOVS R3, 0xA8 @ Set R3 to 0xA8 \n\
/* 08022b3a */ BL sprite_create \n\
/* 08022b3e */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08022b40 */ LSLS R0, R0, 0x2 \n\
/* 08022b42 */ STRH R0, [R4, 0x12] \n\
/* 08022b44 */ LDRB R0, [R4, 0xA] \n\
/* 08022b46 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08022b48 */ BNE branch_08022b98 \n\
/* 08022b4a */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08022b4c */ BNE branch_08022b7c \n\
/* 08022b4e */ STRB R0, [R4, 0xB] \n\
/* 08022b50 */ LDR R0, [R5] \n\
/* 08022b52 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08022b54 */ LDRSH R1, [R4, R2] \n\
/* 08022b56 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08022b58 */ LDRSB R2, [R4, R2] \n\
/* 08022b5a */ BL sprite_set_anim_cel \n\
/* 08022b5e */ LDR R0, [R5] \n\
/* 08022b60 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08022b62 */ LDRSH R1, [R4, R2] \n\
/* 08022b64 */ LDRB R2, [R4, 0xB] \n\
/* 08022b66 */ BL sprite_set_visible \n\
/* 08022b6a */ B branch_08022b98 \n\
\n\
.ltorg \n\
 \n\
branch_08022b7c: \n\
/* 08022b7c */ STRB R0, [R4, 0xC] \n\
/* 08022b7e */ LDR R0, [R5] \n\
/* 08022b80 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022b82 */ LDRSH R1, [R4, R2] \n\
/* 08022b84 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08022b86 */ LDRSB R2, [R4, R2] \n\
/* 08022b88 */ BL sprite_set_anim_cel \n\
/* 08022b8c */ LDR R0, [R5] \n\
/* 08022b8e */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022b90 */ LDRSH R1, [R4, R2] \n\
/* 08022b92 */ LDRB R2, [R4, 0xC] \n\
/* 08022b94 */ BL sprite_set_visible \n\
 \n\
branch_08022b98: \n\
/* 08022b98 */ ADD SP, 0x14 \n\
/* 08022b9a */ POP {R4-R6} \n\
/* 08022b9c */ POP {R0} \n\
/* 08022b9e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
