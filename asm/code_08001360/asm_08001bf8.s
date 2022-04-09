asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001bf8 \n\
/* 08001bf8 */ PUSH {R4, R5, LR} \n\
/* 08001bfa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08001bfc */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08001bfe */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08001c00 */ BEQ branch_08001c52 \n\
/* 08001c02 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08001c04 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08001c06 */ LSLS R2, R1, 0x1 \n\
/* 08001c08 */ LDRH R1, [R4] \n\
/* 08001c0a */ LDR R0, =0xfffffe01 \n\
/* 08001c0c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001c0e */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08001c10 */ STRH R0, [R4] \n\
/* 08001c12 */ LDR R0, [R4] \n\
/* 08001c14 */ LDR R1, =0xfffe01ff \n\
/* 08001c16 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001c18 */ STR R0, [R4] \n\
/* 08001c1a */ MOVS R0, 0x3F @ Set R0 to 0x3F \n\
/* 08001c1c */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 08001c1e */ LSLS R2, R5, 0x1 \n\
/* 08001c20 */ LDRB R1, [R4, 0x2] \n\
/* 08001c22 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08001c24 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08001c26 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001c28 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08001c2a */ STRB R0, [R4, 0x2] \n\
/* 08001c2c */ STR R3, [R4, 0x4] \n\
/* 08001c2e */ LDR R0, [SP, 0xC] \n\
/* 08001c30 */ STR R0, [R4, 0x8] \n\
/* 08001c32 */ LDR R0, [SP, 0x10] \n\
/* 08001c34 */ STR R0, [R4, 0xC] \n\
/* 08001c36 */ LDR R0, [SP, 0x14] \n\
/* 08001c38 */ STR R0, [R4, 0x10] \n\
/* 08001c3a */ LDRH R1, [R4, 0x2] \n\
/* 08001c3c */ LDR R0, =0xfffffe7f \n\
/* 08001c3e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001c40 */ STRH R0, [R4, 0x2] \n\
/* 08001c42 */ LDRB R0, [R4] \n\
/* 08001c44 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08001c46 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001c48 */ STRB R0, [R4] \n\
/* 08001c4a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08001c4c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08001c4e */ BL func_08001b98 \n\
 \n\
branch_08001c52: \n\
/* 08001c52 */ POP {R4, R5} \n\
/* 08001c54 */ POP {R0} \n\
/* 08001c56 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
