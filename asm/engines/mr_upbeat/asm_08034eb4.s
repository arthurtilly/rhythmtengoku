asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034eb4 \n\
/* 08034eb4 */ PUSH {R4, R5, LR} \n\
/* 08034eb6 */ LDR R0, =gCurrentEngineData \n\
/* 08034eb8 */ LDR R5, [R0] \n\
/* 08034eba */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 08034ebc */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08034ebe */ LDR R1, [R4, 0x14] \n\
/* 08034ec0 */ LDR R0, [R4, 0x18] \n\
/* 08034ec2 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08034ec4 */ BCS branch_08034f04 \n\
/* 08034ec6 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08034ec8 */ STR R1, [R4, 0x14] \n\
/* 08034eca */ LDR R0, [R4, 0x1C] \n\
/* 08034ecc */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08034ece */ BNE branch_08034ed6 \n\
/* 08034ed0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08034ed2 */ BL func_08034e84 \n\
 \n\
branch_08034ed6: \n\
/* 08034ed6 */ LDR R0, [R4, 0x8] \n\
/* 08034ed8 */ LDR R1, [R4, 0xC] \n\
/* 08034eda */ LDR R2, [R4, 0x14] \n\
/* 08034edc */ LDR R3, [R4, 0x18] \n\
/* 08034ede */ BL math_lerp \n\
/* 08034ee2 */ LDR R2, =gSineTable \n\
/* 08034ee4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08034ee6 */ LSLS R1, R1, 0x2 \n\
/* 08034ee8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08034eea */ LDR R1, =0x7ff \n\
/* 08034eec */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08034eee */ LSLS R0, R0, 0x1 \n\
/* 08034ef0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08034ef2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034ef4 */ LDRSH R1, [R0, R2] \n\
/* 08034ef6 */ LDR R0, [R4, 0x10] \n\
/* 08034ef8 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08034efa */ LDR R0, [R5, 0x10] \n\
/* 08034efc */ LSLS R1, R1, 0x8 \n\
/* 08034efe */ ASRS R1, R1, 0x10 \n\
/* 08034f00 */ BL affine_sprite_set_rotation \n\
 \n\
branch_08034f04: \n\
/* 08034f04 */ POP {R4, R5} \n\
/* 08034f06 */ POP {R0} \n\
/* 08034f08 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
