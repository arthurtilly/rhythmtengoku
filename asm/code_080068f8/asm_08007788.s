asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007788 \n\
/* 08007788 */ PUSH {R4-R6, LR} \n\
/* 0800778a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800778c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800778e */ LDRSH R0, [R5, R1] \n\
/* 08007790 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007792 */ BLT branch_080077dc \n\
/* 08007794 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08007796 */ BL mem_heap_alloc \n\
/* 0800779a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800779c */ LDRH R0, [R5] \n\
/* 0800779e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080077a0 */ STRH R0, [R4] \n\
/* 080077a2 */ LDRH R0, [R5, 0x2] \n\
/* 080077a4 */ STRH R0, [R4, 0x2] \n\
/* 080077a6 */ LDRH R0, [R5, 0x4] \n\
/* 080077a8 */ STRH R0, [R4, 0x4] \n\
/* 080077aa */ LDRH R0, [R5, 0x6] \n\
/* 080077ac */ LDRH R1, [R5, 0x2] \n\
/* 080077ae */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080077b0 */ STRH R0, [R4, 0x6] \n\
/* 080077b2 */ LDRH R0, [R5, 0x8] \n\
/* 080077b4 */ LDRH R1, [R5, 0x4] \n\
/* 080077b6 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080077b8 */ STRH R0, [R4, 0x8] \n\
/* 080077ba */ LDRH R0, [R5, 0xA] \n\
/* 080077bc */ STRH R0, [R4, 0xA] \n\
/* 080077be */ STRH R2, [R4, 0xC] \n\
/* 080077c0 */ LDR R0, =D_03005380 \n\
/* 080077c2 */ LDR R0, [R0] \n\
/* 080077c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080077c6 */ LDRSH R1, [R5, R2] \n\
/* 080077c8 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080077ca */ LDRSH R2, [R5, R3] \n\
/* 080077cc */ MOVS R6, 0x4 @ Set R6 to 0x4 \n\
/* 080077ce */ LDRSH R3, [R5, R6] \n\
/* 080077d0 */ BL func_0804d5d4 \n\
/* 080077d4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080077d6 */ B branch_080077e0 \n\
\n\
.ltorg \n\
 \n\
branch_080077dc: \n\
/* 080077dc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080077de */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_080077e0: \n\
/* 080077e0 */ POP {R4-R6} \n\
/* 080077e2 */ POP {R1} \n\
/* 080077e4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
