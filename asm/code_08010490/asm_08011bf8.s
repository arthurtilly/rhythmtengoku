asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011bf8 \n\
/* 08011bf8 */ PUSH {LR} \n\
/* 08011bfa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011bfc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08011bfe */ ADDS R1, 0xC @ Add 0xC to R1 \n\
 \n\
branch_08011c00: \n\
/* 08011c00 */ LDRH R0, [R1] \n\
/* 08011c02 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011c04 */ BNE branch_08011c0a \n\
/* 08011c06 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08011c08 */ B branch_08011c16 \n\
 \n\
branch_08011c0a: \n\
/* 08011c0a */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08011c0c */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08011c0e */ CMP R2, 0x9 @ Compare R2 and 0x9 \n\
/* 08011c10 */ BLS branch_08011c00 \n\
/* 08011c12 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08011c14 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08011c16: \n\
/* 08011c16 */ POP {R1} \n\
/* 08011c18 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
