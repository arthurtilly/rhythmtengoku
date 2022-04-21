asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e3b0 \n\
/* 0804e3b0 */ PUSH {R4, R5, LR} \n\
/* 0804e3b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804e3b4 */ LDR R3, [R0, 0x8] \n\
/* 0804e3b6 */ MOVS R4, 0xC @ Set R4 to 0xC \n\
/* 0804e3b8 */ LDRSH R1, [R0, R4] \n\
/* 0804e3ba */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e3bc */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804e3be */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804e3c0 */ BEQ branch_0804e3d6 \n\
/* 0804e3c2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_0804e3c4: \n\
/* 0804e3c4 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0804e3c6 */ LSLS R0, R1, 0x4 \n\
/* 0804e3c8 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804e3ca */ LSLS R0, R0, 0x2 \n\
/* 0804e3cc */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804e3ce */ MOVS R5, 0x1A @ Set R5 to 0x1A \n\
/* 0804e3d0 */ LDRSH R1, [R0, R5] \n\
/* 0804e3d2 */ CMP R1, R4 @ Check R1 - R4 \n\
/* 0804e3d4 */ BNE branch_0804e3c4 \n\
 \n\
branch_0804e3d6: \n\
/* 0804e3d6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804e3d8 */ POP {R4, R5} \n\
/* 0804e3da */ POP {R1} \n\
/* 0804e3dc */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
