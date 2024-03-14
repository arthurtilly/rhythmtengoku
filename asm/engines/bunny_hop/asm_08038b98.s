asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038b98 \n\
/* 08038b98 */ PUSH {R4-R6, LR} \n\
/* 08038b9a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08038b9c */ LDR R0, =gCurrentEngineData \n\
/* 08038b9e */ LDR R0, [R0] \n\
/* 08038ba0 */ MOVS R1, 0xBB @ Set R1 to 0xBB \n\
/* 08038ba2 */ LSLS R1, R1, 0x1 \n\
/* 08038ba4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08038ba6 */ LDRB R0, [R0] \n\
/* 08038ba8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08038baa */ BNE branch_08038bb2 \n\
/* 08038bac */ LDRH R0, [R5, 0xC] \n\
/* 08038bae */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08038bb0 */ STRH R0, [R5, 0xC] \n\
 \n\
branch_08038bb2: \n\
/* 08038bb2 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08038bb4 */ BL ticks_to_frames \n\
/* 08038bb8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08038bba */ LDRH R2, [R5, 0xC] \n\
/* 08038bbc */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
/* 08038bbe */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08038bc0 */ LSLS R0, R0, 0x8 \n\
/* 08038bc2 */ BL __divsi3 \n\
/* 08038bc6 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08038bc8 */ LDR R0, [R5, 0x4] \n\
/* 08038bca */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08038bcc */ ASRS R0, R0, 0x8 \n\
/* 08038bce */ LDR R1, =0x12f \n\
/* 08038bd0 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08038bd2 */ BLE branch_08038c1c \n\
/* 08038bd4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08038bd6 */ STRB R0, [R5, 0x2] \n\
/* 08038bd8 */ LDR R4, =gSpriteHandler \n\
/* 08038bda */ LDR R0, [R4] \n\
/* 08038bdc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038bde */ LDRSH R1, [R5, R2] \n\
/* 08038be0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038be2 */ MOVS R3, 0xC0 @ Set R3 to 0xC0 \n\
/* 08038be4 */ BL sprite_set_x_y \n\
/* 08038be8 */ LDR R0, [R4] \n\
/* 08038bea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038bec */ LDRSH R1, [R5, R2] \n\
/* 08038bee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038bf0 */ BL sprite_set_visible \n\
/* 08038bf4 */ LDR R0, [R4] \n\
/* 08038bf6 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08038bf8 */ LDRSH R1, [R5, R2] \n\
/* 08038bfa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038bfc */ MOVS R3, 0xC0 @ Set R3 to 0xC0 \n\
/* 08038bfe */ BL sprite_set_x_y \n\
/* 08038c02 */ LDR R0, [R4] \n\
/* 08038c04 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08038c06 */ LDRSH R1, [R5, R2] \n\
/* 08038c08 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038c0a */ BL sprite_set_visible \n\
/* 08038c0e */ B branch_08038ccc \n\
\n\
.ltorg \n\
 \n\
branch_08038c1c: \n\
/* 08038c1c */ LDRB R0, [R5, 0xE] \n\
/* 08038c1e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08038c20 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08038c22 */ BEQ branch_08038c72 \n\
/* 08038c24 */ LDRB R0, [R5, 0x3] \n\
/* 08038c26 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08038c28 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 08038c2a */ BNE branch_08038c40 \n\
/* 08038c2c */ LDR R0, [R5, 0x14] \n\
/* 08038c2e */ LDR R2, =0xffffd800 \n\
/* 08038c30 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08038c32 */ STR R0, [R5, 0x14] \n\
/* 08038c34 */ ASRS R0, R0, 0x8 \n\
/* 08038c36 */ MOVS R1, 0x28 @ Set R1 to 0x28 \n\
/* 08038c38 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08038c3a */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08038c3c */ BGT branch_08038c40 \n\
/* 08038c3e */ STR R2, [R5, 0x14] \n\
 \n\
branch_08038c40: \n\
/* 08038c40 */ LSLS R0, R4, 0x18 \n\
/* 08038c42 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08038c44 */ BEQ branch_08038c72 \n\
/* 08038c46 */ LSLS R0, R3, 0x18 \n\
/* 08038c48 */ LSRS R0, R0, 0x18 \n\
/* 08038c4a */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 08038c4c */ BNE branch_08038c72 \n\
/* 08038c4e */ LDR R0, =gSpriteHandler \n\
/* 08038c50 */ LDR R0, [R0] \n\
/* 08038c52 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08038c54 */ LDRSH R1, [R5, R2] \n\
/* 08038c56 */ LDR R2, [R5, 0x4] \n\
/* 08038c58 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08038c5a */ LSLS R2, R2, 0x8 \n\
/* 08038c5c */ ASRS R2, R2, 0x10 \n\
/* 08038c5e */ LDR R3, =gCurrentEngineData \n\
/* 08038c60 */ LDR R4, [R3] \n\
/* 08038c62 */ ADDS R4, 0xE0 @ Add 0xE0 to R4 \n\
/* 08038c64 */ LDR R3, [R5, 0x8] \n\
/* 08038c66 */ LDR R4, [R4] \n\
/* 08038c68 */ SUBS R3, R3, R4 @ Set R3 to R3 - R4 \n\
/* 08038c6a */ LSLS R3, R3, 0x8 \n\
/* 08038c6c */ ASRS R3, R3, 0x10 \n\
/* 08038c6e */ BL sprite_set_x_y \n\
 \n\
branch_08038c72: \n\
/* 08038c72 */ LDRH R2, [R5, 0x18] \n\
/* 08038c74 */ SUBS R0, R2, 0x1 @ Set R0 to R2 - 0x1 \n\
/* 08038c76 */ LSLS R0, R0, 0x10 \n\
/* 08038c78 */ LSRS R0, R0, 0x10 \n\
/* 08038c7a */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 08038c7c */ BHI branch_08038ca0 \n\
/* 08038c7e */ LDRH R1, [R5, 0x18] \n\
/* 08038c80 */ LSLS R0, R1, 0xD \n\
/* 08038c82 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08038c84 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08038c86 */ BGE branch_08038c8a \n\
/* 08038c88 */ ADDS R0, 0xF @ Add 0xF to R0 \n\
 \n\
branch_08038c8a: \n\
/* 08038c8a */ ASRS R0, R0, 0x4 \n\
/* 08038c8c */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08038c8e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08038c90 */ BGE branch_08038c94 \n\
/* 08038c92 */ ADDS R0, 0xF @ Add 0xF to R0 \n\
 \n\
branch_08038c94: \n\
/* 08038c94 */ ASRS R0, R0, 0x4 \n\
/* 08038c96 */ LSLS R1, R1, 0x9 \n\
/* 08038c98 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08038c9a */ STR R0, [R5, 0x1C] \n\
/* 08038c9c */ ADDS R0, R2, 0x1 @ Set R0 to R2 + 0x1 \n\
/* 08038c9e */ STRH R0, [R5, 0x18] \n\
 \n\
branch_08038ca0: \n\
/* 08038ca0 */ LDR R0, =gSpriteHandler \n\
/* 08038ca2 */ LDR R0, [R0] \n\
/* 08038ca4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038ca6 */ LDRSH R1, [R5, R2] \n\
/* 08038ca8 */ LDR R2, [R5, 0x4] \n\
/* 08038caa */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08038cac */ LSLS R2, R2, 0x8 \n\
/* 08038cae */ ASRS R2, R2, 0x10 \n\
/* 08038cb0 */ LDR R3, =gCurrentEngineData \n\
/* 08038cb2 */ LDR R4, [R3] \n\
/* 08038cb4 */ ADDS R4, 0xE0 @ Add 0xE0 to R4 \n\
/* 08038cb6 */ LDR R3, [R5, 0x8] \n\
/* 08038cb8 */ LDR R4, [R4] \n\
/* 08038cba */ SUBS R3, R3, R4 @ Set R3 to R3 - R4 \n\
/* 08038cbc */ LDR R4, [R5, 0x14] \n\
/* 08038cbe */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 08038cc0 */ LDR R4, [R5, 0x1C] \n\
/* 08038cc2 */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 08038cc4 */ LSLS R3, R3, 0x8 \n\
/* 08038cc6 */ ASRS R3, R3, 0x10 \n\
/* 08038cc8 */ BL sprite_set_x_y \n\
 \n\
branch_08038ccc: \n\
/* 08038ccc */ POP {R4-R6} \n\
/* 08038cce */ POP {R0} \n\
/* 08038cd0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
