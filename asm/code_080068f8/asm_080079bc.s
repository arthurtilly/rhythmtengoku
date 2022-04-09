asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080079bc \n\
/* 080079bc */ PUSH {R4, R5, LR} \n\
/* 080079be */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080079c0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080079c2 */ LDRSH R0, [R5, R1] \n\
/* 080079c4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080079c6 */ BLT branch_08007a0a \n\
/* 080079c8 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 080079ca */ BL mem_heap_alloc \n\
/* 080079ce */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080079d0 */ LDRH R0, [R5] \n\
/* 080079d2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080079d4 */ STRH R0, [R4] \n\
/* 080079d6 */ LDRH R0, [R5, 0x2] \n\
/* 080079d8 */ STRH R0, [R4, 0x2] \n\
/* 080079da */ LDRH R0, [R5, 0x4] \n\
/* 080079dc */ STRH R0, [R4, 0x4] \n\
/* 080079de */ LDRH R0, [R5, 0x6] \n\
/* 080079e0 */ LDRH R1, [R5, 0x2] \n\
/* 080079e2 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080079e4 */ STRH R0, [R4, 0x6] \n\
/* 080079e6 */ LDRH R0, [R5, 0x8] \n\
/* 080079e8 */ LDRH R1, [R5, 0x4] \n\
/* 080079ea */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080079ec */ STRH R0, [R4, 0x8] \n\
/* 080079ee */ LDRH R0, [R5, 0xA] \n\
/* 080079f0 */ LSLS R0, R0, 0x4 \n\
/* 080079f2 */ STRH R0, [R4, 0xA] \n\
/* 080079f4 */ LDRH R0, [R5, 0xC] \n\
/* 080079f6 */ LSLS R0, R0, 0x4 \n\
/* 080079f8 */ STRH R0, [R4, 0xC] \n\
/* 080079fa */ STRH R2, [R4, 0xE] \n\
/* 080079fc */ LDRH R0, [R5, 0xE] \n\
/* 080079fe */ STRH R0, [R4, 0x10] \n\
/* 08007a00 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08007a02 */ BL func_0800793c \n\
/* 08007a06 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08007a08 */ B branch_08007a0e \n\
 \n\
branch_08007a0a: \n\
/* 08007a0a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08007a0c */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08007a0e: \n\
/* 08007a0e */ POP {R4, R5} \n\
/* 08007a10 */ POP {R1} \n\
/* 08007a12 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
