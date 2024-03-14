asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034bf4 \n\
/* 08034bf4 */ PUSH {R4-R7, LR} \n\
/* 08034bf6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08034bf8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08034bfa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08034bfc */ PUSH {R5-R7} \n\
/* 08034bfe */ SUB SP, 0x4 \n\
/* 08034c00 */ LDR R0, =gCurrentEngineData \n\
/* 08034c02 */ LDR R0, [R0] \n\
/* 08034c04 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08034c06 */ LDRH R0, [R0] \n\
/* 08034c08 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08034c0a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08034c0c */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08034c0e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08034c10 */ CMP R1, 0x9 @ Compare R1 and 0x9 \n\
/* 08034c12 */ BLS branch_08034c18 \n\
/* 08034c14 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08034c16 */ MOV R10, R2 @ Set R10 to R2 \n\
 \n\
branch_08034c18: \n\
/* 08034c18 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08034c1a */ CMP R0, 0x63 @ Compare R0 and 0x63 \n\
/* 08034c1c */ BLS branch_08034c22 \n\
/* 08034c1e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08034c20 */ ADD R10, R1 @ Add R1 to R10 \n\
 \n\
branch_08034c22: \n\
/* 08034c22 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08034c24 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 08034c26 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
 \n\
branch_08034c28: \n\
/* 08034c28 */ LDR R3, =gSpriteHandler \n\
/* 08034c2a */ LDR R0, [R3] \n\
/* 08034c2c */ LDR R6, =gCurrentEngineData \n\
/* 08034c2e */ LDR R1, [R6] \n\
/* 08034c30 */ LSLS R2, R7, 0x1 \n\
/* 08034c32 */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 08034c34 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08034c36 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034c38 */ LDRSH R1, [R1, R2] \n\
/* 08034c3a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08034c3c */ STR R3, [SP] \n\
/* 08034c3e */ BL sprite_set_anim_cel \n\
/* 08034c42 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08034c44 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 08034c46 */ BLS branch_08034c28 \n\
/* 08034c48 */ LSLS R0, R4, 0x2 \n\
/* 08034c4a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08034c4c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08034c4e */ ADDS R5, 0xD8 @ Add 0xD8 to R5 \n\
/* 08034c50 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08034c52 */ CMP R7, R10 @ Compare R7 and R10 \n\
/* 08034c54 */ BCS branch_08034caa \n\
 \n\
branch_08034c56: \n\
/* 08034c56 */ LDR R0, =gSpriteHandler \n\
/* 08034c58 */ LDR R0, [R0] \n\
/* 08034c5a */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08034c5c */ LDR R1, =gCurrentEngineData \n\
/* 08034c5e */ LDR R0, [R1] \n\
/* 08034c60 */ LSLS R6, R7, 0x1 \n\
/* 08034c62 */ ADDS R0, 0x42 @ Add 0x42 to R0 \n\
/* 08034c64 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08034c66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034c68 */ LDRSH R4, [R0, R2] \n\
/* 08034c6a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08034c6c */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08034c6e */ BL __umodsi3 \n\
/* 08034c72 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08034c74 */ LSLS R2, R2, 0x18 \n\
/* 08034c76 */ ASRS R2, R2, 0x18 \n\
/* 08034c78 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08034c7a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08034c7c */ BL sprite_set_anim_cel \n\
/* 08034c80 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08034c82 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08034c84 */ BL __udivsi3 \n\
/* 08034c88 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08034c8a */ LDR R1, =gSpriteHandler \n\
/* 08034c8c */ LDR R0, [R1] \n\
/* 08034c8e */ LDR R2, =gCurrentEngineData \n\
/* 08034c90 */ LDR R1, [R2] \n\
/* 08034c92 */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 08034c94 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08034c96 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034c98 */ LDRSH R1, [R1, R2] \n\
/* 08034c9a */ LSLS R2, R5, 0x10 \n\
/* 08034c9c */ ASRS R2, R2, 0x10 \n\
/* 08034c9e */ BL sprite_set_x \n\
/* 08034ca2 */ SUBS R5, 0xA @ Subtract 0xA from R5 \n\
/* 08034ca4 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08034ca6 */ CMP R7, R10 @ Compare R7 and R10 \n\
/* 08034ca8 */ BCC branch_08034c56 \n\
 \n\
branch_08034caa: \n\
/* 08034caa */ LDR R0, =gCurrentEngineData \n\
/* 08034cac */ LDR R0, [R0] \n\
/* 08034cae */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08034cb0 */ LDRH R0, [R0] \n\
/* 08034cb2 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08034cb4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08034cb6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08034cb8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08034cba */ CMP R1, 0x9 @ Compare R1 and 0x9 \n\
/* 08034cbc */ BLS branch_08034cc2 \n\
/* 08034cbe */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08034cc0 */ MOV R10, R2 @ Set R10 to R2 \n\
 \n\
branch_08034cc2: \n\
/* 08034cc2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08034cc4 */ CMP R0, 0x63 @ Compare R0 and 0x63 \n\
/* 08034cc6 */ BLS branch_08034ccc \n\
/* 08034cc8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08034cca */ ADD R10, R1 @ Add R1 to R10 \n\
 \n\
branch_08034ccc: \n\
/* 08034ccc */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08034cce */ MOV R4, R10 @ Set R4 to R10 \n\
/* 08034cd0 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
 \n\
branch_08034cd2: \n\
/* 08034cd2 */ LDR R3, =gSpriteHandler \n\
/* 08034cd4 */ LDR R0, [R3] \n\
/* 08034cd6 */ LDR R6, =gCurrentEngineData \n\
/* 08034cd8 */ LDR R1, [R6] \n\
/* 08034cda */ LSLS R2, R7, 0x1 \n\
/* 08034cdc */ ADDS R1, 0x48 @ Add 0x48 to R1 \n\
/* 08034cde */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08034ce0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034ce2 */ LDRSH R1, [R1, R2] \n\
/* 08034ce4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08034ce6 */ STR R3, [SP] \n\
/* 08034ce8 */ BL sprite_set_anim_cel \n\
/* 08034cec */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08034cee */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 08034cf0 */ BLS branch_08034cd2 \n\
/* 08034cf2 */ LSLS R0, R4, 0x1 \n\
/* 08034cf4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08034cf6 */ ADDS R5, 0xD7 @ Add 0xD7 to R5 \n\
/* 08034cf8 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08034cfa */ CMP R7, R10 @ Compare R7 and R10 \n\
/* 08034cfc */ BCS branch_08034d52 \n\
 \n\
branch_08034cfe: \n\
/* 08034cfe */ LDR R0, =gSpriteHandler \n\
/* 08034d00 */ LDR R0, [R0] \n\
/* 08034d02 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08034d04 */ LDR R1, =gCurrentEngineData \n\
/* 08034d06 */ LDR R0, [R1] \n\
/* 08034d08 */ LSLS R6, R7, 0x1 \n\
/* 08034d0a */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08034d0c */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08034d0e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034d10 */ LDRSH R4, [R0, R2] \n\
/* 08034d12 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08034d14 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08034d16 */ BL __umodsi3 \n\
/* 08034d1a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08034d1c */ LSLS R2, R2, 0x18 \n\
/* 08034d1e */ ASRS R2, R2, 0x18 \n\
/* 08034d20 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08034d22 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08034d24 */ BL sprite_set_anim_cel \n\
/* 08034d28 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08034d2a */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08034d2c */ BL __udivsi3 \n\
/* 08034d30 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08034d32 */ LDR R1, =gSpriteHandler \n\
/* 08034d34 */ LDR R0, [R1] \n\
/* 08034d36 */ LDR R2, =gCurrentEngineData \n\
/* 08034d38 */ LDR R1, [R2] \n\
/* 08034d3a */ ADDS R1, 0x48 @ Add 0x48 to R1 \n\
/* 08034d3c */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08034d3e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034d40 */ LDRSH R1, [R1, R2] \n\
/* 08034d42 */ LSLS R2, R5, 0x10 \n\
/* 08034d44 */ ASRS R2, R2, 0x10 \n\
/* 08034d46 */ BL sprite_set_x \n\
/* 08034d4a */ SUBS R5, 0x5 @ Subtract 0x5 from R5 \n\
/* 08034d4c */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08034d4e */ CMP R7, R10 @ Compare R7 and R10 \n\
/* 08034d50 */ BCC branch_08034cfe \n\
 \n\
branch_08034d52: \n\
/* 08034d52 */ ADD SP, 0x4 \n\
/* 08034d54 */ POP {R3-R5} \n\
/* 08034d56 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08034d58 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08034d5a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08034d5c */ POP {R4-R7} \n\
/* 08034d5e */ POP {R0} \n\
/* 08034d60 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
