asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080077e8 \n\
/* 080077e8 */ PUSH {R4-R7, LR} \n\
/* 080077ea */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080077ec */ PUSH {R7} \n\
/* 080077ee */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080077f0 */ LDRH R7, [R6, 0xA] \n\
/* 080077f2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080077f4 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080077f6 */ LDRH R0, [R6, 0xC] \n\
/* 080077f8 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080077fa */ STRH R0, [R6, 0xC] \n\
/* 080077fc */ LSLS R0, R0, 0x10 \n\
/* 080077fe */ LSRS R0, R0, 0x10 \n\
/* 08007800 */ CMP R0, R7 @ Check R0 - R7 \n\
/* 08007802 */ BLT branch_08007808 \n\
/* 08007804 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08007806 */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_08007808: \n\
/* 08007808 */ LDRH R5, [R6, 0xC] \n\
/* 0800780a */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0800780c */ LDRSH R0, [R6, R2] \n\
/* 0800780e */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08007810 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08007812 */ BL func_08007b80 \n\
/* 08007816 */ LDRH R4, [R6, 0x2] \n\
/* 08007818 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0800781a */ LSLS R4, R4, 0x10 \n\
/* 0800781c */ LSRS R4, R4, 0x10 \n\
/* 0800781e */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08007820 */ LDRSH R0, [R6, R1] \n\
/* 08007822 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08007824 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08007826 */ BL func_08007b80 \n\
/* 0800782a */ LDRH R3, [R6, 0x4] \n\
/* 0800782c */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0800782e */ LDR R0, =D_03005380 \n\
/* 08007830 */ LDR R0, [R0] \n\
/* 08007832 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08007834 */ LDRSH R1, [R6, R2] \n\
/* 08007836 */ LSLS R4, R4, 0x10 \n\
/* 08007838 */ ASRS R4, R4, 0x10 \n\
/* 0800783a */ LSLS R3, R3, 0x10 \n\
/* 0800783c */ ASRS R3, R3, 0x10 \n\
/* 0800783e */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08007840 */ BL func_0804d5d4 \n\
/* 08007844 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08007846 */ POP {R3} \n\
/* 08007848 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800784a */ POP {R4-R7} \n\
/* 0800784c */ POP {R1} \n\
/* 0800784e */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
