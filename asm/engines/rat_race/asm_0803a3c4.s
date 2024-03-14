asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a3c4 \n\
/* 0803a3c4 */ PUSH {R4-R6, LR} \n\
/* 0803a3c6 */ LDR R5, =gCurrentEngineData \n\
/* 0803a3c8 */ LDR R3, [R5] \n\
/* 0803a3ca */ LDRB R0, [R3, 0x14] \n\
/* 0803a3cc */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803a3ce */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803a3d0 */ BEQ branch_0803a3d4 \n\
/* 0803a3d2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_0803a3d4: \n\
/* 0803a3d4 */ LSLS R1, R1, 0x4 \n\
/* 0803a3d6 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803a3d8 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 0803a3da */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a3dc */ LDR R2, [R0] \n\
/* 0803a3de */ LDR R0, [R3, 0x30] \n\
/* 0803a3e0 */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0803a3e2 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0803a3e4 */ LSLS R0, R0, 0x7 \n\
/* 0803a3e6 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0803a3e8 */ ASRS R2, R2, 0x8 \n\
/* 0803a3ea */ STR R2, [R3, 0xC] \n\
/* 0803a3ec */ LDR R4, =gSpriteHandler \n\
/* 0803a3ee */ LDR R0, [R4] \n\
/* 0803a3f0 */ MOVS R6, 0x8 @ Set R6 to 0x8 \n\
/* 0803a3f2 */ LDRSH R1, [R3, R6] \n\
/* 0803a3f4 */ LSLS R2, R2, 0x10 \n\
/* 0803a3f6 */ ASRS R2, R2, 0x10 \n\
/* 0803a3f8 */ BL sprite_set_x \n\
/* 0803a3fc */ LDR R0, [R4] \n\
/* 0803a3fe */ LDR R2, [R5] \n\
/* 0803a400 */ MOVS R3, 0x12 @ Set R3 to 0x12 \n\
/* 0803a402 */ LDRSH R1, [R2, R3] \n\
/* 0803a404 */ MOVS R6, 0xC @ Set R6 to 0xC \n\
/* 0803a406 */ LDRSH R2, [R2, R6] \n\
/* 0803a408 */ BL sprite_set_x \n\
/* 0803a40c */ POP {R4-R6} \n\
/* 0803a40e */ POP {R0} \n\
/* 0803a410 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
