asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027dfc \n\
/* 08027dfc */ PUSH {R4, LR} \n\
/* 08027dfe */ LDR R4, =D_030055d0 \n\
/* 08027e00 */ LDR R2, [R4] \n\
/* 08027e02 */ LDR R0, =0x0000041c \n\
/* 08027e04 */ ADDS R3, R2, R0 @ Set R3 to R2 + R0 \n\
/* 08027e06 */ LDRH R0, [R3] \n\
/* 08027e08 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027e0a */ BEQ branch_08027e70 \n\
/* 08027e0c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08027e0e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08027e10 */ STRH R0, [R3] \n\
/* 08027e12 */ MOVS R3, 0x84 @ Set R3 to 0x84 \n\
/* 08027e14 */ LSLS R3, R3, 0x3 \n\
/* 08027e16 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08027e18 */ STR R1, [R0] \n\
/* 08027e1a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08027e1c */ LSLS R0, R0, 0x1 \n\
/* 08027e1e */ BL func_0800c128 \n\
/* 08027e22 */ LDR R1, [R4] \n\
/* 08027e24 */ LDR R2, =0x0000041c \n\
/* 08027e26 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08027e28 */ LDRH R0, [R0] \n\
/* 08027e2a */ CMP R0, 0x1E @ Compare R0 and 0x1E \n\
/* 08027e2c */ BNE branch_08027e3e \n\
/* 08027e2e */ LDR R3, =0x00000427 \n\
/* 08027e30 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08027e32 */ LDRB R0, [R0] \n\
/* 08027e34 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027e36 */ BNE branch_08027e3e \n\
/* 08027e38 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08027e3a */ BL func_080271f0 \n\
 \n\
branch_08027e3e: \n\
/* 08027e3e */ LDR R0, =D_030055d0 \n\
/* 08027e40 */ LDR R0, [R0] \n\
/* 08027e42 */ LDR R2, =0x0000045a \n\
/* 08027e44 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08027e46 */ LDRH R0, [R1] \n\
/* 08027e48 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027e4a */ BEQ branch_08027ea2 \n\
/* 08027e4c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08027e4e */ STRH R0, [R1] \n\
/* 08027e50 */ LSLS R0, R0, 0x10 \n\
/* 08027e52 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027e54 */ BNE branch_08027ea2 \n\
/* 08027e56 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08027e58 */ BL func_080271f0 \n\
/* 08027e5c */ B branch_08027ea2 \n\
\n\
.ltorg \n\
 \n\
branch_08027e70: \n\
/* 08027e70 */ MOVS R3, 0x84 @ Set R3 to 0x84 \n\
/* 08027e72 */ LSLS R3, R3, 0x3 \n\
/* 08027e74 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08027e76 */ LDR R0, [R1] \n\
/* 08027e78 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08027e7a */ LSLS R2, R2, 0x4 \n\
/* 08027e7c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08027e7e */ STR R0, [R1] \n\
/* 08027e80 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08027e82 */ LSLS R2, R2, 0x7 \n\
/* 08027e84 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 08027e86 */ BLS branch_08027e8a \n\
/* 08027e88 */ STR R2, [R1] \n\
 \n\
branch_08027e8a: \n\
/* 08027e8a */ LDR R0, [R4] \n\
/* 08027e8c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08027e8e */ LDR R4, [R0] \n\
/* 08027e90 */ LSRS R4, R4, 0x8 \n\
/* 08027e92 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08027e94 */ BL func_0802b03c \n\
/* 08027e98 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08027e9a */ LSLS R0, R0, 0x1 \n\
/* 08027e9c */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 08027e9e */ BL func_0800c128 \n\
 \n\
branch_08027ea2: \n\
/* 08027ea2 */ LDR R0, =D_030055d0 \n\
/* 08027ea4 */ LDR R1, [R0] \n\
/* 08027ea6 */ LDR R3, =0x00000427 \n\
/* 08027ea8 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08027eaa */ LDRB R0, [R0] \n\
/* 08027eac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027eae */ BEQ branch_08027ebe \n\
/* 08027eb0 */ LDR R0, =0x00000426 \n\
/* 08027eb2 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08027eb4 */ LDRB R0, [R1] \n\
/* 08027eb6 */ CMP R0, 0x3F @ Compare R0 and 0x3F \n\
/* 08027eb8 */ BHI branch_08027ebe \n\
/* 08027eba */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08027ebc */ STRB R0, [R1] \n\
 \n\
branch_08027ebe: \n\
/* 08027ebe */ BL func_080278e8 \n\
/* 08027ec2 */ LDR R4, =D_030055d0 \n\
/* 08027ec4 */ LDR R0, [R4] \n\
/* 08027ec6 */ MOVS R1, 0x85 @ Set R1 to 0x85 \n\
/* 08027ec8 */ LSLS R1, R1, 0x3 \n\
/* 08027eca */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027ecc */ LDR R0, [R0] \n\
/* 08027ece */ BL func_0800a914 \n\
/* 08027ed2 */ LDR R0, [R4] \n\
/* 08027ed4 */ LDR R3, =0x0000045c \n\
/* 08027ed6 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 08027ed8 */ LDRB R0, [R2] \n\
/* 08027eda */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027edc */ BEQ branch_08027efa \n\
/* 08027ede */ LDR R0, =0x03004afc \n\
/* 08027ee0 */ LDRH R1, [R0] \n\
/* 08027ee2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08027ee4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08027ee6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027ee8 */ BEQ branch_08027efa \n\
/* 08027eea */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08027eec */ STRB R0, [R2] \n\
/* 08027eee */ LDR R0, =0x08a9db84 \n\
/* 08027ef0 */ BL func_08002634 \n\
/* 08027ef4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08027ef6 */ BL func_0800bd04 \n\
 \n\
branch_08027efa: \n\
/* 08027efa */ BL func_08027d08 \n\
/* 08027efe */ POP {R4} \n\
/* 08027f00 */ POP {R0} \n\
/* 08027f02 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
