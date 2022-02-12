asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802b730 \n\
/* 0802b730 */ PUSH {R4-R7, LR} \n\
/* 0802b732 */ SUB SP, 0xC \n\
/* 0802b734 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0802b736 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802b738 */ LDR R4, =D_030055d0 \n\
/* 0802b73a */ LDR R0, [R4] \n\
/* 0802b73c */ LDRB R0, [R0, 0x1] \n\
/* 0802b73e */ LSLS R0, R0, 0x1F \n\
/* 0802b740 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b742 */ BEQ branch_0802b750 \n\
/* 0802b744 */ BL func_08018068 \n\
/* 0802b748 */ B branch_0802b9ce \n\
\n\
.ltorg \n\
 \n\
branch_0802b750: \n\
/* 0802b750 */ BL func_08018054 \n\
/* 0802b754 */ MVNS R6, R0 @ Set R6 to ~R0 \n\
/* 0802b756 */ LDR R0, =D_03004afc \n\
/* 0802b758 */ LDRH R1, [R0] \n\
/* 0802b75a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b75c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802b75e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b760 */ BNE branch_0802b764 \n\
/* 0802b762 */ B branch_0802b914 \n\
 \n\
branch_0802b764: \n\
/* 0802b764 */ LDR R0, [R4] \n\
/* 0802b766 */ LDR R1, =0x00000555 \n\
/* 0802b768 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802b76a */ LDRB R0, [R0] \n\
/* 0802b76c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b76e */ BEQ branch_0802b82c \n\
/* 0802b770 */ LDRH R0, [R5] \n\
/* 0802b772 */ LSLS R0, R0, 0x17 \n\
/* 0802b774 */ LSRS R0, R0, 0x1C \n\
/* 0802b776 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b778 */ BNE branch_0802b792 \n\
/* 0802b77a */ LDR R4, =D_089e3410 \n\
/* 0802b77c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b77e */ BL func_08001980 \n\
/* 0802b782 */ LSLS R0, R0, 0x10 \n\
/* 0802b784 */ LSRS R0, R0, 0xE \n\
/* 0802b786 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b788 */ LDR R0, [R0] \n\
/* 0802b78a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b78c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b78e */ BL func_0802aac0 \n\
 \n\
branch_0802b792: \n\
/* 0802b792 */ LDRH R0, [R5] \n\
/* 0802b794 */ LSLS R0, R0, 0x17 \n\
/* 0802b796 */ LSRS R0, R0, 0x1C \n\
/* 0802b798 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802b79a */ BNE branch_0802b7b4 \n\
/* 0802b79c */ LDR R4, =D_089e3478 \n\
/* 0802b79e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b7a0 */ BL func_08001980 \n\
/* 0802b7a4 */ LSLS R0, R0, 0x10 \n\
/* 0802b7a6 */ LSRS R0, R0, 0xE \n\
/* 0802b7a8 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b7aa */ LDR R0, [R0] \n\
/* 0802b7ac */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b7ae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b7b0 */ BL func_0802aac0 \n\
 \n\
branch_0802b7b4: \n\
/* 0802b7b4 */ LDRH R0, [R5] \n\
/* 0802b7b6 */ LSLS R0, R0, 0x17 \n\
/* 0802b7b8 */ LSRS R0, R0, 0x1C \n\
/* 0802b7ba */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802b7bc */ BNE branch_0802b7d6 \n\
/* 0802b7be */ LDR R4, =D_089e349c \n\
/* 0802b7c0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b7c2 */ BL func_08001980 \n\
/* 0802b7c6 */ LSLS R0, R0, 0x10 \n\
/* 0802b7c8 */ LSRS R0, R0, 0xE \n\
/* 0802b7ca */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b7cc */ LDR R0, [R0] \n\
/* 0802b7ce */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b7d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b7d2 */ BL func_0802aac0 \n\
 \n\
branch_0802b7d6: \n\
/* 0802b7d6 */ LDRH R0, [R5] \n\
/* 0802b7d8 */ LSLS R0, R0, 0x17 \n\
/* 0802b7da */ LSRS R0, R0, 0x1C \n\
/* 0802b7dc */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802b7de */ BNE branch_0802b7f8 \n\
/* 0802b7e0 */ LDR R4, =D_089e3528 \n\
/* 0802b7e2 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802b7e4 */ BL func_08001980 \n\
/* 0802b7e8 */ LSLS R0, R0, 0x10 \n\
/* 0802b7ea */ LSRS R0, R0, 0xE \n\
/* 0802b7ec */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b7ee */ LDR R0, [R0] \n\
/* 0802b7f0 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b7f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b7f4 */ BL func_0802aac0 \n\
 \n\
branch_0802b7f8: \n\
/* 0802b7f8 */ LDRH R0, [R5] \n\
/* 0802b7fa */ LSLS R0, R0, 0x17 \n\
/* 0802b7fc */ LSRS R0, R0, 0x1C \n\
/* 0802b7fe */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802b800 */ BNE branch_0802b8fa \n\
/* 0802b802 */ LDRB R0, [R5, 0x1] \n\
/* 0802b804 */ LSLS R0, R0, 0x1B \n\
/* 0802b806 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b808 */ BLT branch_0802b8c6 \n\
/* 0802b80a */ LDR R0, =D_089e3538 \n\
/* 0802b80c */ B branch_0802b8d6 \n\
\n\
.ltorg \n\
 \n\
branch_0802b82c: \n\
/* 0802b82c */ LDRH R0, [R5] \n\
/* 0802b82e */ LSLS R0, R0, 0x17 \n\
/* 0802b830 */ LSRS R0, R0, 0x1C \n\
/* 0802b832 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b834 */ BNE branch_0802b84e \n\
/* 0802b836 */ LDR R4, =D_089e33ec \n\
/* 0802b838 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b83a */ BL func_08001980 \n\
/* 0802b83e */ LSLS R0, R0, 0x10 \n\
/* 0802b840 */ LSRS R0, R0, 0xE \n\
/* 0802b842 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b844 */ LDR R0, [R0] \n\
/* 0802b846 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b848 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b84a */ BL func_0802aac0 \n\
 \n\
branch_0802b84e: \n\
/* 0802b84e */ LDRH R0, [R5] \n\
/* 0802b850 */ LSLS R0, R0, 0x17 \n\
/* 0802b852 */ LSRS R0, R0, 0x1C \n\
/* 0802b854 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802b856 */ BNE branch_0802b870 \n\
/* 0802b858 */ LDR R4, =D_089e3444 \n\
/* 0802b85a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b85c */ BL func_08001980 \n\
/* 0802b860 */ LSLS R0, R0, 0x10 \n\
/* 0802b862 */ LSRS R0, R0, 0xE \n\
/* 0802b864 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b866 */ LDR R0, [R0] \n\
/* 0802b868 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b86a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b86c */ BL func_0802aac0 \n\
 \n\
branch_0802b870: \n\
/* 0802b870 */ LDRH R0, [R5] \n\
/* 0802b872 */ LSLS R0, R0, 0x17 \n\
/* 0802b874 */ LSRS R0, R0, 0x1C \n\
/* 0802b876 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802b878 */ BNE branch_0802b892 \n\
/* 0802b87a */ LDR R4, =D_089e349c \n\
/* 0802b87c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b87e */ BL func_08001980 \n\
/* 0802b882 */ LSLS R0, R0, 0x10 \n\
/* 0802b884 */ LSRS R0, R0, 0xE \n\
/* 0802b886 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b888 */ LDR R0, [R0] \n\
/* 0802b88a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b88c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b88e */ BL func_0802aac0 \n\
 \n\
branch_0802b892: \n\
/* 0802b892 */ LDRH R0, [R5] \n\
/* 0802b894 */ LSLS R0, R0, 0x17 \n\
/* 0802b896 */ LSRS R0, R0, 0x1C \n\
/* 0802b898 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802b89a */ BNE branch_0802b8b4 \n\
/* 0802b89c */ LDR R4, =D_089e3528 \n\
/* 0802b89e */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802b8a0 */ BL func_08001980 \n\
/* 0802b8a4 */ LSLS R0, R0, 0x10 \n\
/* 0802b8a6 */ LSRS R0, R0, 0xE \n\
/* 0802b8a8 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b8aa */ LDR R0, [R0] \n\
/* 0802b8ac */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b8ae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b8b0 */ BL func_0802aac0 \n\
 \n\
branch_0802b8b4: \n\
/* 0802b8b4 */ LDRH R0, [R5] \n\
/* 0802b8b6 */ LSLS R0, R0, 0x17 \n\
/* 0802b8b8 */ LSRS R0, R0, 0x1C \n\
/* 0802b8ba */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802b8bc */ BNE branch_0802b8fa \n\
/* 0802b8be */ LDRB R0, [R5, 0x1] \n\
/* 0802b8c0 */ LSLS R0, R0, 0x1B \n\
/* 0802b8c2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b8c4 */ BGE branch_0802b8f0 \n\
 \n\
branch_0802b8c6: \n\
/* 0802b8c6 */ LDR R4, =D_089e349c \n\
/* 0802b8c8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b8ca */ BL func_08001980 \n\
/* 0802b8ce */ LSLS R0, R0, 0x10 \n\
/* 0802b8d0 */ LSRS R0, R0, 0xE \n\
/* 0802b8d2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b8d4 */ LDR R0, [R0] \n\
 \n\
branch_0802b8d6: \n\
/* 0802b8d6 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b8d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b8da */ BL func_0802aac0 \n\
/* 0802b8de */ B branch_0802b8fa \n\
\n\
.ltorg \n\
 \n\
branch_0802b8f0: \n\
/* 0802b8f0 */ LDR R0, =D_089e3538 \n\
/* 0802b8f2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b8f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b8f6 */ BL func_0802aac0 \n\
 \n\
branch_0802b8fa: \n\
/* 0802b8fa */ LDRH R0, [R5] \n\
/* 0802b8fc */ MOVS R1, 0x8F @ Set R1 to 0x8F \n\
/* 0802b8fe */ LSLS R1, R1, 0x5 \n\
/* 0802b900 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0802b902 */ MOVS R0, 0x84 @ Set R0 to 0x84 \n\
/* 0802b904 */ LSLS R0, R0, 0x5 \n\
/* 0802b906 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0802b908 */ BNE branch_0802b91e \n\
/* 0802b90a */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0802b90c */ B branch_0802b91e \n\
\n\
.ltorg \n\
 \n\
branch_0802b914: \n\
/* 0802b914 */ LDR R0, =D_089e3538 \n\
/* 0802b916 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802b918 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b91a */ BL func_0802aac0 \n\
 \n\
branch_0802b91e: \n\
/* 0802b91e */ LDRB R1, [R5, 0x1] \n\
/* 0802b920 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802b922 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0802b924 */ STRB R1, [R5, 0x1] \n\
/* 0802b926 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0802b928 */ BEQ branch_0802b994 \n\
/* 0802b92a */ LDR R4, =D_030055d0 \n\
/* 0802b92c */ LDR R2, [R4] \n\
/* 0802b92e */ LDRB R0, [R2, 0x1] \n\
/* 0802b930 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802b932 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802b934 */ STRB R0, [R2, 0x1] \n\
/* 0802b936 */ BL func_0802a2a4 \n\
/* 0802b93a */ BL func_0802a90c \n\
/* 0802b93e */ LDR R0, [R4] \n\
/* 0802b940 */ MOVS R2, 0xAA @ Set R2 to 0xAA \n\
/* 0802b942 */ LSLS R2, R2, 0x3 \n\
/* 0802b944 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802b946 */ LDR R0, [R0] \n\
/* 0802b948 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b94a */ BEQ branch_0802b950 \n\
/* 0802b94c */ BL func_0801d95c \n\
 \n\
branch_0802b950: \n\
/* 0802b950 */ LDR R0, [R4] \n\
/* 0802b952 */ LDR R1, =0x00000554 \n\
/* 0802b954 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802b956 */ LDRB R0, [R0] \n\
/* 0802b958 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802b95a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b95c */ BL func_08017928 \n\
/* 0802b960 */ LDR R0, =D_03005380 \n\
/* 0802b962 */ LDR R0, [R0] \n\
/* 0802b964 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b966 */ LDRSH R1, [R5, R2] \n\
/* 0802b968 */ LDR R2, =D_088ca120 \n\
/* 0802b96a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802b96c */ STR R3, [SP] \n\
/* 0802b96e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802b970 */ STR R3, [SP, 0x4] \n\
/* 0802b972 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802b974 */ STR R3, [SP, 0x8] \n\
/* 0802b976 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802b978 */ BL func_0804d8f8 \n\
/* 0802b97c */ B branch_0802b9c8 \n\
\n\
.ltorg \n\
 \n\
branch_0802b994: \n\
/* 0802b994 */ LSLS R4, R1, 0x1E \n\
/* 0802b996 */ LSRS R4, R4, 0x1F \n\
/* 0802b998 */ BL func_08018054 \n\
/* 0802b99c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802b99e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802b9a0 */ BL func_08029f68 \n\
/* 0802b9a4 */ LDR R4, =D_03005380 \n\
/* 0802b9a6 */ LDR R0, [R4] \n\
/* 0802b9a8 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b9aa */ LDRSH R1, [R5, R2] \n\
/* 0802b9ac */ STR R7, [SP] \n\
/* 0802b9ae */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802b9b0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802b9b2 */ BL func_0804dae0 \n\
/* 0802b9b6 */ LDR R0, [R4] \n\
/* 0802b9b8 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b9ba */ LDRSH R1, [R5, R2] \n\
/* 0802b9bc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802b9be */ BL func_0804cebc \n\
/* 0802b9c2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b9c4 */ BL func_0802a840 \n\
 \n\
branch_0802b9c8: \n\
/* 0802b9c8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802b9ca */ BL func_0802b6fc \n\
 \n\
branch_0802b9ce: \n\
/* 0802b9ce */ ADD SP, 0xC \n\
/* 0802b9d0 */ POP {R4-R7} \n\
/* 0802b9d2 */ POP {R0} \n\
/* 0802b9d4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
