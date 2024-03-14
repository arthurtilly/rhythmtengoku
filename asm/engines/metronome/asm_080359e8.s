asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080359e8 \n\
/* 080359e8 */ PUSH {R4-R7, LR} \n\
/* 080359ea */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080359ec */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080359ee */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080359f0 */ PUSH {R5-R7} \n\
/* 080359f2 */ LDR R0, =gCurrentEngineData \n\
/* 080359f4 */ LDR R0, [R0] \n\
/* 080359f6 */ LDRH R0, [R0, 0x2C] \n\
/* 080359f8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080359fa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080359fc */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080359fe */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08035a00 */ CMP R1, 0x9 @ Compare R1 and 0x9 \n\
/* 08035a02 */ BLS branch_08035a08 \n\
/* 08035a04 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08035a06 */ MOV R10, R2 @ Set R10 to R2 \n\
 \n\
branch_08035a08: \n\
/* 08035a08 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08035a0a */ CMP R0, 0x63 @ Compare R0 and 0x63 \n\
/* 08035a0c */ BLS branch_08035a12 \n\
/* 08035a0e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08035a10 */ ADD R10, R1 @ Add R1 to R10 \n\
 \n\
branch_08035a12: \n\
/* 08035a12 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08035a14 */ MOV R5, R10 @ Set R5 to R10 \n\
/* 08035a16 */ SUBS R5, 0x1 @ Subtract 0x1 from R5 \n\
 \n\
branch_08035a18: \n\
/* 08035a18 */ LDR R6, =gSpriteHandler \n\
/* 08035a1a */ LDR R0, [R6] \n\
/* 08035a1c */ LDR R4, =gCurrentEngineData \n\
/* 08035a1e */ LDR R1, [R4] \n\
/* 08035a20 */ LSLS R2, R7, 0x1 \n\
/* 08035a22 */ ADDS R1, 0x16 @ Add 0x16 to R1 \n\
/* 08035a24 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08035a26 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035a28 */ LDRSH R1, [R1, R2] \n\
/* 08035a2a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08035a2c */ BL sprite_set_anim_cel \n\
/* 08035a30 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08035a32 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 08035a34 */ BLS branch_08035a18 \n\
/* 08035a36 */ LSLS R0, R5, 0x2 \n\
/* 08035a38 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08035a3a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08035a3c */ ADDS R5, 0xD8 @ Add 0xD8 to R5 \n\
/* 08035a3e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08035a40 */ CMP R7, R10 @ Compare R7 and R10 \n\
/* 08035a42 */ BCS branch_08035a98 \n\
 \n\
branch_08035a44: \n\
/* 08035a44 */ LDR R0, =gSpriteHandler \n\
/* 08035a46 */ LDR R0, [R0] \n\
/* 08035a48 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08035a4a */ LDR R1, =gCurrentEngineData \n\
/* 08035a4c */ LDR R0, [R1] \n\
/* 08035a4e */ LSLS R6, R7, 0x1 \n\
/* 08035a50 */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 08035a52 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08035a54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035a56 */ LDRSH R4, [R0, R2] \n\
/* 08035a58 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08035a5a */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08035a5c */ BL __umodsi3 \n\
/* 08035a60 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08035a62 */ LSLS R2, R2, 0x18 \n\
/* 08035a64 */ ASRS R2, R2, 0x18 \n\
/* 08035a66 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08035a68 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08035a6a */ BL sprite_set_anim_cel \n\
/* 08035a6e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08035a70 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08035a72 */ BL __udivsi3 \n\
/* 08035a76 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08035a78 */ LDR R1, =gSpriteHandler \n\
/* 08035a7a */ LDR R0, [R1] \n\
/* 08035a7c */ LDR R2, =gCurrentEngineData \n\
/* 08035a7e */ LDR R1, [R2] \n\
/* 08035a80 */ ADDS R1, 0x16 @ Add 0x16 to R1 \n\
/* 08035a82 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08035a84 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035a86 */ LDRSH R1, [R1, R2] \n\
/* 08035a88 */ LSLS R2, R5, 0x10 \n\
/* 08035a8a */ ASRS R2, R2, 0x10 \n\
/* 08035a8c */ BL sprite_set_x \n\
/* 08035a90 */ SUBS R5, 0xA @ Subtract 0xA from R5 \n\
/* 08035a92 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08035a94 */ CMP R7, R10 @ Compare R7 and R10 \n\
/* 08035a96 */ BCC branch_08035a44 \n\
 \n\
branch_08035a98: \n\
/* 08035a98 */ POP {R3-R5} \n\
/* 08035a9a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08035a9c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08035a9e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08035aa0 */ POP {R4-R7} \n\
/* 08035aa2 */ POP {R0} \n\
/* 08035aa4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
