asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a6b0 \n\
/* 0804a6b0 */ PUSH {R4-R7, LR} \n\
/* 0804a6b2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804a6b4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804a6b6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804a6b8 */ PUSH {R5-R7} \n\
/* 0804a6ba */ SUB SP, 0x20 \n\
/* 0804a6bc */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0804a6be */ STR R1, [SP] \n\
/* 0804a6c0 */ LSLS R2, R2, 0x18 \n\
/* 0804a6c2 */ LSRS R5, R2, 0x18 \n\
/* 0804a6c4 */ LSLS R3, R3, 0x18 \n\
/* 0804a6c6 */ LSRS R3, R3, 0x18 \n\
/* 0804a6c8 */ STR R3, [SP, 0x4] \n\
/* 0804a6ca */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804a6cc */ BNE branch_0804a6d6 \n\
/* 0804a6ce */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804a6d0 */ BL func_0804a5b4 \n\
/* 0804a6d4 */ B branch_0804aa2e \n\
 \n\
branch_0804a6d6: \n\
/* 0804a6d6 */ LDR R0, [SP] \n\
/* 0804a6d8 */ LSLS R1, R0, 0x5 \n\
/* 0804a6da */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0804a6dc */ LDR R0, [R2, 0x18] \n\
/* 0804a6de */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804a6e0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804a6e2 */ LDRB R0, [R0] \n\
/* 0804a6e4 */ LSLS R0, R0, 0x1F \n\
/* 0804a6e6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a6e8 */ BEQ branch_0804a6ec \n\
/* 0804a6ea */ B branch_0804aa2e \n\
 \n\
branch_0804a6ec: \n\
/* 0804a6ec */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0804a6ee */ LDRH R0, [R3] \n\
/* 0804a6f0 */ MOVS R1, 0xFE @ Set R1 to 0xFE \n\
/* 0804a6f2 */ LSLS R1, R1, 0x1 \n\
/* 0804a6f4 */ LDR R2, [R2, 0x10] \n\
/* 0804a6f6 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0804a6f8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804a6fa */ LDR R2, [R1] \n\
/* 0804a6fc */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804a6fe */ BNE branch_0804a702 \n\
/* 0804a700 */ B branch_0804aa2e \n\
 \n\
branch_0804a702: \n\
/* 0804a702 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804a704 */ LDRB R0, [R2] \n\
/* 0804a706 */ CMP R0, 0x52 @ Compare R0 and 0x52 \n\
/* 0804a708 */ BEQ branch_0804a712 \n\
/* 0804a70a */ CMP R0, 0x53 @ Compare R0 and 0x53 \n\
/* 0804a70c */ BEQ branch_0804a71e \n\
/* 0804a70e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804a710 */ B branch_0804a748 \n\
 \n\
branch_0804a712: \n\
/* 0804a712 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0804a714 */ LDR R0, [R2] \n\
/* 0804a716 */ LSRS R0, R0, 0x8 \n\
/* 0804a718 */ SUBS R0, R5, R0 @ Set R0 to R5 - R0 \n\
/* 0804a71a */ LDR R1, [R2, 0x4] \n\
/* 0804a71c */ B branch_0804a72c \n\
 \n\
branch_0804a71e: \n\
/* 0804a71e */ LDR R1, [R2] \n\
/* 0804a720 */ LSRS R1, R1, 0x8 \n\
/* 0804a722 */ SUBS R1, R5, R1 @ Set R1 to R5 - R1 \n\
/* 0804a724 */ LDR R0, [R2, 0x4] \n\
/* 0804a726 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804a728 */ LDRB R0, [R0] \n\
/* 0804a72a */ LDR R1, [R2, 0x8] \n\
 \n\
branch_0804a72c: \n\
/* 0804a72c */ LSLS R0, R0, 0x2 \n\
/* 0804a72e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804a730 */ LDR R2, [R0] \n\
/* 0804a732 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804a734 */ BNE branch_0804a738 \n\
/* 0804a736 */ B branch_0804aa2e \n\
 \n\
branch_0804a738: \n\
/* 0804a738 */ LDRB R1, [R2] \n\
/* 0804a73a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804a73c */ SUBS R0, 0x52 @ Subtract 0x52 from R0 \n\
/* 0804a73e */ LSLS R0, R0, 0x18 \n\
/* 0804a740 */ LSRS R0, R0, 0x18 \n\
/* 0804a742 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804a744 */ BHI branch_0804a748 \n\
/* 0804a746 */ B branch_0804aa2e \n\
 \n\
branch_0804a748: \n\
/* 0804a748 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804a74a */ SUBS R0, 0x50 @ Subtract 0x50 from R0 \n\
/* 0804a74c */ LSLS R0, R0, 0x18 \n\
/* 0804a74e */ LSRS R0, R0, 0x18 \n\
/* 0804a750 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804a752 */ BHI branch_0804a76c \n\
/* 0804a754 */ STR R2, [SP, 0x14] \n\
/* 0804a756 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804a758 */ STR R0, [SP, 0xC] \n\
/* 0804a75a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804a75c */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0804a75e */ LDRB R0, [R0] \n\
/* 0804a760 */ LSLS R0, R0, 0x1E \n\
/* 0804a762 */ LSRS R0, R0, 0x19 \n\
/* 0804a764 */ LDR R1, =D_030056a0 \n\
/* 0804a766 */ B branch_0804a78e \n\
\n\
.ltorg \n\
 \n\
branch_0804a76c: \n\
/* 0804a76c */ STR R2, [SP, 0x10] \n\
/* 0804a76e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804a770 */ STR R1, [SP, 0xC] \n\
/* 0804a772 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804a774 */ LDR R1, [SP] \n\
/* 0804a776 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804a778 */ LDR R3, [SP, 0x4] \n\
/* 0804a77a */ BL func_0804a628 \n\
/* 0804a77e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0804a780 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a782 */ BGE branch_0804a786 \n\
/* 0804a784 */ B branch_0804aa2e \n\
 \n\
branch_0804a786: \n\
/* 0804a786 */ LDR R0, =D_030064bc \n\
/* 0804a788 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0804a78a */ LSLS R1, R2, 0x5 \n\
/* 0804a78c */ LDR R0, [R0] \n\
 \n\
branch_0804a78e: \n\
/* 0804a78e */ ADDS R7, R0, R1 @ Set R7 to R0 + R1 \n\
/* 0804a790 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0804a792 */ BNE branch_0804a7a8 \n\
/* 0804a794 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804a796 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0804a798 */ LDRSB R0, [R3, R0] \n\
/* 0804a79a */ ADDS R6, R5, R0 @ Set R6 to R5 + R0 \n\
/* 0804a79c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804a79e */ STR R0, [SP, 0x8] \n\
/* 0804a7a0 */ B branch_0804a7de \n\
\n\
.ltorg \n\
 \n\
branch_0804a7a8: \n\
/* 0804a7a8 */ LDR R1, [SP, 0xC] \n\
/* 0804a7aa */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804a7ac */ BEQ branch_0804a7b4 \n\
/* 0804a7ae */ LDR R2, [SP, 0x14] \n\
/* 0804a7b0 */ LDRB R6, [R2, 0x1] \n\
/* 0804a7b2 */ B branch_0804a7bc \n\
 \n\
branch_0804a7b4: \n\
/* 0804a7b4 */ LDR R3, [SP, 0x10] \n\
/* 0804a7b6 */ LDRB R0, [R3, 0x1] \n\
/* 0804a7b8 */ LSLS R0, R0, 0x19 \n\
/* 0804a7ba */ LSRS R6, R0, 0x19 \n\
 \n\
branch_0804a7bc: \n\
/* 0804a7bc */ LDR R0, [SP, 0xC] \n\
/* 0804a7be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a7c0 */ BEQ branch_0804a7cc \n\
/* 0804a7c2 */ LDR R1, [SP, 0x14] \n\
/* 0804a7c4 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0804a7c6 */ LDRSH R1, [R1, R2] \n\
/* 0804a7c8 */ STR R1, [SP, 0x8] \n\
/* 0804a7ca */ B branch_0804a7d4 \n\
 \n\
branch_0804a7cc: \n\
/* 0804a7cc */ LDR R3, [SP, 0x10] \n\
/* 0804a7ce */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804a7d0 */ LDRSH R3, [R3, R0] \n\
/* 0804a7d2 */ STR R3, [SP, 0x8] \n\
 \n\
branch_0804a7d4: \n\
/* 0804a7d4 */ LDR R1, [SP, 0x8] \n\
/* 0804a7d6 */ CMP R1, 0x7F @ Compare R1 and 0x7F \n\
/* 0804a7d8 */ BNE branch_0804a7de \n\
/* 0804a7da */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804a7dc */ STR R2, [SP, 0x8] \n\
 \n\
branch_0804a7de: \n\
/* 0804a7de */ CMP R6, 0x7F @ Compare R6 and 0x7F \n\
/* 0804a7e0 */ BLS branch_0804a7e4 \n\
/* 0804a7e2 */ B branch_0804aa2e \n\
 \n\
branch_0804a7e4: \n\
/* 0804a7e4 */ LDR R3, [SP, 0xC] \n\
/* 0804a7e6 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804a7e8 */ BNE branch_0804a7f6 \n\
/* 0804a7ea */ LDR R1, [SP, 0x10] \n\
/* 0804a7ec */ LDRB R0, [R1] \n\
/* 0804a7ee */ CMP R0, 0x46 @ Compare R0 and 0x46 \n\
/* 0804a7f0 */ BNE branch_0804a7f6 \n\
/* 0804a7f2 */ LDR R0, [R1, 0x4] \n\
/* 0804a7f4 */ LDR R6, [R0, 0x8] \n\
 \n\
branch_0804a7f6: \n\
/* 0804a7f6 */ LDRB R1, [R7] \n\
/* 0804a7f8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804a7fa */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804a7fc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804a7fe */ STRB R0, [R7] \n\
/* 0804a800 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804a802 */ LDRB R4, [R2, 0x1C] \n\
/* 0804a804 */ LSLS R5, R5, 0x1 \n\
/* 0804a806 */ STR R5, [SP, 0x18] \n\
/* 0804a808 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0804a80a */ ADDS R3, 0x1C @ Add 0x1C to R3 \n\
/* 0804a80c */ STR R3, [SP, 0x1C] \n\
/* 0804a80e */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0804a810 */ BEQ branch_0804a850 \n\
/* 0804a812 */ LSLS R0, R4, 0x1 \n\
/* 0804a814 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804a816 */ BL func_0804af0c \n\
/* 0804a81a */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804a81c */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 0804a81e */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804a820 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0804a822 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 0804a824 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804a826 */ BGE branch_0804a82e \n\
 \n\
branch_0804a828: \n\
/* 0804a828 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0804a82a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a82c */ BLT branch_0804a828 \n\
 \n\
branch_0804a82e: \n\
/* 0804a82e */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0804a830 */ BL __modsi3 \n\
/* 0804a834 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0804a836 */ LDRB R0, [R0] \n\
/* 0804a838 */ LSLS R0, R0, 0x18 \n\
/* 0804a83a */ ASRS R0, R0, 0x18 \n\
/* 0804a83c */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 0804a83e */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804a840 */ BGE branch_0804a84c \n\
 \n\
branch_0804a842: \n\
/* 0804a842 */ ADDS R6, 0xC @ Add 0xC to R6 \n\
/* 0804a844 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804a846 */ BLT branch_0804a842 \n\
/* 0804a848 */ B branch_0804a84c \n\
 \n\
branch_0804a84a: \n\
/* 0804a84a */ SUBS R6, 0xC @ Subtract 0xC from R6 \n\
 \n\
branch_0804a84c: \n\
/* 0804a84c */ CMP R6, 0x7F @ Compare R6 and 0x7F \n\
/* 0804a84e */ BGT branch_0804a84a \n\
 \n\
branch_0804a850: \n\
/* 0804a850 */ LSLS R1, R6, 0x18 \n\
/* 0804a852 */ LSRS R1, R1, 0x18 \n\
/* 0804a854 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804a856 */ BL func_0804a690 \n\
/* 0804a85a */ LSLS R0, R0, 0xF \n\
/* 0804a85c */ LDR R2, [R7] \n\
/* 0804a85e */ LDR R3, =0x00007fff \n\
/* 0804a860 */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 0804a862 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0804a864 */ STR R2, [R7] \n\
/* 0804a866 */ LDR R0, [SP, 0xC] \n\
/* 0804a868 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a86a */ BEQ branch_0804a884 \n\
/* 0804a86c */ LDR R0, [SP, 0x14] \n\
/* 0804a86e */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0804a870 */ LDRB R0, [R0] \n\
/* 0804a872 */ LSLS R0, R0, 0x1E \n\
/* 0804a874 */ LSRS R0, R0, 0x1E \n\
/* 0804a876 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0804a878 */ BNE branch_0804a884 \n\
/* 0804a87a */ LSLS R1, R6, 0xF \n\
/* 0804a87c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804a87e */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804a880 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804a882 */ STR R0, [R7] \n\
 \n\
branch_0804a884: \n\
/* 0804a884 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804a886 */ LDRB R4, [R1, 0xF] \n\
/* 0804a888 */ SUBS R1, R6, R4 @ Set R1 to R6 - R4 \n\
/* 0804a88a */ LSLS R1, R1, 0x18 \n\
/* 0804a88c */ LSRS R1, R1, 0x18 \n\
/* 0804a88e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804a890 */ BL func_0804a690 \n\
/* 0804a894 */ LDR R1, [R7] \n\
/* 0804a896 */ LSRS R1, R1, 0xF \n\
/* 0804a898 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804a89a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804a89c */ STRH R1, [R7, 0x10] \n\
/* 0804a89e */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0804a8a0 */ LSLS R4, R4, 0x18 \n\
/* 0804a8a2 */ LSRS R4, R4, 0x18 \n\
/* 0804a8a4 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804a8a6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804a8a8 */ BL func_0804a690 \n\
/* 0804a8ac */ LDR R1, [R7] \n\
/* 0804a8ae */ LSRS R1, R1, 0xF \n\
/* 0804a8b0 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804a8b2 */ STRH R0, [R7, 0x12] \n\
/* 0804a8b4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804a8b6 */ LDRB R1, [R2, 0xC] \n\
/* 0804a8b8 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0804a8ba */ LSLS R1, R1, 0x18 \n\
/* 0804a8bc */ LSRS R1, R1, 0x18 \n\
/* 0804a8be */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804a8c0 */ BL func_0804a690 \n\
/* 0804a8c4 */ LDR R1, [R7] \n\
/* 0804a8c6 */ LSRS R1, R1, 0xF \n\
/* 0804a8c8 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804a8ca */ STRH R0, [R7, 0x14] \n\
/* 0804a8cc */ LDRB R1, [R7] \n\
/* 0804a8ce */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804a8d0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804a8d2 */ LDR R3, [SP, 0x18] \n\
/* 0804a8d4 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 0804a8d6 */ STRB R0, [R7] \n\
/* 0804a8d8 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804a8da */ LDR R1, [SP, 0x4] \n\
/* 0804a8dc */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0804a8de */ LDRB R2, [R7, 0x1] \n\
/* 0804a8e0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804a8e2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804a8e4 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804a8e6 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804a8e8 */ STRB R0, [R7, 0x1] \n\
/* 0804a8ea */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804a8ec */ STR R0, [R7, 0xC] \n\
/* 0804a8ee */ MOV R1, SP @ Set R1 to SP \n\
/* 0804a8f0 */ LDRH R1, [R1, 0x8] \n\
/* 0804a8f2 */ STRH R1, [R7, 0x18] \n\
/* 0804a8f4 */ LDRH R1, [R0, 0xA] \n\
/* 0804a8f6 */ LSRS R1, R1, 0x6 \n\
/* 0804a8f8 */ LSLS R1, R1, 0x4 \n\
/* 0804a8fa */ ADDS R1, 0xF @ Add 0xF to R1 \n\
/* 0804a8fc */ LDR R2, [SP] \n\
/* 0804a8fe */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
/* 0804a900 */ LDR R3, =0x00007fff \n\
/* 0804a902 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804a904 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0804a906 */ LDRH R2, [R7, 0x16] \n\
/* 0804a908 */ LDR R0, =0xffff8000 \n\
/* 0804a90a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804a90c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804a90e */ STRH R0, [R7, 0x16] \n\
/* 0804a910 */ LDRB R0, [R7, 0x17] \n\
/* 0804a912 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804a914 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804a916 */ STRB R0, [R7, 0x17] \n\
/* 0804a918 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804a91a */ STR R0, [R7, 0x8] \n\
/* 0804a91c */ LDR R2, [SP, 0x1C] \n\
/* 0804a91e */ STRB R5, [R7, 0x1C] \n\
/* 0804a920 */ LDR R1, [SP, 0xC] \n\
/* 0804a922 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804a924 */ BEQ branch_0804a934 \n\
/* 0804a926 */ LDR R3, [SP, 0x14] \n\
/* 0804a928 */ LDR R1, [R3, 0x8] \n\
/* 0804a92a */ B branch_0804a938 \n\
\n\
.ltorg \n\
 \n\
branch_0804a934: \n\
/* 0804a934 */ LDR R0, [SP, 0x10] \n\
/* 0804a936 */ LDR R1, [R0, 0x8] \n\
 \n\
branch_0804a938: \n\
/* 0804a938 */ LSLS R1, R1, 0x8 \n\
/* 0804a93a */ LDRB R0, [R2] \n\
/* 0804a93c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804a93e */ STR R0, [R2] \n\
/* 0804a940 */ LDR R1, [SP, 0xC] \n\
/* 0804a942 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804a944 */ BNE branch_0804a94c \n\
/* 0804a946 */ LDR R2, [SP, 0x10] \n\
/* 0804a948 */ STR R2, [R7, 0x4] \n\
/* 0804a94a */ B branch_0804a950 \n\
 \n\
branch_0804a94c: \n\
/* 0804a94c */ LDR R3, [SP, 0x14] \n\
/* 0804a94e */ STR R3, [R7, 0x4] \n\
 \n\
branch_0804a950: \n\
/* 0804a950 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804a952 */ LDRH R0, [R1, 0x18] \n\
/* 0804a954 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a956 */ BEQ branch_0804a964 \n\
/* 0804a958 */ BL func_0804af0c \n\
/* 0804a95c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804a95e */ LDRH R1, [R2, 0x16] \n\
/* 0804a960 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804a962 */ STRH R1, [R2, 0x1A] \n\
 \n\
branch_0804a964: \n\
/* 0804a964 */ LDR R3, [SP, 0xC] \n\
/* 0804a966 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804a968 */ BEQ branch_0804a97a \n\
/* 0804a96a */ LDR R0, [SP, 0x14] \n\
/* 0804a96c */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0804a96e */ LDRB R0, [R0] \n\
/* 0804a970 */ LSLS R0, R0, 0x1E \n\
/* 0804a972 */ LSRS R0, R0, 0x1E \n\
/* 0804a974 */ BL func_0804af74 \n\
/* 0804a978 */ B branch_0804aa20 \n\
 \n\
branch_0804a97a: \n\
/* 0804a97a */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804a97c */ BL func_080493b0 \n\
/* 0804a980 */ LDR R0, [SP, 0x10] \n\
/* 0804a982 */ LDR R1, [R0, 0x4] \n\
/* 0804a984 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804a986 */ BL func_0804930c \n\
/* 0804a98a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804a98c */ BL func_0804a1f4 \n\
/* 0804a990 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804a992 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804a994 */ BL func_080493e4 \n\
/* 0804a998 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804a99a */ LDRB R0, [R1, 0x3] \n\
/* 0804a99c */ LSRS R0, R0, 0x7 \n\
/* 0804a99e */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0804a9a0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a9a2 */ BEQ branch_0804a9a6 \n\
/* 0804a9a4 */ SUBS R6, 0x2 @ Subtract 0x2 from R6 \n\
 \n\
branch_0804a9a6: \n\
/* 0804a9a6 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804a9a8 */ LDR R1, [SP] \n\
/* 0804a9aa */ BL func_0804aaa4 \n\
/* 0804a9ae */ LSLS R0, R0, 0x18 \n\
/* 0804a9b0 */ LSRS R0, R0, 0x18 \n\
/* 0804a9b2 */ LDR R2, [SP, 0x8] \n\
/* 0804a9b4 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0804a9b6 */ STR R2, [SP, 0x8] \n\
/* 0804a9b8 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804a9ba */ BGE branch_0804a9c0 \n\
/* 0804a9bc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804a9be */ STR R3, [SP, 0x8] \n\
 \n\
branch_0804a9c0: \n\
/* 0804a9c0 */ LDR R0, [SP, 0x8] \n\
/* 0804a9c2 */ CMP R0, 0x7F @ Compare R0 and 0x7F \n\
/* 0804a9c4 */ BLE branch_0804a9ca \n\
/* 0804a9c6 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0804a9c8 */ STR R1, [SP, 0x8] \n\
 \n\
branch_0804a9ca: \n\
/* 0804a9ca */ LDR R2, [SP, 0x8] \n\
/* 0804a9cc */ LSLS R4, R2, 0x18 \n\
/* 0804a9ce */ LSRS R4, R4, 0x18 \n\
/* 0804a9d0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804a9d2 */ BL func_0804a674 \n\
/* 0804a9d6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804a9d8 */ LSLS R5, R5, 0x18 \n\
/* 0804a9da */ LSRS R5, R5, 0x18 \n\
/* 0804a9dc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804a9de */ BL func_0804a65c \n\
/* 0804a9e2 */ LSLS R0, R0, 0x18 \n\
/* 0804a9e4 */ LSRS R0, R0, 0x18 \n\
/* 0804a9e6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804a9e8 */ MULS R2, R6 @ Multiply R2 by R6 \n\
/* 0804a9ea */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804a9ec */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804a9ee */ BL func_080493c8 \n\
/* 0804a9f2 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804a9f4 */ BL func_0804a018 \n\
/* 0804a9f8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804a9fa */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804a9fc */ BL func_080493f4 \n\
/* 0804aa00 */ LDR R3, [SP, 0x10] \n\
/* 0804aa02 */ LDRB R1, [R3, 0x1] \n\
/* 0804aa04 */ LSRS R1, R1, 0x7 \n\
/* 0804aa06 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804aa08 */ BL func_08049450 \n\
/* 0804aa0c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804aa0e */ LDRB R1, [R0, 0x3] \n\
/* 0804aa10 */ LSLS R1, R1, 0x19 \n\
/* 0804aa12 */ LSRS R1, R1, 0x1F \n\
/* 0804aa14 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804aa16 */ BL func_08049470 \n\
/* 0804aa1a */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804aa1c */ BL func_08049394 \n\
 \n\
branch_0804aa20: \n\
/* 0804aa20 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804aa22 */ LDRB R0, [R1, 0x14] \n\
/* 0804aa24 */ STRB R0, [R1, 0x15] \n\
/* 0804aa26 */ LDRB R0, [R7] \n\
/* 0804aa28 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804aa2a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804aa2c */ STRB R0, [R7] \n\
 \n\
branch_0804aa2e: \n\
/* 0804aa2e */ ADD SP, 0x20 \n\
/* 0804aa30 */ POP {R3-R5} \n\
/* 0804aa32 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804aa34 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804aa36 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804aa38 */ POP {R4-R7} \n\
/* 0804aa3a */ POP {R0} \n\
/* 0804aa3c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
