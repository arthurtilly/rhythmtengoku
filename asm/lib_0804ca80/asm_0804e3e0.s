asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e3e0 \n\
/* 0804e3e0 */ PUSH {R4, R5, LR} \n\
/* 0804e3e2 */ LSLS R1, R1, 0x10 \n\
/* 0804e3e4 */ LSRS R4, R1, 0x10 \n\
/* 0804e3e6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804e3e8 */ LDR R1, [R0, 0x8] \n\
/* 0804e3ea */ MOVS R5, 0xC @ Set R5 to 0xC \n\
/* 0804e3ec */ LDRSH R2, [R0, R5] \n\
/* 0804e3ee */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e3f0 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804e3f2 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804e3f4 */ BEQ branch_0804e410 \n\
/* 0804e3f6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0804e3f8: \n\
/* 0804e3f8 */ LSLS R0, R2, 0x4 \n\
/* 0804e3fa */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0804e3fc */ LSLS R0, R0, 0x2 \n\
/* 0804e3fe */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 0804e400 */ LDRH R0, [R2, 0x2A] \n\
/* 0804e402 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0804e404 */ BNE branch_0804e408 \n\
/* 0804e406 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
 \n\
branch_0804e408: \n\
/* 0804e408 */ MOVS R0, 0x1A @ Set R0 to 0x1A \n\
/* 0804e40a */ LDRSH R2, [R2, R0] \n\
/* 0804e40c */ CMP R2, R5 @ Check R2 - R5 \n\
/* 0804e40e */ BNE branch_0804e3f8 \n\
 \n\
branch_0804e410: \n\
/* 0804e410 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804e412 */ POP {R4, R5} \n\
/* 0804e414 */ POP {R1} \n\
/* 0804e416 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
