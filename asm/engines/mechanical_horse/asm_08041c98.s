asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08041c98 \n\
/* 08041c98 */ PUSH {R4-R7, LR} \n\
/* 08041c9a */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08041c9c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08041c9e */ PUSH {R6, R7} \n\
/* 08041ca0 */ SUB SP, 0xC \n\
/* 08041ca2 */ LDR R5, =gCurrentEngineData \n\
/* 08041ca4 */ LDR R0, [R5] \n\
/* 08041ca6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08041ca8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08041caa */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08041cac */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08041cae */ STRB R2, [R0, 0x6] \n\
/* 08041cb0 */ LDR R0, [R5] \n\
/* 08041cb2 */ STRB R4, [R0, 0x8] \n\
/* 08041cb4 */ LDR R0, [R5] \n\
/* 08041cb6 */ STRB R4, [R0, 0x7] \n\
/* 08041cb8 */ LDR R3, =gSpriteHandler \n\
/* 08041cba */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08041cbc */ LDR R0, [R3] \n\
/* 08041cbe */ LDR R2, [R5] \n\
/* 08041cc0 */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 08041cc2 */ LDRSH R1, [R2, R7] \n\
/* 08041cc4 */ LDR R3, =mechanical_horse_anim \n\
/* 08041cc6 */ MOVS R6, 0xB3 @ Set R6 to 0xB3 \n\
/* 08041cc8 */ LSLS R6, R6, 0x2 \n\
/* 08041cca */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08041ccc */ LDRB R2, [R2] \n\
/* 08041cce */ LSLS R2, R2, 0x2 \n\
/* 08041cd0 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08041cd2 */ LDR R2, [R2] \n\
/* 08041cd4 */ STR R4, [SP] \n\
/* 08041cd6 */ STR R4, [SP, 0x4] \n\
/* 08041cd8 */ STR R4, [SP, 0x8] \n\
/* 08041cda */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08041cdc */ BL sprite_set_anim \n\
/* 08041ce0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08041ce2 */ LDR R0, [R1] \n\
/* 08041ce4 */ LDR R2, [R5] \n\
/* 08041ce6 */ MOVS R3, 0x34 @ Set R3 to 0x34 \n\
/* 08041ce8 */ LDRSH R1, [R2, R3] \n\
/* 08041cea */ LDR R3, =mechanical_horse_jockey_anim \n\
/* 08041cec */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08041cee */ LDRB R2, [R2] \n\
/* 08041cf0 */ LSLS R2, R2, 0x2 \n\
/* 08041cf2 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08041cf4 */ LDR R2, [R2] \n\
/* 08041cf6 */ STR R4, [SP] \n\
/* 08041cf8 */ STR R4, [SP, 0x4] \n\
/* 08041cfa */ STR R4, [SP, 0x8] \n\
/* 08041cfc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08041cfe */ BL sprite_set_anim \n\
/* 08041d02 */ BL func_08041940 \n\
/* 08041d06 */ LDR R1, [R5] \n\
/* 08041d08 */ LSLS R2, R0, 0x3 \n\
/* 08041d0a */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 08041d0c */ LSLS R2, R2, 0x2 \n\
/* 08041d0e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08041d10 */ ADDS R1, 0x3F @ Add 0x3F to R1 \n\
/* 08041d12 */ STRB R4, [R1] \n\
/* 08041d14 */ LDR R0, [R5] \n\
/* 08041d16 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08041d18 */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08041d1a */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 08041d1c */ STRB R4, [R0] \n\
/* 08041d1e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08041d20 */ BL func_08041444 \n\
/* 08041d24 */ LDR R2, [R5] \n\
/* 08041d26 */ LDR R1, =D_0805aa20 \n\
/* 08041d28 */ ADDS R0, R2, R6 @ Set R0 to R2 + R6 \n\
/* 08041d2a */ LDRB R0, [R0] \n\
/* 08041d2c */ LSLS R0, R0, 0x2 \n\
/* 08041d2e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041d30 */ LDR R1, [R2, 0x14] \n\
/* 08041d32 */ LDR R0, [R0] \n\
/* 08041d34 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08041d36 */ STR R1, [R2, 0x14] \n\
/* 08041d38 */ LDR R7, =0x2eb \n\
/* 08041d3a */ ADDS R2, R2, R7 @ Set R2 to R2 + R7 \n\
/* 08041d3c */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08041d3e */ STRB R0, [R2] \n\
/* 08041d40 */ LDR R1, [R5] \n\
/* 08041d42 */ MOVS R3, 0x9E @ Set R3 to 0x9E \n\
/* 08041d44 */ LSLS R3, R3, 0x2 \n\
/* 08041d46 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 08041d48 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 08041d4a */ LSLS R0, R0, 0x8 \n\
/* 08041d4c */ STR R0, [R2] \n\
/* 08041d4e */ SUBS R7, 0x6B @ Subtract 0x6B from R7 \n\
/* 08041d50 */ ADDS R2, R1, R7 @ Set R2 to R1 + R7 \n\
/* 08041d52 */ LDR R0, =0xfffffe00 \n\
/* 08041d54 */ STR R0, [R2] \n\
/* 08041d56 */ LDR R0, =0x26e \n\
/* 08041d58 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08041d5a */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08041d5c */ STRB R2, [R1] \n\
/* 08041d5e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08041d60 */ LDR R0, [R7] \n\
/* 08041d62 */ LDR R2, [R5] \n\
/* 08041d64 */ MOVS R7, 0x9B @ Set R7 to 0x9B \n\
/* 08041d66 */ LSLS R7, R7, 0x2 \n\
/* 08041d68 */ ADDS R1, R2, R7 @ Set R1 to R2 + R7 \n\
/* 08041d6a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08041d6c */ LDRSH R1, [R1, R7] \n\
/* 08041d6e */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08041d70 */ LDR R2, [R2] \n\
/* 08041d72 */ LSLS R2, R2, 0x8 \n\
/* 08041d74 */ ASRS R2, R2, 0x10 \n\
/* 08041d76 */ BL sprite_set_y \n\
/* 08041d7a */ LDR R0, [R5] \n\
/* 08041d7c */ LDR R1, =0x286 \n\
/* 08041d7e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041d80 */ STRB R4, [R0] \n\
/* 08041d82 */ LDR R2, =D_0805aa60 \n\
/* 08041d84 */ LDR R0, [R5] \n\
/* 08041d86 */ LDRB R1, [R0, 0x7] \n\
/* 08041d88 */ LSLS R1, R1, 0x2 \n\
/* 08041d8a */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08041d8c */ LDRB R0, [R0] \n\
/* 08041d8e */ LSLS R0, R0, 0x4 \n\
/* 08041d90 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08041d92 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08041d94 */ LDR R0, [R1] \n\
/* 08041d96 */ BL ticks_to_frames \n\
/* 08041d9a */ LDR R1, [R5] \n\
/* 08041d9c */ LDR R2, =0x287 \n\
/* 08041d9e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08041da0 */ STRB R0, [R1] \n\
/* 08041da2 */ ADD SP, 0xC \n\
/* 08041da4 */ POP {R3, R4} \n\
/* 08041da6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08041da8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08041daa */ POP {R4-R7} \n\
/* 08041dac */ POP {R0} \n\
/* 08041dae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
