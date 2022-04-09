asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002dec \n\
/* 08002dec */ PUSH {LR} \n\
/* 08002dee */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08002df0 */ B branch_08002e02 \n\
 \n\
branch_08002df2: \n\
/* 08002df2 */ STR R0, [R3] \n\
/* 08002df4 */ LDR R0, [R1, 0x4] \n\
/* 08002df6 */ STR R0, [R3, 0x4] \n\
/* 08002df8 */ LDR R0, [R1, 0x8] \n\
/* 08002dfa */ STR R0, [R3, 0x8] \n\
/* 08002dfc */ ADDS R3, 0xC @ Add 0xC to R3 \n\
/* 08002dfe */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 08002e00 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
 \n\
branch_08002e02: \n\
/* 08002e02 */ LDR R0, [R1] \n\
/* 08002e04 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002e06 */ BEQ branch_08002e0c \n\
/* 08002e08 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08002e0a */ BNE branch_08002df2 \n\
 \n\
branch_08002e0c: \n\
/* 08002e0c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08002e0e */ STR R0, [R3, 0x4] \n\
/* 08002e10 */ STR R0, [R3] \n\
/* 08002e12 */ STR R0, [R3, 0x8] \n\
/* 08002e14 */ POP {R0} \n\
/* 08002e16 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
