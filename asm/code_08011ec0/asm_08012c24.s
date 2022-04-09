asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012c24 \n\
/* 08012c24 */ PUSH {R4, LR} \n\
/* 08012c26 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08012c28 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08012c2a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08012c2c */ BGE branch_08012c38 \n\
/* 08012c2e */ LDR R0, =D_08050bcc \n\
/* 08012c30 */ B branch_08012caa \n\
\n\
.ltorg \n\
 \n\
branch_08012c38: \n\
/* 08012c38 */ LDR R1, =D_089cdf24 \n\
/* 08012c3a */ LSLS R2, R2, 0x3 \n\
/* 08012c3c */ ADDS R3, R2, R1 @ Set R3 to R2 + R1 \n\
/* 08012c3e */ LDRB R3, [R3, 0x2] \n\
/* 08012c40 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 08012c42 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08012c44 */ LDR R2, [R2] \n\
/* 08012c46 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08012c48 */ BEQ branch_08012c88 \n\
/* 08012c4a */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08012c4c */ BCC branch_08012c5c \n\
/* 08012c4e */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 08012c50 */ BEQ branch_08012c98 \n\
/* 08012c52 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 08012c54 */ BEQ branch_08012ca8 \n\
/* 08012c56 */ B branch_08012caa \n\
\n\
.ltorg \n\
 \n\
branch_08012c5c: \n\
/* 08012c5c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08012c5e */ BEQ branch_08012c74 \n\
/* 08012c60 */ LDR R0, =D_089d81b4 \n\
/* 08012c62 */ LSLS R1, R2, 0x1 \n\
/* 08012c64 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08012c66 */ LSLS R1, R1, 0x2 \n\
/* 08012c68 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08012c6a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08012c6c */ LDR R0, [R1] \n\
/* 08012c6e */ B branch_08012caa \n\
\n\
.ltorg \n\
 \n\
branch_08012c74: \n\
/* 08012c74 */ LDR R0, =D_089d81b4 \n\
/* 08012c76 */ LSLS R1, R2, 0x1 \n\
/* 08012c78 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08012c7a */ LSLS R1, R1, 0x2 \n\
/* 08012c7c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08012c7e */ LDR R0, [R1] \n\
/* 08012c80 */ B branch_08012caa \n\
\n\
.ltorg \n\
 \n\
branch_08012c88: \n\
/* 08012c88 */ LDR R0, =D_089d83d0 \n\
/* 08012c8a */ LSLS R1, R2, 0x2 \n\
/* 08012c8c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08012c8e */ LDR R0, [R1] \n\
/* 08012c90 */ B branch_08012caa \n\
\n\
.ltorg \n\
 \n\
branch_08012c98: \n\
/* 08012c98 */ LDR R0, =D_089d7e74 \n\
/* 08012c9a */ LSLS R1, R2, 0x4 \n\
/* 08012c9c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08012c9e */ LDR R0, [R1] \n\
/* 08012ca0 */ B branch_08012caa \n\
\n\
.ltorg \n\
 \n\
branch_08012ca8: \n\
/* 08012ca8 */ LDR R0, =D_08050bd0 \n\
 \n\
branch_08012caa: \n\
/* 08012caa */ POP {R4} \n\
/* 08012cac */ POP {R1} \n\
/* 08012cae */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
