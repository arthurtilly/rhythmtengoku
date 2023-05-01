asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024ef4 \n\
/* 08024ef4 */ PUSH {R4-R7, LR} \n\
/* 08024ef6 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08024ef8 */ LDR R0, =D_089e0398 \n\
/* 08024efa */ LSLS R1, R6, 0x2 \n\
/* 08024efc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08024efe */ LDR R4, [R1] \n\
/* 08024f00 */ LDR R5, =gCurrentEngineData \n\
/* 08024f02 */ LDR R0, [R5] \n\
/* 08024f04 */ MOVS R7, 0xE4 @ Set R7 to 0xE4 \n\
/* 08024f06 */ LSLS R7, R7, 0x2 \n\
/* 08024f08 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08024f0a */ LDR R0, [R0] \n\
/* 08024f0c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024f0e */ BEQ branch_08024f1e \n\
/* 08024f10 */ BL mem_heap_dealloc \n\
/* 08024f14 */ LDR R0, [R5] \n\
/* 08024f16 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08024f18 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08024f1a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08024f1c */ STR R1, [R0] \n\
 \n\
branch_08024f1e: \n\
/* 08024f1e */ LDR R0, [R5] \n\
/* 08024f20 */ MOVS R1, 0xE1 @ Set R1 to 0xE1 \n\
/* 08024f22 */ LSLS R1, R1, 0x2 \n\
/* 08024f24 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08024f26 */ STRB R6, [R0] \n\
/* 08024f28 */ LDR R0, [R5] \n\
/* 08024f2a */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08024f2c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08024f2e */ STR R4, [R0] \n\
/* 08024f30 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08024f32 */ BEQ branch_08024f56 \n\
/* 08024f34 */ BL get_current_mem_id \n\
/* 08024f38 */ LSLS R0, R0, 0x10 \n\
/* 08024f3a */ LSRS R0, R0, 0x10 \n\
/* 08024f3c */ LDR R1, [R4, 0x18] \n\
/* 08024f3e */ BL mem_heap_alloc_id \n\
/* 08024f42 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08024f44 */ LDR R0, [R5] \n\
/* 08024f46 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08024f48 */ STR R2, [R0] \n\
/* 08024f4a */ LDR R1, [R4] \n\
/* 08024f4c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08024f4e */ BEQ branch_08024f56 \n\
/* 08024f50 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08024f52 */ BL _call_via_r1 \n\
 \n\
branch_08024f56: \n\
/* 08024f56 */ POP {R4-R7} \n\
/* 08024f58 */ POP {R0} \n\
/* 08024f5a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
