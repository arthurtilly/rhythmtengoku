asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001cd8 \n\
/* 08001cd8 */ PUSH {R4, R5, LR} \n\
/* 08001cda */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08001cdc */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08001cde */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08001ce0 */ BEQ branch_08001d36 \n\
/* 08001ce2 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08001ce4 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08001ce6 */ LSLS R2, R1, 0x1 \n\
/* 08001ce8 */ LDRH R1, [R4] \n\
/* 08001cea */ LDR R0, =0xfffffe01 \n\
/* 08001cec */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001cee */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08001cf0 */ STRH R0, [R4] \n\
/* 08001cf2 */ LDR R0, [R4] \n\
/* 08001cf4 */ LDR R1, =0xfffe01ff \n\
/* 08001cf6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001cf8 */ STR R0, [R4] \n\
/* 08001cfa */ MOVS R0, 0x3F @ Set R0 to 0x3F \n\
/* 08001cfc */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 08001cfe */ LSLS R2, R5, 0x1 \n\
/* 08001d00 */ LDRB R1, [R4, 0x2] \n\
/* 08001d02 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08001d04 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08001d06 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001d08 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08001d0a */ STRB R0, [R4, 0x2] \n\
/* 08001d0c */ STR R3, [R4, 0x4] \n\
/* 08001d0e */ LDR R0, [SP, 0xC] \n\
/* 08001d10 */ STR R0, [R4, 0x8] \n\
/* 08001d12 */ LDR R0, [SP, 0x10] \n\
/* 08001d14 */ STR R0, [R4, 0xC] \n\
/* 08001d16 */ LDR R0, [SP, 0x14] \n\
/* 08001d18 */ STR R0, [R4, 0x10] \n\
/* 08001d1a */ LDRH R0, [R4, 0x2] \n\
/* 08001d1c */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08001d1e */ LSLS R2, R2, 0x1 \n\
/* 08001d20 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08001d22 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001d24 */ STRH R0, [R4, 0x2] \n\
/* 08001d26 */ LDRB R0, [R4] \n\
/* 08001d28 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08001d2a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001d2c */ STRB R0, [R4] \n\
/* 08001d2e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08001d30 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08001d32 */ BL func_08001b98 \n\
 \n\
branch_08001d36: \n\
/* 08001d36 */ POP {R4, R5} \n\
/* 08001d38 */ POP {R0} \n\
/* 08001d3a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
