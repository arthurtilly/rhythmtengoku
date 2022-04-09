asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a204 \n\
/* 0800a204 */ PUSH {R4-R7, LR} \n\
/* 0800a206 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0800a208 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800a20a */ PUSH {R6, R7} \n\
/* 0800a20c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800a20e */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0800a210 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800a212 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0800a214 */ LSLS R4, R4, 0x10 \n\
/* 0800a216 */ LSRS R4, R4, 0x10 \n\
/* 0800a218 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a21a */ MOVS R1, 0x58 @ Set R1 to 0x58 \n\
/* 0800a21c */ BL mem_heap_alloc_id \n\
/* 0800a220 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800a222 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800a224 */ STRH R4, [R6] \n\
/* 0800a226 */ STRB R0, [R6, 0x2] \n\
/* 0800a228 */ STRH R7, [R6, 0xC] \n\
/* 0800a22a */ LSLS R5, R7, 0x1 \n\
/* 0800a22c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a22e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800a230 */ BL mem_heap_alloc_id \n\
/* 0800a234 */ STR R0, [R6, 0x10] \n\
/* 0800a236 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a238 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800a23a */ BL mem_heap_alloc_id \n\
/* 0800a23e */ STR R0, [R6, 0x14] \n\
/* 0800a240 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a242 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800a244 */ BL mem_heap_alloc_id \n\
/* 0800a248 */ STR R0, [R6, 0x18] \n\
/* 0800a24a */ LSLS R1, R7, 0x2 \n\
/* 0800a24c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a24e */ BL mem_heap_alloc_id \n\
/* 0800a252 */ STR R0, [R6, 0x1C] \n\
/* 0800a254 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a256 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800a258 */ BL mem_heap_alloc_id \n\
/* 0800a25c */ STR R0, [R6, 0x20] \n\
/* 0800a25e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a260 */ CMP R2, R7 @ Check R2 - R7 \n\
/* 0800a262 */ BCS branch_0800a280 \n\
/* 0800a264 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800a266 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800a268 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0800a26a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800a26c */ LDR R4, [R6, 0x1C] \n\
/* 0800a26e */ LDR R1, [R6, 0x10] \n\
 \n\
branch_0800a270: \n\
/* 0800a270 */ STRH R3, [R1] \n\
/* 0800a272 */ STMIA R4!, {R5} \n\
/* 0800a274 */ STRH R3, [R0] \n\
/* 0800a276 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0800a278 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0800a27a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800a27c */ CMP R2, R7 @ Check R2 - R7 \n\
/* 0800a27e */ BCC branch_0800a270 \n\
 \n\
branch_0800a280: \n\
/* 0800a280 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800a282 */ STRB R4, [R6, 0x5] \n\
/* 0800a284 */ STRB R4, [R6, 0x6] \n\
/* 0800a286 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800a288 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800a28a */ STRH R0, [R6, 0x8] \n\
/* 0800a28c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800a28e */ BL func_0800a1ac \n\
/* 0800a292 */ STRB R0, [R6, 0x4] \n\
/* 0800a294 */ LDRB R1, [R6, 0x4] \n\
/* 0800a296 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800a298 */ BL func_0800a1d4 \n\
/* 0800a29c */ STRH R0, [R6, 0x28] \n\
/* 0800a29e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800a2a0 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0800a2a2 */ STRH R0, [R6, 0x26] \n\
/* 0800a2a4 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800a2a6 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0800a2a8 */ STRB R5, [R0] \n\
/* 0800a2aa */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800a2ac */ STRB R5, [R0] \n\
/* 0800a2ae */ ADDS R0, 0x5 @ Add 0x5 to R0 \n\
/* 0800a2b0 */ STRB R5, [R0] \n\
/* 0800a2b2 */ STRH R4, [R6, 0x2C] \n\
/* 0800a2b4 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0800a2b6 */ STRH R0, [R6, 0x2E] \n\
/* 0800a2b8 */ STRH R4, [R6, 0x30] \n\
/* 0800a2ba */ STRB R5, [R6, 0x3] \n\
/* 0800a2bc */ STR R4, [R6, 0x34] \n\
/* 0800a2be */ STRB R5, [R6, 0xA] \n\
/* 0800a2c0 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0800a2c2 */ STRB R0, [R6, 0xB] \n\
/* 0800a2c4 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800a2c6 */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 0800a2c8 */ STRB R5, [R0] \n\
/* 0800a2ca */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800a2cc */ STRB R5, [R0] \n\
/* 0800a2ce */ STR R4, [R6, 0x3C] \n\
/* 0800a2d0 */ STR R4, [R6, 0x44] \n\
/* 0800a2d2 */ STR R4, [R6, 0x50] \n\
/* 0800a2d4 */ STR R4, [R6, 0x4C] \n\
/* 0800a2d6 */ ADDS R0, 0x1B @ Add 0x1B to R0 \n\
/* 0800a2d8 */ STRB R5, [R0] \n\
/* 0800a2da */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800a2dc */ ADDS R1, 0x55 @ Add 0x55 to R1 \n\
/* 0800a2de */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0800a2e0 */ STRB R0, [R1] \n\
/* 0800a2e2 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0800a2e4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800a2e6 */ STRB R0, [R1] \n\
/* 0800a2e8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800a2ea */ POP {R3, R4} \n\
/* 0800a2ec */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800a2ee */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800a2f0 */ POP {R4-R7} \n\
/* 0800a2f2 */ POP {R1} \n\
/* 0800a2f4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
