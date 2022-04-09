asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011a90 \n\
/* 08011a90 */ PUSH {R4, LR} \n\
/* 08011a92 */ SUB SP, 0x4 \n\
/* 08011a94 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08011a96 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08011a98 */ LSLS R0, R4, 0x1 \n\
/* 08011a9a */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08011a9c */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 08011a9e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08011aa0 */ LDRH R0, [R1] \n\
/* 08011aa2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011aa4 */ BEQ branch_08011ac8 \n\
/* 08011aa6 */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 08011aa8 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08011aaa */ LDRB R0, [R0] \n\
/* 08011aac */ LSLS R0, R0, 0x8 \n\
/* 08011aae */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 08011ab0 */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 08011ab2 */ LDRH R4, [R1] \n\
/* 08011ab4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08011ab6 */ LSLS R1, R1, 0x2 \n\
/* 08011ab8 */ STR R1, [SP] \n\
/* 08011aba */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08011abc */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08011abe */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08011ac0 */ BL func_0800186c \n\
/* 08011ac4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08011ac6 */ B branch_08011acc \n\
 \n\
branch_08011ac8: \n\
/* 08011ac8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08011aca */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08011acc: \n\
/* 08011acc */ ADD SP, 0x4 \n\
/* 08011ace */ POP {R4} \n\
/* 08011ad0 */ POP {R1} \n\
/* 08011ad2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
