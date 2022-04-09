asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e8ac \n\
/* 0802e8ac */ PUSH {R4, R5, LR} \n\
/* 0802e8ae */ SUB SP, 0xC \n\
/* 0802e8b0 */ LDR R0, =D_030055d0 \n\
/* 0802e8b2 */ LDR R4, [R0] \n\
/* 0802e8b4 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 0802e8b6 */ ADDS R5, 0x74 @ Add 0x74 to R5 \n\
/* 0802e8b8 */ LDR R0, [R5, 0x8] \n\
/* 0802e8ba */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802e8bc */ STR R0, [R5, 0x8] \n\
/* 0802e8be */ LDR R1, [R5, 0xC] \n\
/* 0802e8c0 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0802e8c2 */ BCC branch_0802e91c \n\
/* 0802e8c4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802e8c6 */ ADDS R0, 0x8E @ Add 0x8E to R0 \n\
/* 0802e8c8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e8ca */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802e8cc */ STRH R4, [R0] \n\
/* 0802e8ce */ LDRB R0, [R5, 0x10] \n\
/* 0802e8d0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802e8d2 */ EORS R0, R1 @ Set R0 to R0 ^ R1 \n\
/* 0802e8d4 */ STRB R0, [R5, 0x10] \n\
/* 0802e8d6 */ LDR R1, =D_03004b10 \n\
/* 0802e8d8 */ LDRB R0, [R5, 0x10] \n\
/* 0802e8da */ LSLS R0, R0, 0x8 \n\
/* 0802e8dc */ STRH R0, [R1, 0x10] \n\
/* 0802e8de */ STRB R2, [R5, 0x6] \n\
/* 0802e8e0 */ BL func_080178ac \n\
/* 0802e8e4 */ LDR R0, =D_03005380 \n\
/* 0802e8e6 */ LDR R0, [R0] \n\
/* 0802e8e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e8ea */ LDRSH R1, [R5, R2] \n\
/* 0802e8ec */ LDR R3, =D_089e3d98 \n\
/* 0802e8ee */ LDRB R2, [R5, 0x5] \n\
/* 0802e8f0 */ LSLS R2, R2, 0x2 \n\
/* 0802e8f2 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802e8f4 */ LDR R2, [R2] \n\
/* 0802e8f6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802e8f8 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0802e8fa */ STR R3, [SP] \n\
/* 0802e8fc */ STR R4, [SP, 0x4] \n\
/* 0802e8fe */ STR R4, [SP, 0x8] \n\
/* 0802e900 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802e902 */ BL func_0804d8f8 \n\
/* 0802e906 */ LDRB R0, [R5, 0x5] \n\
/* 0802e908 */ STRB R0, [R5, 0x4] \n\
/* 0802e90a */ B branch_0802e958 \n\
\n\
.ltorg \n\
 \n\
branch_0802e91c: \n\
/* 0802e91c */ LSLS R0, R0, 0xA \n\
/* 0802e91e */ BL __udivsi3 \n\
/* 0802e922 */ LDR R2, =gSineTable \n\
/* 0802e924 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0802e926 */ LSLS R3, R3, 0x2 \n\
/* 0802e928 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802e92a */ LDR R1, =0x7ff \n\
/* 0802e92c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802e92e */ LSLS R0, R0, 0x1 \n\
/* 0802e930 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802e932 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e934 */ LDRSH R0, [R0, R1] \n\
/* 0802e936 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802e938 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802e93a */ LSLS R2, R2, 0x1 \n\
/* 0802e93c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802e93e */ ASRS R1, R0, 0x1 \n\
/* 0802e940 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802e942 */ ADDS R0, 0x8E @ Add 0x8E to R0 \n\
/* 0802e944 */ STRH R1, [R0] \n\
/* 0802e946 */ LDR R2, =D_03004b10 \n\
/* 0802e948 */ STRH R1, [R2, 0x10] \n\
/* 0802e94a */ LDRB R0, [R5, 0x10] \n\
/* 0802e94c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e94e */ BEQ branch_0802e958 \n\
/* 0802e950 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0802e952 */ LSLS R3, R3, 0x1 \n\
/* 0802e954 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0802e956 */ STRH R0, [R2, 0x10] \n\
 \n\
branch_0802e958: \n\
/* 0802e958 */ ADD SP, 0xC \n\
/* 0802e95a */ POP {R4, R5} \n\
/* 0802e95c */ POP {R0} \n\
/* 0802e95e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
