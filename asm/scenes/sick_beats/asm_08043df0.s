asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043df0 \n\
/* 08043df0 */ PUSH {R4, LR} \n\
/* 08043df2 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08043df4 */ BL func_08018054 \n\
/* 08043df8 */ LDR R1, =D_08931bec \n\
/* 08043dfa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043dfc */ BGE branch_08043e00 \n\
/* 08043dfe */ LDR R1, =D_08931bbc \n\
 \n\
branch_08043e00: \n\
/* 08043e00 */ LDR R2, =s_f_virus_osii_seqData \n\
/* 08043e02 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08043e04 */ BL func_08043a38 \n\
/* 08043e08 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043e0a */ BEQ branch_08043e18 \n\
/* 08043e0c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08043e0e */ BL func_08042d4c \n\
/* 08043e12 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08043e14 */ BL func_08042b30 \n\
 \n\
branch_08043e18: \n\
/* 08043e18 */ POP {R4} \n\
/* 08043e1a */ POP {R0} \n\
/* 08043e1c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
