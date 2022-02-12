asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08029ba0 \n\
/* 08029ba0 */ PUSH {R4, R5, LR} \n\
/* 08029ba2 */ LDR R4, =D_030055d0 \n\
/* 08029ba4 */ LDR R0, [R4] \n\
/* 08029ba6 */ LDRB R0, [R0] \n\
/* 08029ba8 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08029baa */ BNE branch_08029bfa \n\
/* 08029bac */ BL func_08027dfc \n\
/* 08029bb0 */ LDR R1, [R4] \n\
/* 08029bb2 */ LDRB R0, [R1, 0x1] \n\
/* 08029bb4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08029bb6 */ BNE branch_08029bfa \n\
/* 08029bb8 */ LDR R2, =0x000003cd \n\
/* 08029bba */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08029bbc */ LDRB R0, [R0] \n\
/* 08029bbe */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08029bc0 */ BNE branch_08029bfa \n\
/* 08029bc2 */ LDR R0, =D_03004afc \n\
/* 08029bc4 */ SUBS R2, 0xB @ Subtract 0xB from R2 \n\
/* 08029bc6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08029bc8 */ LDRH R2, [R0] \n\
/* 08029bca */ LDRH R0, [R1] \n\
/* 08029bcc */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08029bce */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029bd0 */ BEQ branch_08029bfa \n\
/* 08029bd2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08029bd4 */ LSLS R0, R0, 0x1 \n\
/* 08029bd6 */ BL func_0802b03c \n\
/* 08029bda */ LDR R1, [R4] \n\
/* 08029bdc */ LDR R5, =0x0000041c \n\
/* 08029bde */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 08029be0 */ LDRH R0, [R0] \n\
/* 08029be2 */ CMP R0, 0x1D @ Compare R0 and 0x1D \n\
/* 08029be4 */ BHI branch_08029bee \n\
/* 08029be6 */ LDR R0, =0x0000045a \n\
/* 08029be8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08029bea */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08029bec */ STRH R0, [R1] \n\
 \n\
branch_08029bee: \n\
/* 08029bee */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
/* 08029bf0 */ BL func_0800c3a4 \n\
/* 08029bf4 */ LDR R1, [R4] \n\
/* 08029bf6 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08029bf8 */ STRH R0, [R1] \n\
 \n\
branch_08029bfa: \n\
/* 08029bfa */ LDR R0, =D_030055d0 \n\
/* 08029bfc */ LDR R0, [R0] \n\
/* 08029bfe */ LDRB R0, [R0, 0x1] \n\
/* 08029c00 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08029c02 */ BEQ branch_08029c20 \n\
/* 08029c04 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08029c06 */ BEQ branch_08029c26 \n\
/* 08029c08 */ B branch_08029c2a \n\
\n\
.ltorg \n\
\n\
branch_08029c20: \n\
/* 08029c20 */ BL func_0802981c \n\
/* 08029c24 */ B branch_08029c2a \n\
 \n\
branch_08029c26: \n\
/* 08029c26 */ BL func_08029a1c \n\
 \n\
branch_08029c2a: \n\
/* 08029c2a */ BL func_0802ab34 \n\
/* 08029c2e */ LDR R4, =D_030055d0 \n\
/* 08029c30 */ LDR R0, [R4] \n\
/* 08029c32 */ MOVS R1, 0xD5 @ Set R1 to 0xD5 \n\
/* 08029c34 */ LSLS R1, R1, 0x2 \n\
/* 08029c36 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029c38 */ LDR R1, =D_089e2b58 \n\
/* 08029c3a */ BL func_080296b0 \n\
/* 08029c3e */ LDR R1, [R4] \n\
/* 08029c40 */ LDR R2, =0x000003c1 \n\
/* 08029c42 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08029c44 */ LDRB R0, [R0] \n\
/* 08029c46 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029c48 */ BEQ branch_08029c54 \n\
/* 08029c4a */ SUBS R2, 0x35 @ Subtract 0x35 from R2 \n\
/* 08029c4c */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08029c4e */ LDR R1, =D_089e2b78 \n\
/* 08029c50 */ BL func_080296b0 \n\
 \n\
branch_08029c54: \n\
/* 08029c54 */ BL func_0802972c \n\
/* 08029c58 */ BL func_0802979c \n\
/* 08029c5c */ BL func_08029204 \n\
/* 08029c60 */ LDR R0, [R4] \n\
/* 08029c62 */ LDR R1, =0x000003ce \n\
/* 08029c64 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029c66 */ LDRB R0, [R0] \n\
/* 08029c68 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029c6a */ BEQ branch_08029c7c \n\
/* 08029c6c */ LDR R0, =D_03004afc \n\
/* 08029c6e */ LDRH R1, [R0] \n\
/* 08029c70 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08029c72 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08029c74 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029c76 */ BEQ branch_08029c7c \n\
/* 08029c78 */ BL func_080290c4 \n\
 \n\
branch_08029c7c: \n\
/* 08029c7c */ LDR R0, =D_030055d0 \n\
/* 08029c7e */ LDR R1, [R0] \n\
/* 08029c80 */ LDR R2, =0x0000057c \n\
/* 08029c82 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08029c84 */ LDR R0, [R1] \n\
/* 08029c86 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08029c88 */ STR R0, [R1] \n\
/* 08029c8a */ POP {R4, R5} \n\
/* 08029c8c */ POP {R0} \n\
/* 08029c8e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
