asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007d20 \n\
/* 08007d20 */ PUSH {R4, R5, LR} \n\
/* 08007d22 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007d24 */ LDRH R0, [R4, 0x2] \n\
/* 08007d26 */ LSRS R1, R0, 0x1 \n\
/* 08007d28 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08007d2a */ LSLS R2, R1, 0x1 \n\
/* 08007d2c */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08007d2e */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08007d30 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 08007d32 */ ORRS R3, R2 @ Set R3 to R3 | R2 \n\
/* 08007d34 */ STRH R3, [R4, 0x2] \n\
/* 08007d36 */ LDR R0, =0x7fff \n\
/* 08007d38 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08007d3a */ LDR R0, [R4] \n\
/* 08007d3c */ LSLS R0, R0, 0xF \n\
/* 08007d3e */ LSRS R0, R0, 0x11 \n\
/* 08007d40 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08007d42 */ BCC branch_08007d7e \n\
/* 08007d44 */ ANDS R3, R5 @ Set R3 to R3 & R5 \n\
/* 08007d46 */ STRH R3, [R4, 0x2] \n\
/* 08007d48 */ LDR R1, [R4, 0xC] \n\
/* 08007d4a */ LDR R0, [R4, 0x8] \n\
/* 08007d4c */ STR R0, [R4, 0xC] \n\
/* 08007d4e */ STR R1, [R4, 0x8] \n\
/* 08007d50 */ LDRB R0, [R4] \n\
/* 08007d52 */ LSLS R0, R0, 0x1E \n\
/* 08007d54 */ LSRS R0, R0, 0x1E \n\
/* 08007d56 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007d58 */ BEQ branch_08007d74 \n\
/* 08007d5a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007d5c */ BGT branch_08007d68 \n\
/* 08007d5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007d60 */ BEQ branch_08007d6e \n\
/* 08007d62 */ B branch_08007d7e \n\
\n\
.ltorg \n\
 \n\
branch_08007d68: \n\
/* 08007d68 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08007d6a */ BEQ branch_08007d7a \n\
/* 08007d6c */ B branch_08007d7e \n\
 \n\
branch_08007d6e: \n\
/* 08007d6e */ LDR R0, [R4, 0x4] \n\
/* 08007d70 */ STRB R1, [R0] \n\
/* 08007d72 */ B branch_08007d7e \n\
 \n\
branch_08007d74: \n\
/* 08007d74 */ LDR R0, [R4, 0x4] \n\
/* 08007d76 */ STRH R1, [R0] \n\
/* 08007d78 */ B branch_08007d7e \n\
 \n\
branch_08007d7a: \n\
/* 08007d7a */ LDR R0, [R4, 0x4] \n\
/* 08007d7c */ STR R1, [R0] \n\
 \n\
branch_08007d7e: \n\
/* 08007d7e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08007d80 */ POP {R4, R5} \n\
/* 08007d82 */ POP {R1} \n\
/* 08007d84 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
