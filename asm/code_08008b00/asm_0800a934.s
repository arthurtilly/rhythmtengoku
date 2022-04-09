asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a934 \n\
/* 0800a934 */ PUSH {R4-R7, LR} \n\
/* 0800a936 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800a938 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800a93a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800a93c */ PUSH {R5-R7} \n\
/* 0800a93e */ SUB SP, 0x8 \n\
/* 0800a940 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800a942 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800a944 */ BEQ branch_0800aa06 \n\
/* 0800a946 */ ADDS R0, 0x39 @ Add 0x39 to R0 \n\
/* 0800a948 */ LDRB R1, [R0] \n\
/* 0800a94a */ STR R1, [SP] \n\
/* 0800a94c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800a94e */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0800a950 */ LDRSH R1, [R5, R2] \n\
/* 0800a952 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0800a954 */ MOVS R0, 0x2A @ Set R0 to 0x2A \n\
/* 0800a956 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0800a958 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800a95a */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800a95c */ ADDS R2, 0x54 @ Add 0x54 to R2 \n\
/* 0800a95e */ STR R2, [SP, 0x4] \n\
/* 0800a960 */ CMP R7, R1 @ Check R7 - R1 \n\
/* 0800a962 */ BCS branch_0800a9e2 \n\
/* 0800a964 */ LDR R0, =D_03005380 \n\
/* 0800a966 */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_0800a968: \n\
/* 0800a968 */ LDR R0, [R5, 0x10] \n\
/* 0800a96a */ LSLS R6, R7, 0x1 \n\
/* 0800a96c */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0800a96e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800a970 */ LDRSH R4, [R0, R1] \n\
/* 0800a972 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800a974 */ BLT branch_0800a99c \n\
/* 0800a976 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800a978 */ LDR R0, [R2] \n\
/* 0800a97a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800a97c */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0800a97e */ BL func_0804ddb0 \n\
/* 0800a982 */ BL func_0800a068 \n\
/* 0800a986 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800a988 */ LDR R0, [R1] \n\
/* 0800a98a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800a98c */ BL func_0804d504 \n\
/* 0800a990 */ LDR R0, [R5, 0x10] \n\
/* 0800a992 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0800a994 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800a996 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800a998 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800a99a */ STRH R1, [R0] \n\
 \n\
branch_0800a99c: \n\
/* 0800a99c */ LDR R0, [R5, 0x1C] \n\
/* 0800a99e */ LSLS R4, R7, 0x2 \n\
/* 0800a9a0 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0800a9a2 */ LDR R0, [R0] \n\
/* 0800a9a4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a9a6 */ BEQ branch_0800a9ac \n\
/* 0800a9a8 */ BL mem_heap_dealloc \n\
 \n\
branch_0800a9ac: \n\
/* 0800a9ac */ LDR R0, [R5, 0x1C] \n\
/* 0800a9ae */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0800a9b0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800a9b2 */ STR R1, [R0] \n\
/* 0800a9b4 */ LDR R0, [R5, 0x20] \n\
/* 0800a9b6 */ ADDS R1, R6, R0 @ Set R1 to R6 + R0 \n\
/* 0800a9b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a9ba */ LDRSH R0, [R1, R2] \n\
/* 0800a9bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a9be */ BLT branch_0800a9d8 \n\
/* 0800a9c0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800a9c2 */ LDR R0, [R2] \n\
/* 0800a9c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a9c6 */ LDRSH R1, [R1, R2] \n\
/* 0800a9c8 */ BL func_0804d504 \n\
/* 0800a9cc */ LDR R0, [R5, 0x20] \n\
/* 0800a9ce */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0800a9d0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800a9d2 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800a9d4 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800a9d6 */ STRH R1, [R0] \n\
 \n\
branch_0800a9d8: \n\
/* 0800a9d8 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0800a9da */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800a9dc */ LDRSH R0, [R5, R1] \n\
/* 0800a9de */ CMP R7, R0 @ Check R7 - R0 \n\
/* 0800a9e0 */ BCC branch_0800a968 \n\
 \n\
branch_0800a9e2: \n\
/* 0800a9e2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800a9e4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800a9e6 */ STRB R0, [R2] \n\
/* 0800a9e8 */ STRB R0, [R5, 0x3] \n\
/* 0800a9ea */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800a9ec */ STRB R0, [R1] \n\
/* 0800a9ee */ STR R0, [R5, 0x34] \n\
/* 0800a9f0 */ LDR R2, [SP, 0x4] \n\
/* 0800a9f2 */ STRB R0, [R2] \n\
/* 0800a9f4 */ LDR R0, [SP] \n\
/* 0800a9f6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a9f8 */ BEQ branch_0800aa06 \n\
/* 0800a9fa */ LDR R1, [R5, 0x44] \n\
/* 0800a9fc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800a9fe */ BEQ branch_0800aa06 \n\
/* 0800aa00 */ LDR R0, [R5, 0x48] \n\
/* 0800aa02 */ BL _call_via_r1 \n\
 \n\
branch_0800aa06: \n\
/* 0800aa06 */ ADD SP, 0x8 \n\
/* 0800aa08 */ POP {R3-R5} \n\
/* 0800aa0a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800aa0c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800aa0e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800aa10 */ POP {R4-R7} \n\
/* 0800aa12 */ POP {R0} \n\
/* 0800aa14 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
