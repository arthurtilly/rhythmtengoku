asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802df08 \n\
/* 0802df08 */ PUSH {R4, R5, LR} \n\
/* 0802df0a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0802df0c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0802df0e */ BGE branch_0802df1a \n\
/* 0802df10 */ B branch_0802df36 \n\
 \n\
branch_0802df12: \n\
/* 0802df12 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802df14 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802df16 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0802df18 */ B branch_0802df38 \n\
 \n\
branch_0802df1a: \n\
/* 0802df1a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802df1c */ LDR R0, =D_030055d0 \n\
/* 0802df1e */ LDR R5, [R0] \n\
/* 0802df20 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802df22 */ ADDS R1, 0x48 @ Add 0x48 to R1 \n\
/* 0802df24 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0802df26: \n\
/* 0802df26 */ LDRH R0, [R1] \n\
/* 0802df28 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 0802df2a */ BEQ branch_0802df12 \n\
/* 0802df2c */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0802df2e */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0802df30 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802df32 */ CMP R4, 0x9 @ Compare R4 and 0x9 \n\
/* 0802df34 */ BLS branch_0802df26 \n\
 \n\
branch_0802df36: \n\
/* 0802df36 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0802df38: \n\
/* 0802df38 */ POP {R4, R5} \n\
/* 0802df3a */ POP {R1} \n\
/* 0802df3c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
