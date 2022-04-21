asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d3cc \n\
/* 0804d3cc */ PUSH {R4-R7, LR} \n\
/* 0804d3ce */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d3d0 */ LSLS R1, R1, 0x10 \n\
/* 0804d3d2 */ LSRS R1, R1, 0x10 \n\
/* 0804d3d4 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0804d3d6 */ LDR R1, =D_03004428 \n\
/* 0804d3d8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804d3da */ STRB R0, [R1] \n\
/* 0804d3dc */ LSLS R0, R7, 0x10 \n\
/* 0804d3de */ ASRS R4, R0, 0x10 \n\
/* 0804d3e0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d3e2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d3e4 */ BL func_0804cc68 \n\
/* 0804d3e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d3ea */ BNE branch_0804d3fc \n\
/* 0804d3ec */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d3ee */ BL func_0804d0a4 \n\
/* 0804d3f2 */ LSLS R0, R0, 0x10 \n\
/* 0804d3f4 */ LSRS R6, R0, 0x10 \n\
/* 0804d3f6 */ ASRS R1, R0, 0x10 \n\
/* 0804d3f8 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804d3fa */ BGE branch_0804d408 \n\
 \n\
branch_0804d3fc: \n\
/* 0804d3fc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804d3fe */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d400 */ B branch_0804d460 \n\
\n\
.ltorg \n\
 \n\
branch_0804d408: \n\
/* 0804d408 */ LSLS R0, R1, 0x4 \n\
/* 0804d40a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804d40c */ LSLS R0, R0, 0x2 \n\
/* 0804d40e */ LDR R2, [R5, 0x8] \n\
/* 0804d410 */ ADDS R3, R2, R0 @ Set R3 to R2 + R0 \n\
/* 0804d412 */ LSLS R0, R4, 0x4 \n\
/* 0804d414 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804d416 */ LSLS R0, R0, 0x2 \n\
/* 0804d418 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0804d41a */ LDR R0, =0x040000d4 @ !Hardware REG_DMA3SAD \n\
/* 0804d41c */ STR R2, [R0] \n\
/* 0804d41e */ STR R3, [R0, 0x4] \n\
/* 0804d420 */ LDR R1, =0x8400000f \n\
/* 0804d422 */ STR R1, [R0, 0x8] \n\
/* 0804d424 */ LDR R0, [R0, 0x8] \n\
/* 0804d426 */ LDRH R0, [R5, 0x1C] \n\
/* 0804d428 */ STRH R0, [R3, 0x2A] \n\
/* 0804d42a */ STRH R7, [R3, 0x18] \n\
/* 0804d42c */ LDRH R0, [R2, 0x1A] \n\
/* 0804d42e */ STRH R0, [R3, 0x1A] \n\
/* 0804d430 */ STRH R6, [R2, 0x1A] \n\
/* 0804d432 */ MOVS R0, 0x1A @ Set R0 to 0x1A \n\
/* 0804d434 */ LDRSH R1, [R3, R0] \n\
/* 0804d436 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804d438 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d43a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804d43c */ BNE branch_0804d44c \n\
/* 0804d43e */ STRH R6, [R5, 0xE] \n\
/* 0804d440 */ B branch_0804d45c \n\
\n\
.ltorg \n\
 \n\
branch_0804d44c: \n\
/* 0804d44c */ MOVS R1, 0x1A @ Set R1 to 0x1A \n\
/* 0804d44e */ LDRSH R0, [R3, R1] \n\
/* 0804d450 */ LDR R2, [R5, 0x8] \n\
/* 0804d452 */ LSLS R1, R0, 0x4 \n\
/* 0804d454 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804d456 */ LSLS R1, R1, 0x2 \n\
/* 0804d458 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804d45a */ STRH R6, [R1, 0x18] \n\
 \n\
branch_0804d45c: \n\
/* 0804d45c */ LSLS R0, R6, 0x10 \n\
/* 0804d45e */ ASRS R0, R0, 0x10 \n\
 \n\
branch_0804d460: \n\
/* 0804d460 */ POP {R4-R7} \n\
/* 0804d462 */ POP {R1} \n\
/* 0804d464 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
