asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032a64 \n\
/* 08032a64 */ PUSH {R4-R7, LR} \n\
/* 08032a66 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08032a68 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08032a6a */ PUSH {R6, R7} \n\
/* 08032a6c */ SUB SP, 0xC \n\
/* 08032a6e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08032a70 */ LDR R5, =gCurrentEngineData \n\
/* 08032a72 */ LDR R0, [R5] \n\
/* 08032a74 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 08032a76 */ LSLS R1, R1, 0x1 \n\
/* 08032a78 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 08032a7a */ LDR R3, =0x213 \n\
/* 08032a7c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08032a7e */ STRB R2, [R0] \n\
/* 08032a80 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 08032a82 */ BEQ branch_08032af0 \n\
/* 08032a84 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 08032a86 */ BHI branch_08032a98 \n\
/* 08032a88 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08032a8a */ BEQ branch_08032aa4 \n\
/* 08032a8c */ B branch_08032be2 \n\
\n\
.ltorg \n\
 \n\
branch_08032a98: \n\
/* 08032a98 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 08032a9a */ BEQ branch_08032b4c \n\
/* 08032a9c */ CMP R2, 0x4 @ Compare R2 and 0x4 \n\
/* 08032a9e */ BNE branch_08032aa2 \n\
/* 08032aa0 */ B branch_08032b9c \n\
 \n\
branch_08032aa2: \n\
/* 08032aa2 */ B branch_08032be2 \n\
 \n\
branch_08032aa4: \n\
/* 08032aa4 */ LDR R0, [R5] \n\
/* 08032aa6 */ MOVS R1, 0x85 @ Set R1 to 0x85 \n\
/* 08032aa8 */ LSLS R1, R1, 0x2 \n\
/* 08032aaa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08032aac */ STRB R2, [R0] \n\
/* 08032aae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032ab0 */ LDR R6, =power_calligraphy_people_dance_anim \n\
 \n\
branch_08032ab2: \n\
/* 08032ab2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08032ab4 */ ADDS R7, R2, 0x1 @ Set R7 to R2 + 0x1 \n\
 \n\
branch_08032ab6: \n\
/* 08032ab6 */ LDR R0, =gSpriteHandler \n\
/* 08032ab8 */ LDR R0, [R0] \n\
/* 08032aba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032abc */ LDRSH R1, [R4, R2] \n\
/* 08032abe */ LDRB R2, [R4, 0x2] \n\
/* 08032ac0 */ LSLS R2, R2, 0x3 \n\
/* 08032ac2 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08032ac4 */ LDR R2, [R2] \n\
/* 08032ac6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08032ac8 */ STR R3, [SP] \n\
/* 08032aca */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08032acc */ STR R3, [SP, 0x4] \n\
/* 08032ace */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032ad0 */ STR R3, [SP, 0x8] \n\
/* 08032ad2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08032ad4 */ BL sprite_set_anim \n\
/* 08032ad8 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08032ada */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08032adc */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08032ade */ BLS branch_08032ab6 \n\
/* 08032ae0 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08032ae2 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08032ae4 */ BLS branch_08032ab2 \n\
/* 08032ae6 */ B branch_08032be2 \n\
\n\
.ltorg \n\
 \n\
branch_08032af0: \n\
/* 08032af0 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08032af2 */ BL ticks_to_frames \n\
/* 08032af6 */ LDR R1, [R5] \n\
/* 08032af8 */ LDR R3, =0x215 \n\
/* 08032afa */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08032afc */ STRB R0, [R1] \n\
/* 08032afe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032b00 */ LDR R0, =power_calligraphy_people_fall_anim \n\
/* 08032b02 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08032b04 */ MOV R8, R2 @ Set R8 to R2 \n\
 \n\
branch_08032b06: \n\
/* 08032b06 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08032b08 */ ADDS R7, R2, 0x1 @ Set R7 to R2 + 0x1 \n\
/* 08032b0a */ LSLS R6, R2, 0x2 \n\
 \n\
branch_08032b0c: \n\
/* 08032b0c */ LDR R0, =gSpriteHandler \n\
/* 08032b0e */ LDR R0, [R0] \n\
/* 08032b10 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032b12 */ LDRSH R1, [R4, R2] \n\
/* 08032b14 */ LDRB R2, [R4, 0x2] \n\
/* 08032b16 */ LSLS R2, R2, 0x3 \n\
/* 08032b18 */ ADDS R2, R6, R2 @ Set R2 to R6 + R2 \n\
/* 08032b1a */ ADD R2, R9 @ Add R9 to R2 \n\
/* 08032b1c */ LDR R2, [R2] \n\
/* 08032b1e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08032b20 */ STR R3, [SP] \n\
/* 08032b22 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08032b24 */ STR R3, [SP, 0x4] \n\
/* 08032b26 */ STR R3, [SP, 0x8] \n\
/* 08032b28 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032b2a */ BL sprite_set_anim \n\
/* 08032b2e */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08032b30 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08032b32 */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08032b34 */ BLS branch_08032b0c \n\
/* 08032b36 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08032b38 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08032b3a */ BLS branch_08032b06 \n\
/* 08032b3c */ B branch_08032be2 \n\
\n\
.ltorg \n\
 \n\
branch_08032b4c: \n\
/* 08032b4c */ LDR R0, [R5] \n\
/* 08032b4e */ MOVS R1, 0x85 @ Set R1 to 0x85 \n\
/* 08032b50 */ LSLS R1, R1, 0x2 \n\
/* 08032b52 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08032b54 */ STRB R2, [R0] \n\
/* 08032b56 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032b58 */ LDR R3, =power_calligraphy_people_bow_anim \n\
/* 08032b5a */ MOV R8, R3 @ Set R8 to R3 \n\
 \n\
branch_08032b5c: \n\
/* 08032b5c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08032b5e */ ADDS R7, R2, 0x1 @ Set R7 to R2 + 0x1 \n\
/* 08032b60 */ LSLS R6, R2, 0x2 \n\
 \n\
branch_08032b62: \n\
/* 08032b62 */ LDR R0, =gSpriteHandler \n\
/* 08032b64 */ LDR R0, [R0] \n\
/* 08032b66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032b68 */ LDRSH R1, [R4, R2] \n\
/* 08032b6a */ LDRB R2, [R4, 0x2] \n\
/* 08032b6c */ LSLS R2, R2, 0x3 \n\
/* 08032b6e */ ADDS R2, R6, R2 @ Set R2 to R6 + R2 \n\
/* 08032b70 */ ADD R2, R8 @ Add R8 to R2 \n\
/* 08032b72 */ LDR R2, [R2] \n\
/* 08032b74 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08032b76 */ STR R3, [SP] \n\
/* 08032b78 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08032b7a */ STR R3, [SP, 0x4] \n\
/* 08032b7c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032b7e */ STR R3, [SP, 0x8] \n\
/* 08032b80 */ BL sprite_set_anim \n\
/* 08032b84 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08032b86 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08032b88 */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08032b8a */ BLS branch_08032b62 \n\
/* 08032b8c */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08032b8e */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08032b90 */ BLS branch_08032b5c \n\
/* 08032b92 */ B branch_08032be2 \n\
\n\
.ltorg \n\
 \n\
branch_08032b9c: \n\
/* 08032b9c */ LDR R0, [R5] \n\
/* 08032b9e */ MOVS R3, 0x85 @ Set R3 to 0x85 \n\
/* 08032ba0 */ LSLS R3, R3, 0x2 \n\
/* 08032ba2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08032ba4 */ STRB R2, [R0] \n\
/* 08032ba6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032ba8 */ LDR R0, =power_calligraphy_people_bow_anim \n\
/* 08032baa */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08032bac */ MOV R8, R2 @ Set R8 to R2 \n\
 \n\
branch_08032bae: \n\
/* 08032bae */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08032bb0 */ ADDS R7, R2, 0x1 @ Set R7 to R2 + 0x1 \n\
/* 08032bb2 */ LSLS R6, R2, 0x2 \n\
 \n\
branch_08032bb4: \n\
/* 08032bb4 */ LDR R0, =gSpriteHandler \n\
/* 08032bb6 */ LDR R0, [R0] \n\
/* 08032bb8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032bba */ LDRSH R1, [R4, R2] \n\
/* 08032bbc */ LDRB R2, [R4, 0x2] \n\
/* 08032bbe */ LSLS R2, R2, 0x3 \n\
/* 08032bc0 */ ADDS R2, R6, R2 @ Set R2 to R6 + R2 \n\
/* 08032bc2 */ ADD R2, R9 @ Add R9 to R2 \n\
/* 08032bc4 */ LDR R2, [R2] \n\
/* 08032bc6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08032bc8 */ STR R3, [SP] \n\
/* 08032bca */ STR R3, [SP, 0x4] \n\
/* 08032bcc */ STR R3, [SP, 0x8] \n\
/* 08032bce */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032bd0 */ BL sprite_set_anim \n\
/* 08032bd4 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08032bd6 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08032bd8 */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08032bda */ BLS branch_08032bb4 \n\
/* 08032bdc */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08032bde */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08032be0 */ BLS branch_08032bae \n\
 \n\
branch_08032be2: \n\
/* 08032be2 */ ADD SP, 0xC \n\
/* 08032be4 */ POP {R3, R4} \n\
/* 08032be6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08032be8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08032bea */ POP {R4-R7} \n\
/* 08032bec */ POP {R0} \n\
/* 08032bee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
