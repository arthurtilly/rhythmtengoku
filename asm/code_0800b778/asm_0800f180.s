asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f180 \n\
/* 0800f180 */ PUSH {R4-R7, LR} \n\
/* 0800f182 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800f184 */ BL func_08004058 \n\
/* 0800f188 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800f18a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800f18c */ ADDS R0, 0x4F @ Add 0x4F to R0 \n\
/* 0800f18e */ LDRB R1, [R0] \n\
/* 0800f190 */ CMP R4, R1 @ Check R4 - R1 \n\
/* 0800f192 */ BCS branch_0800f1a8 \n\
/* 0800f194 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
 \n\
branch_0800f196: \n\
/* 0800f196 */ LSLS R1, R4, 0x10 \n\
/* 0800f198 */ ASRS R1, R1, 0x10 \n\
/* 0800f19a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800f19c */ BL func_0800f89c \n\
/* 0800f1a0 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800f1a2 */ LDRB R0, [R6] \n\
/* 0800f1a4 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0800f1a6 */ BCC branch_0800f196 \n\
 \n\
branch_0800f1a8: \n\
/* 0800f1a8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800f1aa */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800f1ac */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 0800f1ae */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800f1b0 */ LDRB R1, [R6] \n\
/* 0800f1b2 */ CMP R4, R1 @ Check R4 - R1 \n\
/* 0800f1b4 */ BCS branch_0800f1ce \n\
/* 0800f1b6 */ ADDS R7, R5, 0x0 @ Set R7 to R5 + 0x0 \n\
/* 0800f1b8 */ ADDS R7, 0x54 @ Add 0x54 to R7 \n\
 \n\
branch_0800f1ba: \n\
/* 0800f1ba */ ADDS R0, R7, R4 @ Set R0 to R7 + R4 \n\
/* 0800f1bc */ LDRB R0, [R0] \n\
/* 0800f1be */ LSLS R0, R0, 0x18 \n\
/* 0800f1c0 */ ASRS R0, R0, 0x18 \n\
/* 0800f1c2 */ BL func_080021b8 \n\
/* 0800f1c6 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800f1c8 */ LDRB R0, [R6] \n\
/* 0800f1ca */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0800f1cc */ BCC branch_0800f1ba \n\
 \n\
branch_0800f1ce: \n\
/* 0800f1ce */ LDR R0, [R5, 0x8] \n\
/* 0800f1d0 */ BL mem_heap_dealloc \n\
/* 0800f1d4 */ LDR R0, [R5, 0x50] \n\
/* 0800f1d6 */ BL mem_heap_dealloc \n\
/* 0800f1da */ LDR R0, [R5, 0x74] \n\
/* 0800f1dc */ BL mem_heap_dealloc \n\
/* 0800f1e0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800f1e2 */ BL mem_heap_dealloc \n\
/* 0800f1e6 */ POP {R4-R7} \n\
/* 0800f1e8 */ POP {R0} \n\
/* 0800f1ea */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
