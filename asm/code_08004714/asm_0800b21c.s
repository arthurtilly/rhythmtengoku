asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800b21c \n\
/* 0800b21c */ PUSH {R4-R7, LR} \n\
/* 0800b21e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800b220 */ PUSH {R7} \n\
/* 0800b222 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800b224 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800b226 */ BEQ branch_0800b2fc \n\
/* 0800b228 */ MOVS R0, 0x26 @ Set R0 to 0x26 \n\
/* 0800b22a */ LDRSH R1, [R6, R0] \n\
/* 0800b22c */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 0800b22e */ LDRSH R0, [R6, R2] \n\
/* 0800b230 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0800b232 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800b234 */ BGE branch_0800b2fc \n\
/* 0800b236 */ LDRB R1, [R6, 0x13] \n\
/* 0800b238 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800b23a */ BL func_0800ae3c \n\
/* 0800b23e */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0800b240 */ LDRSH R1, [R6, R0] \n\
/* 0800b242 */ MOVS R2, 0x2E @ Set R2 to 0x2E \n\
/* 0800b244 */ LDRSH R0, [R6, R2] \n\
/* 0800b246 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0800b248 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800b24a */ BGE branch_0800b274 \n\
/* 0800b24c */ LDRH R0, [R6, 0x30] \n\
/* 0800b24e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800b250 */ STRH R0, [R6, 0x30] \n\
/* 0800b252 */ LDR R0, =D_03005380 \n\
/* 0800b254 */ LDR R4, [R0] \n\
/* 0800b256 */ MOVS R0, 0x2A @ Set R0 to 0x2A \n\
/* 0800b258 */ LDRSH R5, [R6, R0] \n\
/* 0800b25a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800b25c */ BL func_0800ae1c \n\
/* 0800b260 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800b262 */ LSLS R2, R2, 0x10 \n\
/* 0800b264 */ ASRS R2, R2, 0x10 \n\
/* 0800b266 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b268 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800b26a */ BL func_0804d648 \n\
/* 0800b26e */ B branch_0800b2dc \n\
\n\
.ltorg \n\
 \n\
branch_0800b274: \n\
/* 0800b274 */ MOVS R2, 0x26 @ Set R2 to 0x26 \n\
/* 0800b276 */ LDRSH R0, [R6, R2] \n\
/* 0800b278 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800b27a */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 0800b27c */ LDRSH R1, [R6, R2] \n\
/* 0800b27e */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800b280 */ LDRB R4, [R6, 0x8] \n\
/* 0800b282 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800b284 */ SUBS R7, R0, 0x1 @ Set R7 to R0 - 0x1 \n\
/* 0800b286 */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 0800b288 */ LDRSH R0, [R6, R1] \n\
/* 0800b28a */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0800b28c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800b28e */ BL __modsi3 \n\
/* 0800b292 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800b294 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800b296 */ BGE branch_0800b29a \n\
/* 0800b298 */ ADDS R5, R5, R4 @ Set R5 to R5 + R4 \n\
 \n\
branch_0800b29a: \n\
/* 0800b29a */ LDR R2, [R6, 0x4] \n\
/* 0800b29c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800b29e */ LDR R1, [R6, 0x34] \n\
/* 0800b2a0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800b2a2 */ BL _call_via_r1 \n\
/* 0800b2a6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800b2a8 */ LDR R1, [R6, 0x38] \n\
/* 0800b2aa */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800b2ac */ BEQ branch_0800b2ba \n\
/* 0800b2ae */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800b2b0 */ BL _call_via_r1 \n\
/* 0800b2b4 */ LSLS R0, R0, 0x10 \n\
/* 0800b2b6 */ ASRS R3, R0, 0x10 \n\
/* 0800b2b8 */ B branch_0800b2be \n\
 \n\
branch_0800b2ba: \n\
/* 0800b2ba */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0800b2bc */ NEGS R3, R3 @ Set R3 to -R3 \n\
 \n\
branch_0800b2be: \n\
/* 0800b2be */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800b2c0 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800b2c2 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800b2c4 */ BL func_0800aac0 \n\
/* 0800b2c8 */ LDRH R0, [R6, 0x16] \n\
/* 0800b2ca */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800b2cc */ STRH R0, [R6, 0x16] \n\
/* 0800b2ce */ LDR R0, [R6, 0x4] \n\
/* 0800b2d0 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 0800b2d2 */ LDRSH R1, [R6, R2] \n\
/* 0800b2d4 */ BL func_0800abb0 \n\
/* 0800b2d8 */ LDR R0, =0xfff0 \n\
/* 0800b2da */ STRH R0, [R6, 0x20] \n\
 \n\
branch_0800b2dc: \n\
/* 0800b2dc */ LDRH R0, [R6, 0x26] \n\
/* 0800b2de */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800b2e0 */ STRH R0, [R6, 0x26] \n\
/* 0800b2e2 */ LDRB R1, [R6, 0x12] \n\
/* 0800b2e4 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800b2e6 */ BL func_0800ae3c \n\
/* 0800b2ea */ LDR R3, [R6, 0x40] \n\
/* 0800b2ec */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800b2ee */ BEQ branch_0800b2fc \n\
/* 0800b2f0 */ LDR R0, [R6, 0x44] \n\
/* 0800b2f2 */ MOVS R2, 0x26 @ Set R2 to 0x26 \n\
/* 0800b2f4 */ LDRSH R1, [R6, R2] \n\
/* 0800b2f6 */ SUBS R2, R1, 0x1 @ Set R2 to R1 - 0x1 \n\
/* 0800b2f8 */ BL _call_via_r3 \n\
 \n\
branch_0800b2fc: \n\
/* 0800b2fc */ POP {R3} \n\
/* 0800b2fe */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800b300 */ POP {R4-R7} \n\
/* 0800b302 */ POP {R0} \n\
/* 0800b304 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
