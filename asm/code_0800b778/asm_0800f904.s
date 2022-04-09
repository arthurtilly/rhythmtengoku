asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f904 \n\
/* 0800f904 */ PUSH {R4-R7, LR} \n\
/* 0800f906 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0800f908 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800f90a */ PUSH {R6, R7} \n\
/* 0800f90c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800f90e */ LDRB R1, [R6, 0x12] \n\
/* 0800f910 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0800f912 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800f914 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f916 */ BEQ branch_0800f91a \n\
/* 0800f918 */ B branch_0800fa60 \n\
 \n\
branch_0800f91a: \n\
/* 0800f91a */ LDRH R7, [R6, 0xA] \n\
/* 0800f91c */ LDRH R0, [R6, 0xC] \n\
/* 0800f91e */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0800f920 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800f922 */ LDRSB R0, [R6, R0] \n\
/* 0800f924 */ LSLS R0, R0, 0x10 \n\
/* 0800f926 */ LSRS R0, R0, 0x10 \n\
/* 0800f928 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800f92a */ LDRH R2, [R6, 0x10] \n\
/* 0800f92c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800f92e */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 0800f930 */ LDRSH R0, [R6, R3] \n\
/* 0800f932 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f934 */ BEQ branch_0800f9c6 \n\
/* 0800f936 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800f938 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800f93a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f93c */ BEQ branch_0800f988 \n\
/* 0800f93e */ MOVS R4, 0xE @ Set R4 to 0xE \n\
/* 0800f940 */ LDRSH R5, [R6, R4] \n\
/* 0800f942 */ LDR R4, =gSineTable \n\
/* 0800f944 */ LSLS R1, R2, 0x10 \n\
/* 0800f946 */ ASRS R1, R1, 0x10 \n\
/* 0800f948 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800f94a */ LSLS R2, R2, 0x2 \n\
/* 0800f94c */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0800f94e */ LDR R3, =0x7ff \n\
/* 0800f950 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0800f952 */ LSLS R0, R0, 0x1 \n\
/* 0800f954 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800f956 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f958 */ LDRSH R0, [R0, R2] \n\
/* 0800f95a */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800f95c */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 0800f95e */ ASRS R2, R2, 0x8 \n\
/* 0800f960 */ LSLS R0, R7, 0x10 \n\
/* 0800f962 */ ASRS R0, R0, 0x10 \n\
/* 0800f964 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800f966 */ LSLS R0, R0, 0x10 \n\
/* 0800f968 */ LSRS R7, R0, 0x10 \n\
/* 0800f96a */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 0800f96c */ LSLS R1, R1, 0x1 \n\
/* 0800f96e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0800f970 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800f972 */ LDRSH R0, [R1, R3] \n\
/* 0800f974 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800f976 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800f978 */ ASRS R1, R1, 0x8 \n\
/* 0800f97a */ MOV R4, R12 @ Set R4 to R12 \n\
/* 0800f97c */ LSLS R0, R4, 0x10 \n\
/* 0800f97e */ B branch_0800f9bc \n\
\n\
.ltorg \n\
 \n\
branch_0800f988: \n\
/* 0800f988 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800f98a */ LSLS R2, R0, 0x18 \n\
/* 0800f98c */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0800f98e */ LDRSH R3, [R6, R1] \n\
/* 0800f990 */ LDR R0, =D_089361cc \n\
/* 0800f992 */ LSRS R2, R2, 0x17 \n\
/* 0800f994 */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0800f996 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800f998 */ LDRSH R0, [R0, R4] \n\
/* 0800f99a */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800f99c */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800f99e */ ASRS R1, R1, 0x8 \n\
/* 0800f9a0 */ LSLS R0, R7, 0x10 \n\
/* 0800f9a2 */ ASRS R0, R0, 0x10 \n\
/* 0800f9a4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f9a6 */ LSLS R0, R0, 0x10 \n\
/* 0800f9a8 */ LSRS R7, R0, 0x10 \n\
/* 0800f9aa */ LDR R0, =D_08935fcc \n\
/* 0800f9ac */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0800f9ae */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800f9b0 */ LDRSH R0, [R2, R1] \n\
/* 0800f9b2 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800f9b4 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800f9b6 */ ASRS R1, R1, 0x8 \n\
/* 0800f9b8 */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0800f9ba */ LSLS R0, R2, 0x10 \n\
 \n\
branch_0800f9bc: \n\
/* 0800f9bc */ ASRS R0, R0, 0x10 \n\
/* 0800f9be */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f9c0 */ LSLS R0, R0, 0x10 \n\
/* 0800f9c2 */ LSRS R0, R0, 0x10 \n\
/* 0800f9c4 */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_0800f9c6: \n\
/* 0800f9c6 */ LDR R0, =D_03005380 \n\
/* 0800f9c8 */ LDR R0, [R0] \n\
/* 0800f9ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800f9cc */ LDRSH R1, [R6, R3] \n\
/* 0800f9ce */ LSLS R2, R7, 0x10 \n\
/* 0800f9d0 */ ASRS R2, R2, 0x10 \n\
/* 0800f9d2 */ MOV R4, R12 @ Set R4 to R12 \n\
/* 0800f9d4 */ LSLS R3, R4, 0x10 \n\
/* 0800f9d6 */ ASRS R3, R3, 0x10 \n\
/* 0800f9d8 */ BL func_0804d5d4 \n\
/* 0800f9dc */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800f9de */ LSLS R0, R1, 0x10 \n\
/* 0800f9e0 */ ASRS R4, R0, 0x10 \n\
/* 0800f9e2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800f9e4 */ BLT branch_0800fa60 \n\
/* 0800f9e6 */ LDRH R5, [R6, 0x8] \n\
/* 0800f9e8 */ LDRB R2, [R6, 0x12] \n\
/* 0800f9ea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800f9ec */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800f9ee */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f9f0 */ BEQ branch_0800fa02 \n\
/* 0800f9f2 */ LSLS R0, R5, 0x10 \n\
/* 0800f9f4 */ ASRS R0, R0, 0x10 \n\
/* 0800f9f6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800f9f8 */ LSLS R1, R3, 0x10 \n\
/* 0800f9fa */ ASRS R1, R1, 0x10 \n\
/* 0800f9fc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f9fe */ LSLS R0, R0, 0x10 \n\
/* 0800fa00 */ LSRS R5, R0, 0x10 \n\
 \n\
branch_0800fa02: \n\
/* 0800fa02 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0800fa04 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800fa06 */ LSLS R0, R0, 0x18 \n\
/* 0800fa08 */ LSRS R0, R0, 0x18 \n\
/* 0800fa0a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800fa0c */ ASRS R1, R0, 0x1F \n\
/* 0800fa0e */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 0800fa10 */ ANDS R1, R7 @ Set R1 to R1 & R7 \n\
/* 0800fa12 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0800fa14 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800fa16 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fa18 */ BEQ branch_0800fa1e \n\
/* 0800fa1a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0800fa1c */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
 \n\
branch_0800fa1e: \n\
/* 0800fa1e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800fa20 */ BL func_08002260 \n\
/* 0800fa24 */ LDRB R1, [R6, 0x12] \n\
/* 0800fa26 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800fa28 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800fa2a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fa2c */ BEQ branch_0800fa44 \n\
/* 0800fa2e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800fa30 */ BL func_080022d8 \n\
/* 0800fa34 */ B branch_0800fa4a \n\
\n\
.ltorg \n\
 \n\
branch_0800fa44: \n\
/* 0800fa44 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800fa46 */ BL func_080022bc \n\
 \n\
branch_0800fa4a: \n\
/* 0800fa4a */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0800fa4c */ LSLS R0, R4, 0x18 \n\
/* 0800fa4e */ ASRS R0, R0, 0x18 \n\
/* 0800fa50 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0800fa52 */ LDRSH R1, [R6, R2] \n\
/* 0800fa54 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 0800fa56 */ LDRSH R2, [R6, R3] \n\
/* 0800fa58 */ LSLS R3, R5, 0x10 \n\
/* 0800fa5a */ ASRS R3, R3, 0x10 \n\
/* 0800fa5c */ BL func_080074c4 \n\
 \n\
branch_0800fa60: \n\
/* 0800fa60 */ POP {R3, R4} \n\
/* 0800fa62 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800fa64 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800fa66 */ POP {R4-R7} \n\
/* 0800fa68 */ POP {R0} \n\
/* 0800fa6a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
