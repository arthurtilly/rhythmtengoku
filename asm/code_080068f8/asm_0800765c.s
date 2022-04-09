asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800765c \n\
/* 0800765c */ PUSH {R4-R6, LR} \n\
/* 0800765e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08007660 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08007662 */ LDRSH R0, [R5, R1] \n\
/* 08007664 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007666 */ BLT branch_080076e0 \n\
/* 08007668 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0800766a */ BL mem_heap_alloc \n\
/* 0800766e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007670 */ LDRH R0, [R5] \n\
/* 08007672 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08007674 */ STRH R0, [R4] \n\
/* 08007676 */ LDRH R0, [R5, 0x2] \n\
/* 08007678 */ STRH R0, [R4, 0x2] \n\
/* 0800767a */ LDRH R0, [R5, 0x4] \n\
/* 0800767c */ STRH R0, [R4, 0x4] \n\
/* 0800767e */ LDRH R0, [R5, 0x6] \n\
/* 08007680 */ LDRH R1, [R5, 0x2] \n\
/* 08007682 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08007684 */ STRH R0, [R4, 0x6] \n\
/* 08007686 */ LDRH R0, [R5, 0x8] \n\
/* 08007688 */ LDRH R1, [R5, 0x4] \n\
/* 0800768a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800768c */ STRH R0, [R4, 0x8] \n\
/* 0800768e */ STR R2, [R4, 0xC] \n\
/* 08007690 */ LDR R2, =D_03004ae4 \n\
/* 08007692 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08007694 */ LDRSH R0, [R4, R3] \n\
/* 08007696 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08007698 */ MULS R6, R0 @ Multiply R6 by R0 \n\
/* 0800769a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800769c */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0800769e */ LDRSH R1, [R4, R3] \n\
/* 080076a0 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080076a2 */ MULS R6, R1 @ Multiply R6 by R1 \n\
/* 080076a4 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080076a6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080076a8 */ LDR R1, [R2] \n\
/* 080076aa */ BL _call_via_r1 \n\
/* 080076ae */ LSLS R0, R0, 0x8 \n\
/* 080076b0 */ STR R0, [R4, 0x10] \n\
/* 080076b2 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080076b4 */ LDRSH R0, [R5, R1] \n\
/* 080076b6 */ STR R0, [R4, 0x14] \n\
/* 080076b8 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 080076ba */ LDRSH R0, [R5, R2] \n\
/* 080076bc */ STR R0, [R4, 0x18] \n\
/* 080076be */ LDR R0, =D_03005380 \n\
/* 080076c0 */ LDR R0, [R0] \n\
/* 080076c2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080076c4 */ LDRSH R1, [R5, R3] \n\
/* 080076c6 */ MOVS R6, 0x2 @ Set R6 to 0x2 \n\
/* 080076c8 */ LDRSH R2, [R5, R6] \n\
/* 080076ca */ MOVS R6, 0x4 @ Set R6 to 0x4 \n\
/* 080076cc */ LDRSH R3, [R5, R6] \n\
/* 080076ce */ BL func_0804d5d4 \n\
/* 080076d2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080076d4 */ B branch_080076e4 \n\
\n\
.ltorg \n\
 \n\
branch_080076e0: \n\
/* 080076e0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080076e2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_080076e4: \n\
/* 080076e4 */ POP {R4-R6} \n\
/* 080076e6 */ POP {R1} \n\
/* 080076e8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
