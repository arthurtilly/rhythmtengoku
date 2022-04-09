asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007aa0 \n\
/* 08007aa0 */ PUSH {R4, R5, LR} \n\
/* 08007aa2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08007aa4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08007aa6 */ LDRSH R0, [R5, R1] \n\
/* 08007aa8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007aaa */ BLT branch_08007af8 \n\
/* 08007aac */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08007aae */ BL mem_heap_alloc \n\
/* 08007ab2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007ab4 */ LDRH R0, [R5] \n\
/* 08007ab6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08007ab8 */ STRH R0, [R4] \n\
/* 08007aba */ LDRH R0, [R5, 0x2] \n\
/* 08007abc */ STRH R0, [R4, 0x2] \n\
/* 08007abe */ LDRH R0, [R5, 0x4] \n\
/* 08007ac0 */ STRH R0, [R4, 0x4] \n\
/* 08007ac2 */ LDRH R0, [R5, 0x6] \n\
/* 08007ac4 */ LDRH R1, [R5, 0x2] \n\
/* 08007ac6 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08007ac8 */ STRH R0, [R4, 0x6] \n\
/* 08007aca */ LDRH R0, [R5, 0x8] \n\
/* 08007acc */ LDRH R1, [R5, 0x4] \n\
/* 08007ace */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08007ad0 */ STRH R0, [R4, 0x8] \n\
/* 08007ad2 */ LDRH R0, [R5, 0xA] \n\
/* 08007ad4 */ STRH R0, [R4, 0xA] \n\
/* 08007ad6 */ STRH R2, [R4, 0xC] \n\
/* 08007ad8 */ LDRH R0, [R5, 0xC] \n\
/* 08007ada */ STRH R0, [R4, 0xE] \n\
/* 08007adc */ LDR R0, =D_03005380 \n\
/* 08007ade */ LDR R0, [R0] \n\
/* 08007ae0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08007ae2 */ LDRSH R1, [R4, R2] \n\
/* 08007ae4 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08007ae6 */ LDRSH R2, [R4, R3] \n\
/* 08007ae8 */ MOVS R5, 0x4 @ Set R5 to 0x4 \n\
/* 08007aea */ LDRSH R3, [R4, R5] \n\
/* 08007aec */ BL func_0804d5d4 \n\
/* 08007af0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08007af2 */ B branch_08007afc \n\
\n\
.ltorg \n\
 \n\
branch_08007af8: \n\
/* 08007af8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08007afa */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08007afc: \n\
/* 08007afc */ POP {R4, R5} \n\
/* 08007afe */ POP {R1} \n\
/* 08007b00 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
