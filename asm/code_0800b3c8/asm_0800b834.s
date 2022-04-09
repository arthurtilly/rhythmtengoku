asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b834 \n\
/* 0800b834 */ PUSH {R4-R7, LR} \n\
/* 0800b836 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0800b838 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800b83a */ PUSH {R6, R7} \n\
/* 0800b83c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800b83e */ LDR R2, =D_030053c0 \n\
/* 0800b840 */ LDRB R1, [R2, 0x1] \n\
/* 0800b842 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0800b844 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0800b846 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800b848 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b84a */ STRB R0, [R2, 0x1] \n\
/* 0800b84c */ LDRB R1, [R2] \n\
/* 0800b84e */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0800b850 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800b852 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b854 */ MOVS R1, 0x21 @ Set R1 to 0x21 \n\
/* 0800b856 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800b858 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b85a */ STRB R0, [R2] \n\
/* 0800b85c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800b85e */ STR R0, [R2, 0x18] \n\
/* 0800b860 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800b862 */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0800b864 */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
 \n\
branch_0800b866: \n\
/* 0800b866 */ LDRB R1, [R2] \n\
/* 0800b868 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800b86a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b86c */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0800b86e */ STRB R0, [R2] \n\
/* 0800b870 */ ADDS R2, 0x9C @ Add 0x9C to R2 \n\
/* 0800b872 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0800b874 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0800b876 */ BLS branch_0800b866 \n\
/* 0800b878 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800b87a */ LDR R0, [R5] \n\
/* 0800b87c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b87e */ BEQ branch_0800b964 \n\
/* 0800b880 */ LDR R4, =D_030053c0 \n\
/* 0800b882 */ MOVS R0, 0xC4 @ Set R0 to 0xC4 \n\
/* 0800b884 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800b886 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800b888 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800b88a */ MOVS R1, 0x61 @ Set R1 to 0x61 \n\
/* 0800b88c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800b88e */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_0800b890: \n\
/* 0800b890 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0800b892 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800b894 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0800b896 */ LSLS R2, R2, 0x1 \n\
/* 0800b898 */ LDRB R0, [R4, 0x1] \n\
/* 0800b89a */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0800b89c */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0800b89e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800b8a0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b8a2 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800b8a4 */ STRB R0, [R4, 0x1] \n\
/* 0800b8a6 */ LSLS R0, R0, 0x1C \n\
/* 0800b8a8 */ LSRS R0, R0, 0x1D \n\
/* 0800b8aa */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800b8ac */ BL func_0800c3c4 \n\
/* 0800b8b0 */ MOVS R0, 0x9C @ Set R0 to 0x9C \n\
/* 0800b8b2 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800b8b4 */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 0800b8b6 */ ADDS R3, R2, R4 @ Set R3 to R2 + R4 \n\
/* 0800b8b8 */ ADDS R3, 0x28 @ Add 0x28 to R3 \n\
/* 0800b8ba */ LDRB R0, [R3] \n\
/* 0800b8bc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800b8be */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800b8c0 */ STRB R0, [R3] \n\
/* 0800b8c2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b8c4 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 0800b8c6 */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0800b8c8 */ LDR R1, [R5] \n\
/* 0800b8ca */ STR R1, [R0] \n\
/* 0800b8cc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800b8ce */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 0800b8d0 */ ADDS R1, R2, R1 @ Set R1 to R2 + R1 \n\
/* 0800b8d2 */ LDR R0, [R5] \n\
/* 0800b8d4 */ LDR R0, [R0, 0x20] \n\
/* 0800b8d6 */ STR R0, [R1] \n\
/* 0800b8d8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b8da */ ADDS R0, 0x34 @ Add 0x34 to R0 \n\
/* 0800b8dc */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0800b8de */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800b8e0 */ STR R1, [R0] \n\
/* 0800b8e2 */ LDRB R0, [R3] \n\
/* 0800b8e4 */ SUBS R1, 0x1F @ Subtract 0x1F from R1 \n\
/* 0800b8e6 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0800b8e8 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0800b8ea */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b8ec */ STRB R0, [R3] \n\
/* 0800b8ee */ LDR R1, =D_03005588 \n\
/* 0800b8f0 */ MOVS R3, 0xB0 @ Set R3 to 0xB0 \n\
/* 0800b8f2 */ LSLS R3, R3, 0x1 \n\
/* 0800b8f4 */ ADDS R0, R4, R3 @ Set R0 to R4 + R3 \n\
/* 0800b8f6 */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 0800b8f8 */ STR R0, [R1] \n\
/* 0800b8fa */ LDR R1, =D_0300558c \n\
/* 0800b8fc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b8fe */ ADDS R0, 0x7E @ Add 0x7E to R0 \n\
/* 0800b900 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0800b902 */ STR R2, [R1] \n\
/* 0800b904 */ LDRB R0, [R4] \n\
/* 0800b906 */ LSLS R0, R0, 0x1C \n\
/* 0800b908 */ LSRS R0, R0, 0x1C \n\
/* 0800b90a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800b90c */ BNE branch_0800b930 \n\
/* 0800b90e */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0800b910 */ BNE branch_0800b930 \n\
/* 0800b912 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800b914 */ LDRB R0, [R1] \n\
/* 0800b916 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800b918 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800b91a */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0800b91c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800b91e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0800b920 */ STRB R0, [R3] \n\
/* 0800b922 */ B branch_0800b954 \n\
\n\
.ltorg \n\
 \n\
branch_0800b930: \n\
/* 0800b930 */ LDR R1, [R5] \n\
/* 0800b932 */ LDR R2, [R1] \n\
/* 0800b934 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800b936 */ BEQ branch_0800b942 \n\
/* 0800b938 */ LDR R0, =D_03005520 \n\
/* 0800b93a */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 0800b93c */ LDR R1, [R1, 0x4] \n\
/* 0800b93e */ BL _call_via_r2 \n\
 \n\
branch_0800b942: \n\
/* 0800b942 */ MOVS R0, 0x9C @ Set R0 to 0x9C \n\
/* 0800b944 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800b946 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800b948 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0800b94a */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0800b94c */ LDRB R0, [R1] \n\
/* 0800b94e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800b950 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800b952 */ STRB R0, [R1] \n\
 \n\
branch_0800b954: \n\
/* 0800b954 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0800b956 */ ADDS R7, 0x4 @ Add 0x4 to R7 \n\
/* 0800b958 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0800b95a */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0800b95c */ BHI branch_0800b964 \n\
/* 0800b95e */ LDR R0, [R5] \n\
/* 0800b960 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b962 */ BNE branch_0800b890 \n\
 \n\
branch_0800b964: \n\
/* 0800b964 */ POP {R3, R4} \n\
/* 0800b966 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800b968 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800b96a */ POP {R4-R7} \n\
/* 0800b96c */ POP {R0} \n\
/* 0800b96e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
