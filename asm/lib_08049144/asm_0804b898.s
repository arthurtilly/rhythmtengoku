asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b898 \n\
/* 0804b898 */ PUSH {R4-R7, LR} \n\
/* 0804b89a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0804b89c */ PUSH {R7} \n\
/* 0804b89e */ SUB SP, 0x4 \n\
/* 0804b8a0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804b8a2 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804b8a4 */ LDR R0, [R4] \n\
/* 0804b8a6 */ STR R0, [SP] \n\
/* 0804b8a8 */ LDRB R5, [R0] \n\
/* 0804b8aa */ MOV R8, R5 @ Set R8 to R5 \n\
/* 0804b8ac */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804b8ae */ STR R0, [SP] \n\
/* 0804b8b0 */ MOV R0, SP @ Set R0 to SP \n\
/* 0804b8b2 */ BL func_0804c398 \n\
/* 0804b8b6 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804b8b8 */ LDR R2, [SP] \n\
/* 0804b8ba */ ADDS R0, R2, R7 @ Set R0 to R2 + R7 \n\
/* 0804b8bc */ STR R0, [R4] \n\
/* 0804b8be */ CMP R5, 0x2F @ Compare R5 and 0x2F \n\
/* 0804b8c0 */ BEQ branch_0804b904 \n\
/* 0804b8c2 */ CMP R5, 0x2F @ Compare R5 and 0x2F \n\
/* 0804b8c4 */ BGT branch_0804b8cc \n\
/* 0804b8c6 */ CMP R5, 0x6 @ Compare R5 and 0x6 \n\
/* 0804b8c8 */ BEQ branch_0804b8d4 \n\
/* 0804b8ca */ B branch_0804b93c \n\
 \n\
branch_0804b8cc: \n\
/* 0804b8cc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804b8ce */ CMP R0, 0x51 @ Compare R0 and 0x51 \n\
/* 0804b8d0 */ BEQ branch_0804b908 \n\
/* 0804b8d2 */ B branch_0804b93c \n\
 \n\
branch_0804b8d4: \n\
/* 0804b8d4 */ LDRB R0, [R6, 0x1C] \n\
/* 0804b8d6 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 0804b8d8 */ BNE branch_0804b8ec \n\
/* 0804b8da */ LDR R0, [R6, 0x14] \n\
/* 0804b8dc */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0804b8de */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0804b8e0 */ BL func_0804b6c4 \n\
/* 0804b8e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b8e6 */ BEQ branch_0804b8ec \n\
/* 0804b8e8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804b8ea */ B branch_0804b93e \n\
 \n\
branch_0804b8ec: \n\
/* 0804b8ec */ LDRB R0, [R6, 0x1D] \n\
/* 0804b8ee */ CMP R7, R0 @ Check R7 - R0 \n\
/* 0804b8f0 */ BNE branch_0804b93c \n\
/* 0804b8f2 */ LDR R0, [R6, 0x18] \n\
/* 0804b8f4 */ LDR R1, [SP] \n\
/* 0804b8f6 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0804b8f8 */ BL func_0804b6c4 \n\
/* 0804b8fc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b8fe */ BEQ branch_0804b93c \n\
/* 0804b900 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804b902 */ B branch_0804b93e \n\
 \n\
branch_0804b904: \n\
/* 0804b904 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804b906 */ B branch_0804b93e \n\
 \n\
branch_0804b908: \n\
/* 0804b908 */ LDRB R1, [R2] \n\
/* 0804b90a */ LSLS R1, R1, 0x10 \n\
/* 0804b90c */ LDRB R0, [R2, 0x1] \n\
/* 0804b90e */ LSLS R0, R0, 0x8 \n\
/* 0804b910 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804b912 */ LDRB R0, [R2, 0x2] \n\
/* 0804b914 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804b916 */ LDR R0, =0x03938700 \n\
/* 0804b918 */ BL __udivsi3 \n\
/* 0804b91c */ LDR R2, =0x000001ff \n\
/* 0804b91e */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804b920 */ LSLS R2, R2, 0xC \n\
/* 0804b922 */ LDR R1, [R6] \n\
/* 0804b924 */ LDR R3, =0xffe00fff \n\
/* 0804b926 */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 0804b928 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0804b92a */ STR R1, [R6] \n\
/* 0804b92c */ LSLS R0, R0, 0x10 \n\
/* 0804b92e */ LSRS R0, R0, 0x10 \n\
/* 0804b930 */ LDRH R1, [R6, 0x26] \n\
/* 0804b932 */ LDRH R2, [R6, 0x1E] \n\
/* 0804b934 */ BL func_0804b6f0 \n\
/* 0804b938 */ LDR R1, =D_0300562c \n\
/* 0804b93a */ STR R0, [R1] \n\
 \n\
branch_0804b93c: \n\
/* 0804b93c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0804b93e: \n\
/* 0804b93e */ ADD SP, 0x4 \n\
/* 0804b940 */ POP {R3} \n\
/* 0804b942 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804b944 */ POP {R4-R7} \n\
/* 0804b946 */ POP {R1} \n\
/* 0804b948 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
