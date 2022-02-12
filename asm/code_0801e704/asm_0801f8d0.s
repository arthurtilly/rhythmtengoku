asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f8d0 \n\
/* 0801f8d0 */ PUSH {R4-R7, LR} \n\
/* 0801f8d2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801f8d4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801f8d6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801f8d8 */ PUSH {R5-R7} \n\
/* 0801f8da */ SUB SP, 0x14 \n\
/* 0801f8dc */ LDR R0, =D_030055d0 \n\
/* 0801f8de */ LDR R0, [R0] \n\
/* 0801f8e0 */ ADDS R0, 0x8A @ Add 0x8A to R0 \n\
/* 0801f8e2 */ LDRB R0, [R0] \n\
/* 0801f8e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801f8e6 */ BEQ branch_0801f920 \n\
/* 0801f8e8 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801f8ea */ BL func_0800be88 \n\
/* 0801f8ee */ LDR R0, =0xfffff400 \n\
/* 0801f8f0 */ BL func_0800c0c4 \n\
/* 0801f8f4 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801f8f6 */ LSLS R0, R0, 0x2 \n\
/* 0801f8f8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f8fa */ BL func_0800c0f8 \n\
/* 0801f8fe */ MOVS R0, 0x16 @ Set R0 to 0x16 \n\
/* 0801f900 */ BL func_0800c3a4 \n\
/* 0801f904 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801f906 */ BL func_08018054 \n\
/* 0801f90a */ SUBS R7, R4, R0 @ Set R7 to R4 - R0 \n\
/* 0801f90c */ MOVS R0, 0x44 @ Set R0 to 0x44 \n\
/* 0801f90e */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0801f910 */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 0801f912 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0801f914 */ B branch_0801f936 \n\
\n\
.ltorg \n\
 \n\
branch_0801f920: \n\
/* 0801f920 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0801f922 */ BL func_0800c3a4 \n\
/* 0801f926 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801f928 */ BL func_08018054 \n\
/* 0801f92c */ SUBS R7, R4, R0 @ Set R7 to R4 - R0 \n\
/* 0801f92e */ MOVS R2, 0x54 @ Set R2 to 0x54 \n\
/* 0801f930 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0801f932 */ MOVS R0, 0x44 @ Set R0 to 0x44 \n\
/* 0801f934 */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_0801f936: \n\
/* 0801f936 */ LDR R6, =D_03005380 \n\
/* 0801f938 */ LDR R0, [R6] \n\
/* 0801f93a */ LDR R4, =D_030055d0 \n\
/* 0801f93c */ LDR R1, [R4] \n\
/* 0801f93e */ ADDS R1, 0x7E @ Add 0x7E to R1 \n\
/* 0801f940 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f942 */ LDRSH R1, [R1, R2] \n\
/* 0801f944 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0801f946 */ BL func_0804ddb0 \n\
/* 0801f94a */ LDR R1, [R6] \n\
/* 0801f94c */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801f94e */ LDR R1, [R4] \n\
/* 0801f950 */ ADDS R1, 0x7E @ Add 0x7E to R1 \n\
/* 0801f952 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f954 */ LDRSH R5, [R1, R2] \n\
/* 0801f956 */ LSLS R0, R0, 0x10 \n\
/* 0801f958 */ LSRS R0, R0, 0x10 \n\
/* 0801f95a */ BL func_08001980 \n\
/* 0801f95e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801f960 */ LSLS R2, R2, 0x18 \n\
/* 0801f962 */ ASRS R2, R2, 0x18 \n\
/* 0801f964 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801f966 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f968 */ BL func_0804cebc \n\
/* 0801f96c */ LDR R0, [R6] \n\
/* 0801f96e */ LDR R1, [R4] \n\
/* 0801f970 */ ADDS R1, 0x7E @ Add 0x7E to R1 \n\
/* 0801f972 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f974 */ LDRSH R1, [R1, R2] \n\
/* 0801f976 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f978 */ BL func_0804d770 \n\
/* 0801f97c */ LDR R0, [R4] \n\
/* 0801f97e */ ADDS R0, 0x7E @ Add 0x7E to R0 \n\
/* 0801f980 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f982 */ LDRSH R0, [R0, R1] \n\
/* 0801f984 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0801f986 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0801f988 */ STR R2, [SP] \n\
/* 0801f98a */ LSLS R1, R7, 0x10 \n\
/* 0801f98c */ LSRS R1, R1, 0x10 \n\
/* 0801f98e */ STR R1, [SP, 0x4] \n\
/* 0801f990 */ MOVS R1, 0x64 @ Set R1 to 0x64 \n\
/* 0801f992 */ MOVS R2, 0x4C @ Set R2 to 0x4C \n\
/* 0801f994 */ BL func_0800e3e4 \n\
/* 0801f998 */ LDR R1, =(func_0801f810 + 1) \n\
/* 0801f99a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f99c */ BL func_08005d38 \n\
/* 0801f9a0 */ LDR R0, [R6] \n\
/* 0801f9a2 */ LDR R1, [R4] \n\
/* 0801f9a4 */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 0801f9a6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f9a8 */ LDRSH R1, [R1, R2] \n\
/* 0801f9aa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801f9ac */ STR R5, [SP] \n\
/* 0801f9ae */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f9b0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0801f9b2 */ BL func_0804dae0 \n\
/* 0801f9b6 */ LDR R0, [R6] \n\
/* 0801f9b8 */ LDR R1, [R4] \n\
/* 0801f9ba */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 0801f9bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f9be */ LDRSH R1, [R1, R2] \n\
/* 0801f9c0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f9c2 */ BL func_0804cebc \n\
/* 0801f9c6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801f9c8 */ BL func_0801f194 \n\
/* 0801f9cc */ LDR R0, [R4] \n\
/* 0801f9ce */ ADDS R0, 0x72 @ Add 0x72 to R0 \n\
/* 0801f9d0 */ STRB R5, [R0] \n\
/* 0801f9d2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f9d4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f9d6 */ BL func_08017338 \n\
/* 0801f9da */ LDR R0, [R6] \n\
/* 0801f9dc */ LDR R1, [R4] \n\
/* 0801f9de */ ADDS R1, 0x70 @ Add 0x70 to R1 \n\
/* 0801f9e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f9e2 */ LDRSH R1, [R1, R2] \n\
/* 0801f9e4 */ LDR R2, =D_088a1158 \n\
/* 0801f9e6 */ STR R5, [SP] \n\
/* 0801f9e8 */ STR R5, [SP, 0x4] \n\
/* 0801f9ea */ STR R5, [SP, 0x8] \n\
/* 0801f9ec */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0801f9ee */ BL func_0804d8f8 \n\
/* 0801f9f2 */ LDR R0, =D_08a9e534 \n\
/* 0801f9f4 */ BL func_08002634 \n\
/* 0801f9f8 */ LDR R0, =D_08a9e548 \n\
/* 0801f9fa */ BL func_08002634 \n\
/* 0801f9fe */ LDR R0, [R6] \n\
/* 0801fa00 */ LDR R1, =D_088a1258 \n\
/* 0801fa02 */ MOVS R2, 0x5A @ Set R2 to 0x5A \n\
/* 0801fa04 */ STR R2, [SP] \n\
/* 0801fa06 */ LDR R2, =0x00008792 \n\
/* 0801fa08 */ STR R2, [SP, 0x4] \n\
/* 0801fa0a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801fa0c */ STR R2, [SP, 0x8] \n\
/* 0801fa0e */ STR R5, [SP, 0xC] \n\
/* 0801fa10 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0801fa12 */ STR R2, [SP, 0x10] \n\
/* 0801fa14 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801fa16 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0801fa18 */ BL func_0804d160 \n\
/* 0801fa1c */ ADD SP, 0x14 \n\
/* 0801fa1e */ POP {R3-R5} \n\
/* 0801fa20 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801fa22 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801fa24 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801fa26 */ POP {R4-R7} \n\
/* 0801fa28 */ POP {R0} \n\
/* 0801fa2a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
