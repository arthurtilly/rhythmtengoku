asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009a54 \n\
/* 08009a54 */ PUSH {LR} \n\
/* 08009a56 */ LDRB R2, [R0] \n\
/* 08009a58 */ LDRB R3, [R0, 0x1] \n\
/* 08009a5a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08009a5c */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 08009a5e */ LSLS R0, R0, 0x18 \n\
/* 08009a60 */ LSRS R0, R0, 0x18 \n\
/* 08009a62 */ CMP R0, 0x5E @ Compare R0 and 0x5E \n\
/* 08009a64 */ BHI branch_08009a84 \n\
/* 08009a66 */ LDR R1, =D_089380e4 \n\
/* 08009a68 */ LDRB R0, [R1] \n\
/* 08009a6a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009a6c */ BEQ branch_08009a9e \n\
 \n\
branch_08009a6e: \n\
/* 08009a6e */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08009a70 */ BEQ branch_08009a80 \n\
/* 08009a72 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08009a74 */ LDRB R0, [R1] \n\
/* 08009a76 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009a78 */ BNE branch_08009a6e \n\
/* 08009a7a */ B branch_08009a9e \n\
\n\
.ltorg \n\
 \n\
branch_08009a80: \n\
/* 08009a80 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009a82 */ B branch_08009aa0 \n\
 \n\
branch_08009a84: \n\
/* 08009a84 */ LDR R1, =D_089380d4 \n\
/* 08009a86 */ B branch_08009a98 \n\
\n\
.ltorg \n\
 \n\
branch_08009a8c: \n\
/* 08009a8c */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08009a8e */ BNE branch_08009a96 \n\
/* 08009a90 */ LDRB R0, [R1, 0x1] \n\
/* 08009a92 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08009a94 */ BEQ branch_08009a80 \n\
 \n\
branch_08009a96: \n\
/* 08009a96 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
 \n\
branch_08009a98: \n\
/* 08009a98 */ LDRB R0, [R1] \n\
/* 08009a9a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009a9c */ BNE branch_08009a8c \n\
 \n\
branch_08009a9e: \n\
/* 08009a9e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08009aa0: \n\
/* 08009aa0 */ POP {R1} \n\
/* 08009aa2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
