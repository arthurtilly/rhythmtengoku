asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007e00 \n\
/* 08007e00 */ PUSH {R4, R5, LR} \n\
/* 08007e02 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007e04 */ LDRH R0, [R4, 0x2] \n\
/* 08007e06 */ LSRS R1, R0, 0x1 \n\
/* 08007e08 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08007e0a */ LSLS R2, R1, 0x1 \n\
/* 08007e0c */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08007e0e */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08007e10 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 08007e12 */ ORRS R3, R2 @ Set R3 to R3 | R2 \n\
/* 08007e14 */ STRH R3, [R4, 0x2] \n\
/* 08007e16 */ LDR R0, =0x7fff \n\
/* 08007e18 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08007e1a */ LDR R0, [R4] \n\
/* 08007e1c */ LSLS R0, R0, 0xF \n\
/* 08007e1e */ LSRS R0, R0, 0x11 \n\
/* 08007e20 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08007e22 */ BCC branch_08007e5e \n\
/* 08007e24 */ ANDS R3, R5 @ Set R3 to R3 & R5 \n\
/* 08007e26 */ STRH R3, [R4, 0x2] \n\
/* 08007e28 */ LDR R1, [R4, 0x8] \n\
/* 08007e2a */ LDR R0, [R4, 0xC] \n\
/* 08007e2c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08007e2e */ STR R1, [R4, 0x8] \n\
/* 08007e30 */ LDRB R0, [R4] \n\
/* 08007e32 */ LSLS R0, R0, 0x1E \n\
/* 08007e34 */ LSRS R0, R0, 0x1E \n\
/* 08007e36 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007e38 */ BEQ branch_08007e54 \n\
/* 08007e3a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007e3c */ BGT branch_08007e48 \n\
/* 08007e3e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007e40 */ BEQ branch_08007e4e \n\
/* 08007e42 */ B branch_08007e5e \n\
\n\
.ltorg \n\
 \n\
branch_08007e48: \n\
/* 08007e48 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08007e4a */ BEQ branch_08007e5a \n\
/* 08007e4c */ B branch_08007e5e \n\
 \n\
branch_08007e4e: \n\
/* 08007e4e */ LDR R0, [R4, 0x4] \n\
/* 08007e50 */ STRB R1, [R0] \n\
/* 08007e52 */ B branch_08007e5e \n\
 \n\
branch_08007e54: \n\
/* 08007e54 */ LDR R0, [R4, 0x4] \n\
/* 08007e56 */ STRH R1, [R0] \n\
/* 08007e58 */ B branch_08007e5e \n\
 \n\
branch_08007e5a: \n\
/* 08007e5a */ LDR R0, [R4, 0x4] \n\
/* 08007e5c */ STR R1, [R0] \n\
 \n\
branch_08007e5e: \n\
/* 08007e5e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08007e60 */ POP {R4, R5} \n\
/* 08007e62 */ POP {R1} \n\
/* 08007e64 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
