asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d8f8 \n\
/* 0804d8f8 */ PUSH {R4-R7, LR} \n\
/* 0804d8fa */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804d8fc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804d8fe */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804d900 */ PUSH {R5-R7} \n\
/* 0804d902 */ SUB SP, 0x4 \n\
/* 0804d904 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804d906 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804d908 */ LDR R0, [SP, 0x24] \n\
/* 0804d90a */ LDR R2, [SP, 0x28] \n\
/* 0804d90c */ LDR R4, [SP, 0x2C] \n\
/* 0804d90e */ LSLS R3, R3, 0x18 \n\
/* 0804d910 */ LSRS R3, R3, 0x18 \n\
/* 0804d912 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804d914 */ LSLS R0, R0, 0x18 \n\
/* 0804d916 */ LSRS R0, R0, 0x18 \n\
/* 0804d918 */ STR R0, [SP] \n\
/* 0804d91a */ LSLS R2, R2, 0x18 \n\
/* 0804d91c */ LSRS R2, R2, 0x18 \n\
/* 0804d91e */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0804d920 */ LSLS R4, R4, 0x10 \n\
/* 0804d922 */ LSRS R4, R4, 0x10 \n\
/* 0804d924 */ MOV R10, R4 @ Set R10 to R4 \n\
/* 0804d926 */ LDR R2, =D_03004428 \n\
/* 0804d928 */ MOVS R0, 0x13 @ Set R0 to 0x13 \n\
/* 0804d92a */ STRB R0, [R2] \n\
/* 0804d92c */ LSLS R1, R1, 0x10 \n\
/* 0804d92e */ ASRS R5, R1, 0x10 \n\
/* 0804d930 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804d932 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804d934 */ BL func_0804cc68 \n\
/* 0804d938 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d93a */ BNE branch_0804d996 \n\
/* 0804d93c */ LSLS R0, R5, 0x4 \n\
/* 0804d93e */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 0804d940 */ LSLS R0, R0, 0x2 \n\
/* 0804d942 */ LDR R1, [R7, 0x8] \n\
/* 0804d944 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 0804d946 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804d948 */ BL func_0804d11c \n\
/* 0804d94c */ LSLS R0, R0, 0x18 \n\
/* 0804d94e */ LSRS R0, R0, 0x13 \n\
/* 0804d950 */ LDRH R2, [R4] \n\
/* 0804d952 */ LDR R1, =0xffffe01f \n\
/* 0804d954 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0804d956 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804d958 */ STRH R1, [R4] \n\
/* 0804d95a */ STR R6, [R4, 0x8] \n\
/* 0804d95c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804d95e */ BL func_0804d140 \n\
/* 0804d962 */ STRH R0, [R4, 0x28] \n\
/* 0804d964 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804d966 */ LSLS R0, R1, 0x18 \n\
/* 0804d968 */ ASRS R3, R0, 0x18 \n\
/* 0804d96a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804d96c */ BLT branch_0804d996 \n\
/* 0804d96e */ MOV R0, SP @ Set R0 to SP \n\
/* 0804d970 */ LDRB R0, [R0] \n\
/* 0804d972 */ STRB R0, [R4, 0xD] \n\
/* 0804d974 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804d976 */ STRB R1, [R4, 0xE] \n\
/* 0804d978 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0804d97a */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0804d97c */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0804d97e */ LSLS R1, R1, 0x1 \n\
/* 0804d980 */ LDRB R2, [R4] \n\
/* 0804d982 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0804d984 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d986 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804d988 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804d98a */ STRB R0, [R4] \n\
/* 0804d98c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804d98e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804d990 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804d992 */ BL func_0804cebc \n\
 \n\
branch_0804d996: \n\
/* 0804d996 */ ADD SP, 0x4 \n\
/* 0804d998 */ POP {R3-R5} \n\
/* 0804d99a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804d99c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804d99e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804d9a0 */ POP {R4-R7} \n\
/* 0804d9a2 */ POP {R0} \n\
/* 0804d9a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
