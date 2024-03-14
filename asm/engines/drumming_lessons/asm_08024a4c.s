asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024a4c \n\
/* 08024a4c */ PUSH {R4-R6, LR} \n\
/* 08024a4e */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08024a50 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08024a52 */ PUSH {R5, R6} \n\
/* 08024a54 */ SUB SP, 0xC \n\
/* 08024a56 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08024a58 */ LDR R0, =gSpriteHandler \n\
/* 08024a5a */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08024a5c */ LDR R0, [R0] \n\
/* 08024a5e */ LDR R5, =gCurrentEngineData \n\
/* 08024a60 */ LDR R1, [R5] \n\
/* 08024a62 */ MOVS R4, 0xD5 @ Set R4 to 0xD5 \n\
/* 08024a64 */ LSLS R4, R4, 0x2 \n\
/* 08024a66 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08024a68 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024a6a */ LDRSH R1, [R1, R2] \n\
/* 08024a6c */ LDR R2, =D_089e01b0 \n\
/* 08024a6e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08024a70 */ LSLS R6, R3, 0x1 \n\
/* 08024a72 */ ADDS R2, R6, R2 @ Set R2 to R6 + R2 \n\
/* 08024a74 */ LDRH R2, [R2] \n\
/* 08024a76 */ BL sprite_set_z \n\
/* 08024a7a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08024a7c */ LDR R0, [R1] \n\
/* 08024a7e */ LDR R2, [R5] \n\
/* 08024a80 */ ADDS R4, R2, R4 @ Set R4 to R2 + R4 \n\
/* 08024a82 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08024a84 */ LDRSH R1, [R4, R3] \n\
/* 08024a86 */ LDR R4, =D_089e0170 \n\
/* 08024a88 */ LDRB R2, [R2] \n\
/* 08024a8a */ LSLS R2, R2, 0x2 \n\
/* 08024a8c */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08024a8e */ LSLS R3, R5, 0x4 \n\
/* 08024a90 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08024a92 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08024a94 */ LDR R2, [R2] \n\
/* 08024a96 */ LDR R5, =D_089e01b8 \n\
/* 08024a98 */ ADD R6, R8 @ Add R8 to R6 \n\
/* 08024a9a */ ADDS R3, R6, R5 @ Set R3 to R6 + R5 \n\
/* 08024a9c */ LDRB R3, [R3] \n\
/* 08024a9e */ LSLS R3, R3, 0x18 \n\
/* 08024aa0 */ ASRS R3, R3, 0x18 \n\
/* 08024aa2 */ ADDS R4, R5, 0x1 @ Set R4 to R5 + 0x1 \n\
/* 08024aa4 */ ADDS R4, R6, R4 @ Set R4 to R6 + R4 \n\
/* 08024aa6 */ LDRB R4, [R4] \n\
/* 08024aa8 */ LSLS R4, R4, 0x18 \n\
/* 08024aaa */ ASRS R4, R4, 0x18 \n\
/* 08024aac */ STR R4, [SP] \n\
/* 08024aae */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08024ab0 */ ADDS R6, R6, R5 @ Set R6 to R6 + R5 \n\
/* 08024ab2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08024ab4 */ LDRSB R4, [R6, R4] \n\
/* 08024ab6 */ STR R4, [SP, 0x4] \n\
/* 08024ab8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08024aba */ STR R4, [SP, 0x8] \n\
/* 08024abc */ BL sprite_set_anim \n\
/* 08024ac0 */ ADD SP, 0xC \n\
/* 08024ac2 */ POP {R3, R4} \n\
/* 08024ac4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08024ac6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08024ac8 */ POP {R4-R6} \n\
/* 08024aca */ POP {R0} \n\
/* 08024acc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
