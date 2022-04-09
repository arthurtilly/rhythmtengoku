asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080076ec \n\
/* 080076ec */ PUSH {R4-R7, LR} \n\
/* 080076ee */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080076f0 */ PUSH {R7} \n\
/* 080076f2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080076f4 */ LDR R0, [R4, 0xC] \n\
/* 080076f6 */ LDR R1, [R4, 0x14] \n\
/* 080076f8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080076fa */ STR R0, [R4, 0xC] \n\
/* 080076fc */ LDR R0, [R4, 0x18] \n\
/* 080076fe */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08007700 */ STR R1, [R4, 0x14] \n\
/* 08007702 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08007704 */ BGE branch_0800770e \n\
/* 08007706 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007708 */ BGE branch_0800770e \n\
/* 0800770a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800770c */ B branch_0800777a \n\
 \n\
branch_0800770e: \n\
/* 0800770e */ LDR R5, [R4, 0xC] \n\
/* 08007710 */ LDR R6, [R4, 0x10] \n\
/* 08007712 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08007714 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08007716 */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08007718 */ BLT branch_08007720 \n\
/* 0800771a */ ADDS R5, R6, 0x0 @ Set R5 to R6 + 0x0 \n\
/* 0800771c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800771e */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_08007720: \n\
/* 08007720 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08007722 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08007724 */ BEQ branch_0800773c \n\
/* 08007726 */ LDRH R0, [R4, 0x6] \n\
/* 08007728 */ LDRH R1, [R4, 0x2] \n\
/* 0800772a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800772c */ LSLS R0, R0, 0x10 \n\
/* 0800772e */ LSRS R7, R0, 0x10 \n\
/* 08007730 */ LDRH R0, [R4, 0x8] \n\
/* 08007732 */ LDRH R2, [R4, 0x4] \n\
/* 08007734 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08007736 */ LSLS R0, R0, 0x10 \n\
/* 08007738 */ LSRS R3, R0, 0x10 \n\
/* 0800773a */ B branch_08007764 \n\
 \n\
branch_0800773c: \n\
/* 0800773c */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0800773e */ LDRSH R0, [R4, R1] \n\
/* 08007740 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08007742 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08007744 */ BL func_08007b80 \n\
/* 08007748 */ LDRH R1, [R4, 0x2] \n\
/* 0800774a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800774c */ LSLS R1, R1, 0x10 \n\
/* 0800774e */ LSRS R7, R1, 0x10 \n\
/* 08007750 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08007752 */ LDRSH R0, [R4, R2] \n\
/* 08007754 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08007756 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08007758 */ BL func_08007b80 \n\
/* 0800775c */ LDRH R1, [R4, 0x4] \n\
/* 0800775e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08007760 */ LSLS R1, R1, 0x10 \n\
/* 08007762 */ LSRS R3, R1, 0x10 \n\
 \n\
branch_08007764: \n\
/* 08007764 */ LDR R0, =D_03005380 \n\
/* 08007766 */ LDR R0, [R0] \n\
/* 08007768 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800776a */ LDRSH R1, [R4, R2] \n\
/* 0800776c */ LSLS R2, R7, 0x10 \n\
/* 0800776e */ ASRS R2, R2, 0x10 \n\
/* 08007770 */ LSLS R3, R3, 0x10 \n\
/* 08007772 */ ASRS R3, R3, 0x10 \n\
/* 08007774 */ BL func_0804d5d4 \n\
/* 08007778 */ MOV R0, R8 @ Set R0 to R8 \n\
 \n\
branch_0800777a: \n\
/* 0800777a */ POP {R3} \n\
/* 0800777c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800777e */ POP {R4-R7} \n\
/* 08007780 */ POP {R1} \n\
/* 08007782 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
