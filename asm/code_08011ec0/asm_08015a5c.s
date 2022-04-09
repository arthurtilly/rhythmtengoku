asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015a5c \n\
/* 08015a5c */ PUSH {R4-R7, LR} \n\
/* 08015a5e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08015a60 */ PUSH {R7} \n\
/* 08015a62 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08015a64 */ LDR R0, [SP, 0x18] \n\
/* 08015a66 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08015a68 */ LDR R0, [SP, 0x1C] \n\
/* 08015a6a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08015a6c */ LSRS R5, R2, 0x5 \n\
/* 08015a6e */ LSRS R4, R3, 0x5 \n\
/* 08015a70 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08015a72 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08015a74 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 08015a76 */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08015a78 */ BEQ branch_08015a8c \n\
/* 08015a7a */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08015a7c */ BCC branch_08015a88 \n\
/* 08015a7e */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 08015a80 */ BEQ branch_08015a92 \n\
/* 08015a82 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 08015a84 */ BEQ branch_08015a98 \n\
/* 08015a86 */ B branch_08015aa2 \n\
 \n\
branch_08015a88: \n\
/* 08015a88 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08015a8a */ B branch_08015aa2 \n\
 \n\
branch_08015a8c: \n\
/* 08015a8c */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 08015a8e */ ANDS R6, R1 @ Set R6 to R6 & R1 \n\
/* 08015a90 */ B branch_08015aa2 \n\
 \n\
branch_08015a92: \n\
/* 08015a92 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08015a94 */ ANDS R6, R4 @ Set R6 to R6 & R4 \n\
/* 08015a96 */ B branch_08015aa2 \n\
 \n\
branch_08015a98: \n\
/* 08015a98 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08015a9a */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 08015a9c */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 08015a9e */ LSLS R0, R4, 0x1 \n\
/* 08015aa0 */ ADDS R6, R5, R0 @ Set R6 to R5 + R0 \n\
 \n\
branch_08015aa2: \n\
/* 08015aa2 */ ADDS R1, R7, R6 @ Set R1 to R7 + R6 \n\
/* 08015aa4 */ LSLS R1, R1, 0xB \n\
/* 08015aa6 */ LSLS R0, R2, 0x1 \n\
/* 08015aa8 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08015aaa */ LSLS R2, R2, 0x13 \n\
/* 08015aac */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08015aae */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08015ab0 */ LSLS R0, R3, 0x6 \n\
/* 08015ab2 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08015ab4 */ LDR R0, [SP, 0x28] \n\
/* 08015ab6 */ LSLS R0, R0, 0xC \n\
/* 08015ab8 */ LDR R1, [SP, 0x24] \n\
/* 08015aba */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08015abc */ LSLS R0, R0, 0x10 \n\
/* 08015abe */ LSRS R3, R0, 0x10 \n\
/* 08015ac0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08015ac2 */ CMP R0, R8 @ Compare R0 and R8 \n\
/* 08015ac4 */ BCS branch_08015af0 \n\
 \n\
branch_08015ac6: \n\
/* 08015ac6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015ac8 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
/* 08015aca */ ADDS R6, 0x40 @ Add 0x40 to R6 \n\
/* 08015acc */ LDR R1, [SP, 0x20] \n\
/* 08015ace */ ADDS R5, R3, R1 @ Set R5 to R3 + R1 \n\
/* 08015ad0 */ ADDS R7, R0, 0x1 @ Set R7 to R0 + 0x1 \n\
/* 08015ad2 */ CMP R2, R12 @ Compare R2 and R12 \n\
/* 08015ad4 */ BCS branch_08015ae4 \n\
/* 08015ad6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
 \n\
branch_08015ad8: \n\
/* 08015ad8 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 08015ada */ STRH R0, [R1] \n\
/* 08015adc */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08015ade */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08015ae0 */ CMP R2, R12 @ Compare R2 and R12 \n\
/* 08015ae2 */ BCC branch_08015ad8 \n\
 \n\
branch_08015ae4: \n\
/* 08015ae4 */ ADDS R4, R6, 0x0 @ Set R4 to R6 + 0x0 \n\
/* 08015ae6 */ LSLS R0, R5, 0x10 \n\
/* 08015ae8 */ LSRS R3, R0, 0x10 \n\
/* 08015aea */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08015aec */ CMP R0, R8 @ Compare R0 and R8 \n\
/* 08015aee */ BCC branch_08015ac6 \n\
 \n\
branch_08015af0: \n\
/* 08015af0 */ POP {R3} \n\
/* 08015af2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08015af4 */ POP {R4-R7} \n\
/* 08015af6 */ POP {R0} \n\
/* 08015af8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
