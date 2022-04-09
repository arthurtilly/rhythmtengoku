asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800757c \n\
/* 0800757c */ PUSH {R4-R6, LR} \n\
/* 0800757e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08007580 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08007582 */ LDRSH R0, [R5, R1] \n\
/* 08007584 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007586 */ BLT branch_080075d8 \n\
/* 08007588 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0800758a */ BL mem_heap_alloc \n\
/* 0800758e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007590 */ LDRH R0, [R5] \n\
/* 08007592 */ STRH R0, [R4] \n\
/* 08007594 */ LDRH R0, [R5, 0x6] \n\
/* 08007596 */ STRH R0, [R4, 0x2] \n\
/* 08007598 */ LDRH R0, [R5, 0x8] \n\
/* 0800759a */ STRH R0, [R4, 0x4] \n\
/* 0800759c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0800759e */ LDRSH R0, [R5, R2] \n\
/* 080075a0 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 080075a2 */ LDRSH R1, [R5, R3] \n\
/* 080075a4 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080075a6 */ LSLS R0, R0, 0x8 \n\
/* 080075a8 */ STR R0, [R4, 0x8] \n\
/* 080075aa */ MOVS R6, 0x4 @ Set R6 to 0x4 \n\
/* 080075ac */ LDRSH R0, [R5, R6] \n\
/* 080075ae */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080075b0 */ LDRSH R1, [R5, R2] \n\
/* 080075b2 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080075b4 */ LSLS R0, R0, 0x8 \n\
/* 080075b6 */ STR R0, [R4, 0xC] \n\
/* 080075b8 */ LDRH R0, [R5, 0xA] \n\
/* 080075ba */ STRH R0, [R4, 0x6] \n\
/* 080075bc */ LDR R0, =D_03005380 \n\
/* 080075be */ LDR R0, [R0] \n\
/* 080075c0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080075c2 */ LDRSH R1, [R5, R3] \n\
/* 080075c4 */ MOVS R6, 0x2 @ Set R6 to 0x2 \n\
/* 080075c6 */ LDRSH R2, [R5, R6] \n\
/* 080075c8 */ MOVS R6, 0x4 @ Set R6 to 0x4 \n\
/* 080075ca */ LDRSH R3, [R5, R6] \n\
/* 080075cc */ BL func_0804d5d4 \n\
/* 080075d0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080075d2 */ B branch_080075dc \n\
\n\
.ltorg \n\
 \n\
branch_080075d8: \n\
/* 080075d8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080075da */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_080075dc: \n\
/* 080075dc */ POP {R4-R6} \n\
/* 080075de */ POP {R1} \n\
/* 080075e0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
