asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a6a0 \n\
/* 0800a6a0 */ PUSH {R4-R7, LR} \n\
/* 0800a6a2 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0800a6a4 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800a6a6 */ PUSH {R6, R7} \n\
/* 0800a6a8 */ SUB SP, 0x4 \n\
/* 0800a6aa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800a6ac */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 0800a6ae */ LDRB R0, [R0] \n\
/* 0800a6b0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a6b2 */ BEQ branch_0800a6fe \n\
/* 0800a6b4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800a6b6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800a6b8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800a6ba */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800a6bc */ LDRSH R0, [R4, R1] \n\
/* 0800a6be */ LDRH R2, [R4, 0x8] \n\
/* 0800a6c0 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800a6c2 */ LDRH R7, [R4, 0x2C] \n\
/* 0800a6c4 */ MOV R12, R7 @ Set R12 to R7 \n\
/* 0800a6c6 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0800a6c8 */ BCS branch_0800a6ee \n\
/* 0800a6ca */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800a6cc */ LDR R2, [R4, 0x10] \n\
 \n\
branch_0800a6ce: \n\
/* 0800a6ce */ LSLS R1, R5, 0x1 \n\
/* 0800a6d0 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800a6d2 */ LDRSH R0, [R2, R7] \n\
/* 0800a6d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a6d6 */ BLT branch_0800a6e6 \n\
/* 0800a6d8 */ LDR R0, [R4, 0x14] \n\
/* 0800a6da */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0800a6dc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800a6de */ LDRSH R0, [R0, R1] \n\
/* 0800a6e0 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0800a6e2 */ BCS branch_0800a6e6 \n\
/* 0800a6e4 */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_0800a6e6: \n\
/* 0800a6e6 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0800a6e8 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800a6ea */ CMP R5, R6 @ Check R5 - R6 \n\
/* 0800a6ec */ BCC branch_0800a6ce \n\
 \n\
branch_0800a6ee: \n\
/* 0800a6ee */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800a6f0 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800a6f2 */ SUBS R0, R2, R7 @ Set R0 to R2 - R7 \n\
/* 0800a6f4 */ LSRS R0, R0, 0x1 \n\
/* 0800a6f6 */ ADD R0, R12 @ Add R12 to R0 \n\
/* 0800a6f8 */ LSLS R0, R0, 0x10 \n\
/* 0800a6fa */ LSRS R6, R0, 0x10 \n\
/* 0800a6fc */ B branch_0800a704 \n\
 \n\
branch_0800a6fe: \n\
/* 0800a6fe */ LDRH R0, [R4, 0x8] \n\
/* 0800a700 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800a702 */ LDRH R6, [R4, 0x2C] \n\
 \n\
branch_0800a704: \n\
/* 0800a704 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800a706 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800a708 */ LDRSH R0, [R4, R1] \n\
/* 0800a70a */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0800a70c */ BCS branch_0800a780 \n\
/* 0800a70e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0800a710: \n\
/* 0800a710 */ LDR R0, [R4, 0x10] \n\
/* 0800a712 */ ADDS R1, R7, R0 @ Set R1 to R7 + R0 \n\
/* 0800a714 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a716 */ LDRSH R1, [R1, R2] \n\
/* 0800a718 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800a71a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800a71c */ BLT branch_0800a774 \n\
/* 0800a71e */ LDR R0, [R4, 0x18] \n\
/* 0800a720 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0800a722 */ LDRB R0, [R0] \n\
/* 0800a724 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800a726 */ BEQ branch_0800a73c \n\
/* 0800a728 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800a72a */ BGT branch_0800a732 \n\
/* 0800a72c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a72e */ BEQ branch_0800a738 \n\
/* 0800a730 */ B branch_0800a75e \n\
 \n\
branch_0800a732: \n\
/* 0800a732 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0800a734 */ BEQ branch_0800a74a \n\
/* 0800a736 */ B branch_0800a75e \n\
 \n\
branch_0800a738: \n\
/* 0800a738 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800a73a */ B branch_0800a75e \n\
 \n\
branch_0800a73c: \n\
/* 0800a73c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800a73e */ ADDS R0, R6, R1 @ Set R0 to R6 + R1 \n\
/* 0800a740 */ LDR R1, [R4, 0x14] \n\
/* 0800a742 */ ADDS R1, R7, R1 @ Set R1 to R7 + R1 \n\
/* 0800a744 */ LDRH R1, [R1] \n\
/* 0800a746 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800a748 */ B branch_0800a75a \n\
 \n\
branch_0800a74a: \n\
/* 0800a74a */ LDR R0, [R4, 0x14] \n\
/* 0800a74c */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 0800a74e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800a750 */ LDRSH R0, [R0, R1] \n\
/* 0800a752 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800a754 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0800a756 */ LSRS R0, R0, 0x1 \n\
/* 0800a758 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
 \n\
branch_0800a75a: \n\
/* 0800a75a */ LSLS R0, R0, 0x10 \n\
/* 0800a75c */ LSRS R3, R0, 0x10 \n\
 \n\
branch_0800a75e: \n\
/* 0800a75e */ LDR R0, =D_03005380 \n\
/* 0800a760 */ LDR R0, [R0] \n\
/* 0800a762 */ ADDS R1, R7, R2 @ Set R1 to R7 + R2 \n\
/* 0800a764 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a766 */ LDRSH R1, [R1, R2] \n\
/* 0800a768 */ LSLS R2, R3, 0x10 \n\
/* 0800a76a */ ASRS R2, R2, 0x10 \n\
/* 0800a76c */ STR R3, [SP] \n\
/* 0800a76e */ BL func_0804d614 \n\
/* 0800a772 */ LDR R3, [SP] \n\
 \n\
branch_0800a774: \n\
/* 0800a774 */ ADDS R7, 0x2 @ Add 0x2 to R7 \n\
/* 0800a776 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800a778 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800a77a */ LDRSH R0, [R4, R1] \n\
/* 0800a77c */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0800a77e */ BCC branch_0800a710 \n\
 \n\
branch_0800a780: \n\
/* 0800a780 */ ADD SP, 0x4 \n\
/* 0800a782 */ POP {R3, R4} \n\
/* 0800a784 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800a786 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800a788 */ POP {R4-R7} \n\
/* 0800a78a */ POP {R0} \n\
/* 0800a78c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
