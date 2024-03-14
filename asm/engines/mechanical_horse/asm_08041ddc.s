asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08041ddc \n\
/* 08041ddc */ PUSH {R4-R7, LR} \n\
/* 08041dde */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08041de0 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08041de2 */ PUSH {R6, R7} \n\
/* 08041de4 */ BL func_08041940 \n\
/* 08041de8 */ LSLS R0, R0, 0x18 \n\
/* 08041dea */ LSRS R0, R0, 0x18 \n\
/* 08041dec */ LDR R5, =gCurrentEngineData \n\
/* 08041dee */ LDR R2, [R5] \n\
/* 08041df0 */ LSLS R1, R0, 0x3 \n\
/* 08041df2 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08041df4 */ LSLS R1, R1, 0x2 \n\
/* 08041df6 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08041df8 */ LDRB R2, [R2, 0x7] \n\
/* 08041dfa */ ADDS R0, 0x3F @ Add 0x3F to R0 \n\
/* 08041dfc */ STRB R2, [R0] \n\
/* 08041dfe */ LDR R0, [R5] \n\
/* 08041e00 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041e02 */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08041e04 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 08041e06 */ STRB R7, [R0] \n\
/* 08041e08 */ LDR R2, [R5] \n\
/* 08041e0a */ LDRB R0, [R2, 0x7] \n\
/* 08041e0c */ LSLS R1, R0, 0x1 \n\
/* 08041e0e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08041e10 */ LSLS R1, R1, 0x3 \n\
/* 08041e12 */ MOVS R4, 0x9E @ Set R4 to 0x9E \n\
/* 08041e14 */ LSLS R4, R4, 0x2 \n\
/* 08041e16 */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 08041e18 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041e1a */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08041e1c */ LSLS R1, R1, 0x8 \n\
/* 08041e1e */ STR R1, [R0] \n\
/* 08041e20 */ LDRB R1, [R2, 0x7] \n\
/* 08041e22 */ LSLS R0, R1, 0x1 \n\
/* 08041e24 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041e26 */ LSLS R0, R0, 0x3 \n\
/* 08041e28 */ MOVS R3, 0xA0 @ Set R3 to 0xA0 \n\
/* 08041e2a */ LSLS R3, R3, 0x2 \n\
/* 08041e2c */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08041e2e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08041e30 */ LDR R0, =0xfffffe00 \n\
/* 08041e32 */ STR R0, [R1] \n\
/* 08041e34 */ LDRB R1, [R2, 0x7] \n\
/* 08041e36 */ LSLS R0, R1, 0x1 \n\
/* 08041e38 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041e3a */ LSLS R0, R0, 0x3 \n\
/* 08041e3c */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08041e3e */ LDR R6, =0x26e \n\
/* 08041e40 */ MOV R8, R6 @ Set R8 to R6 \n\
/* 08041e42 */ ADD R2, R8 @ Add R8 to R2 \n\
/* 08041e44 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08041e46 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08041e48 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08041e4a */ STRB R1, [R2] \n\
/* 08041e4c */ LDR R0, =gSpriteHandler \n\
/* 08041e4e */ LDR R0, [R0] \n\
/* 08041e50 */ LDR R2, [R5] \n\
/* 08041e52 */ LDRB R1, [R2, 0x7] \n\
/* 08041e54 */ LSLS R3, R1, 0x1 \n\
/* 08041e56 */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 08041e58 */ LSLS R3, R3, 0x3 \n\
/* 08041e5a */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08041e5c */ SUBS R6, 0x2 @ Subtract 0x2 from R6 \n\
/* 08041e5e */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08041e60 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08041e62 */ LDRSH R1, [R1, R6] \n\
/* 08041e64 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08041e66 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08041e68 */ LDR R2, [R2] \n\
/* 08041e6a */ LSLS R2, R2, 0x8 \n\
/* 08041e6c */ ASRS R2, R2, 0x10 \n\
/* 08041e6e */ BL sprite_set_y \n\
/* 08041e72 */ LDR R2, [R5] \n\
/* 08041e74 */ LDRB R0, [R2, 0x7] \n\
/* 08041e76 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08041e78 */ LSLS R0, R0, 0x18 \n\
/* 08041e7a */ LSRS R3, R0, 0x18 \n\
/* 08041e7c */ LDR R1, =D_0805aa00 \n\
/* 08041e7e */ MOVS R6, 0xB3 @ Set R6 to 0xB3 \n\
/* 08041e80 */ LSLS R6, R6, 0x2 \n\
/* 08041e82 */ ADDS R0, R2, R6 @ Set R0 to R2 + R6 \n\
/* 08041e84 */ LDRB R0, [R0] \n\
/* 08041e86 */ LSLS R0, R0, 0x2 \n\
/* 08041e88 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041e8a */ LDR R0, [R0] \n\
/* 08041e8c */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08041e8e */ BLE branch_08041e92 \n\
/* 08041e90 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_08041e92: \n\
/* 08041e92 */ LSLS R4, R3, 0x1 \n\
/* 08041e94 */ ADDS R4, R4, R3 @ Set R4 to R4 + R3 \n\
/* 08041e96 */ LSLS R4, R4, 0x3 \n\
/* 08041e98 */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 08041e9a */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08041e9c */ STRB R7, [R0] \n\
/* 08041e9e */ LDR R2, =D_0805aa60 \n\
/* 08041ea0 */ LSLS R1, R3, 0x2 \n\
/* 08041ea2 */ LDR R0, [R5] \n\
/* 08041ea4 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08041ea6 */ LDRB R0, [R0] \n\
/* 08041ea8 */ LSLS R0, R0, 0x4 \n\
/* 08041eaa */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08041eac */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08041eae */ LDR R0, [R1] \n\
/* 08041eb0 */ BL ticks_to_frames \n\
/* 08041eb4 */ LDR R1, [R5] \n\
/* 08041eb6 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08041eb8 */ LDR R2, =0x26f \n\
/* 08041eba */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08041ebc */ STRB R0, [R1] \n\
/* 08041ebe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08041ec0 */ BL func_08041444 \n\
/* 08041ec4 */ LDR R1, [R5] \n\
/* 08041ec6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08041ec8 */ STRB R0, [R1, 0x8] \n\
/* 08041eca */ LDR R0, [R5] \n\
/* 08041ecc */ LDR R3, =0x2ea \n\
/* 08041ece */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 08041ed0 */ LDRB R0, [R1] \n\
/* 08041ed2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08041ed4 */ BNE branch_08041efc \n\
/* 08041ed6 */ STRB R7, [R1] \n\
/* 08041ed8 */ B branch_08041f00 \n\
\n\
.ltorg \n\
 \n\
branch_08041efc: \n\
/* 08041efc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08041efe */ STRB R6, [R1] \n\
 \n\
branch_08041f00: \n\
/* 08041f00 */ LDR R1, =D_0805aa20 \n\
/* 08041f02 */ LDR R5, =gCurrentEngineData \n\
/* 08041f04 */ LDR R2, [R5] \n\
/* 08041f06 */ MOVS R3, 0xB3 @ Set R3 to 0xB3 \n\
/* 08041f08 */ LSLS R3, R3, 0x2 \n\
/* 08041f0a */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08041f0c */ LDRB R0, [R0] \n\
/* 08041f0e */ LSLS R0, R0, 0x2 \n\
/* 08041f10 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041f12 */ LDR R1, [R0] \n\
/* 08041f14 */ LSLS R1, R1, 0x1 \n\
/* 08041f16 */ LDR R0, [R2, 0x14] \n\
/* 08041f18 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041f1a */ STR R0, [R2, 0x14] \n\
/* 08041f1c */ LDR R6, =0x2eb \n\
/* 08041f1e */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08041f20 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08041f22 */ STRB R0, [R2] \n\
/* 08041f24 */ LDR R0, [R5] \n\
/* 08041f26 */ MOVS R1, 0xBB @ Set R1 to 0xBB \n\
/* 08041f28 */ LSLS R1, R1, 0x2 \n\
/* 08041f2a */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 08041f2c */ LDRH R0, [R2] \n\
/* 08041f2e */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08041f30 */ STRH R0, [R2] \n\
/* 08041f32 */ LSLS R0, R0, 0x10 \n\
/* 08041f34 */ LSRS R0, R0, 0x10 \n\
/* 08041f36 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08041f38 */ LSLS R1, R1, 0x1 \n\
/* 08041f3a */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08041f3c */ BLS branch_08041f40 \n\
/* 08041f3e */ STRH R1, [R2] \n\
 \n\
branch_08041f40: \n\
/* 08041f40 */ LDR R2, [R5] \n\
/* 08041f42 */ LDR R3, =0x2ee \n\
/* 08041f44 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08041f46 */ LDRH R0, [R0] \n\
/* 08041f48 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08041f4a */ BEQ branch_08041f64 \n\
/* 08041f4c */ MOVS R4, 0xBC @ Set R4 to 0xBC \n\
/* 08041f4e */ LSLS R4, R4, 0x2 \n\
/* 08041f50 */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 08041f52 */ LDRH R0, [R0] \n\
/* 08041f54 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08041f56 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08041f58 */ LSLS R2, R2, 0x4 \n\
/* 08041f5a */ BL clamp_int32 \n\
/* 08041f5e */ LDR R1, [R5] \n\
/* 08041f60 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08041f62 */ STRH R0, [R1] \n\
 \n\
branch_08041f64: \n\
/* 08041f64 */ POP {R3, R4} \n\
/* 08041f66 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08041f68 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08041f6a */ POP {R4-R7} \n\
/* 08041f6c */ POP {R0} \n\
/* 08041f6e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
