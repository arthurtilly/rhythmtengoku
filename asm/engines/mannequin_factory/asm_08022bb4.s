asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022bb4 \n\
/* 08022bb4 */ PUSH {R4-R7, LR} \n\
/* 08022bb6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08022bb8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08022bba */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08022bbc */ PUSH {R5-R7} \n\
/* 08022bbe */ SUB SP, 0x14 \n\
/* 08022bc0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022bc2 */ LDR R7, =gSpriteHandler \n\
/* 08022bc4 */ LDR R5, =anim_mannequin_hand_r \n\
/* 08022bc6 */ LDR R4, =gCurrentEngineData \n\
/* 08022bc8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_08022bca: \n\
/* 08022bca */ LDR R0, [R4] \n\
/* 08022bcc */ LSLS R1, R2, 0x1 \n\
/* 08022bce */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08022bd0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08022bd2 */ STRH R3, [R0] \n\
/* 08022bd4 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08022bd6 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 08022bd8 */ BLS branch_08022bca \n\
/* 08022bda */ LDR R0, [R7] \n\
/* 08022bdc */ MOVS R4, 0x58 @ Set R4 to 0x58 \n\
/* 08022bde */ STR R4, [SP] \n\
/* 08022be0 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08022be2 */ LSLS R1, R1, 0x7 \n\
/* 08022be4 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08022be6 */ STR R1, [SP, 0x4] \n\
/* 08022be8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08022bea */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08022bec */ STR R2, [SP, 0x8] \n\
/* 08022bee */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 08022bf0 */ STR R6, [SP, 0xC] \n\
/* 08022bf2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08022bf4 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08022bf6 */ STR R1, [SP, 0x10] \n\
/* 08022bf8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08022bfa */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08022bfc */ MOVS R3, 0x2C @ Set R3 to 0x2C \n\
/* 08022bfe */ BL sprite_create \n\
/* 08022c02 */ LDR R5, =gCurrentEngineData \n\
/* 08022c04 */ LDR R1, [R5] \n\
/* 08022c06 */ STRH R0, [R1, 0x6] \n\
/* 08022c08 */ LDR R0, [R7] \n\
/* 08022c0a */ LDR R1, =anim_mannequin_hand_l \n\
/* 08022c0c */ STR R4, [SP] \n\
/* 08022c0e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08022c10 */ STR R2, [SP, 0x4] \n\
/* 08022c12 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08022c14 */ STR R2, [SP, 0x8] \n\
/* 08022c16 */ STR R6, [SP, 0xC] \n\
/* 08022c18 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08022c1a */ LSLS R2, R2, 0x8 \n\
/* 08022c1c */ STR R2, [SP, 0x10] \n\
/* 08022c1e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08022c20 */ MOVS R3, 0x54 @ Set R3 to 0x54 \n\
/* 08022c22 */ BL sprite_create \n\
/* 08022c26 */ LDR R1, [R5] \n\
/* 08022c28 */ STRH R0, [R1, 0x4] \n\
/* 08022c2a */ LDR R0, [R7] \n\
/* 08022c2c */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022c2e */ LDRSH R1, [R1, R2] \n\
/* 08022c30 */ MOVS R2, 0x24 @ Set R2 to 0x24 \n\
/* 08022c32 */ BL sprite_set_x \n\
/* 08022c36 */ LDR R0, [R7] \n\
/* 08022c38 */ LDR R1, =anim_mannequin_stamp_r \n\
/* 08022c3a */ MOVS R4, 0x40 @ Set R4 to 0x40 \n\
/* 08022c3c */ STR R4, [SP] \n\
/* 08022c3e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08022c40 */ STR R2, [SP, 0x4] \n\
/* 08022c42 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08022c44 */ STR R2, [SP, 0x8] \n\
/* 08022c46 */ STR R6, [SP, 0xC] \n\
/* 08022c48 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08022c4a */ STR R2, [SP, 0x10] \n\
/* 08022c4c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08022c4e */ MOVS R3, 0xA8 @ Set R3 to 0xA8 \n\
/* 08022c50 */ BL sprite_create \n\
/* 08022c54 */ LDR R1, [R5] \n\
/* 08022c56 */ STRH R0, [R1, 0x8] \n\
/* 08022c58 */ LDR R0, [R7] \n\
/* 08022c5a */ LDR R1, =anim_mannequin_stamp_l \n\
/* 08022c5c */ STR R4, [SP] \n\
/* 08022c5e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08022c60 */ STR R2, [SP, 0x4] \n\
/* 08022c62 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08022c64 */ STR R2, [SP, 0x8] \n\
/* 08022c66 */ STR R6, [SP, 0xC] \n\
/* 08022c68 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08022c6a */ STR R2, [SP, 0x10] \n\
/* 08022c6c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08022c6e */ MOVS R3, 0xA8 @ Set R3 to 0xA8 \n\
/* 08022c70 */ BL sprite_create \n\
/* 08022c74 */ LDR R1, [R5] \n\
/* 08022c76 */ STRH R0, [R1, 0xA] \n\
/* 08022c78 */ ADD SP, 0x14 \n\
/* 08022c7a */ POP {R3-R5} \n\
/* 08022c7c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08022c7e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08022c80 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08022c82 */ POP {R4-R7} \n\
/* 08022c84 */ POP {R0} \n\
/* 08022c86 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
