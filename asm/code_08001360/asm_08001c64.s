asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001c64 \n\
/* 08001c64 */ PUSH {R4, R5, LR} \n\
/* 08001c66 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08001c68 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08001c6a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08001c6c */ BEQ branch_08001cc6 \n\
/* 08001c6e */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08001c70 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08001c72 */ LSLS R2, R1, 0x1 \n\
/* 08001c74 */ LDRH R1, [R4] \n\
/* 08001c76 */ LDR R0, =0xfffffe01 \n\
/* 08001c78 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001c7a */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08001c7c */ STRH R0, [R4] \n\
/* 08001c7e */ LDR R0, [R4] \n\
/* 08001c80 */ LDR R1, =0xfffe01ff \n\
/* 08001c82 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001c84 */ STR R0, [R4] \n\
/* 08001c86 */ MOVS R0, 0x3F @ Set R0 to 0x3F \n\
/* 08001c88 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 08001c8a */ LSLS R2, R5, 0x1 \n\
/* 08001c8c */ LDRB R1, [R4, 0x2] \n\
/* 08001c8e */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08001c90 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08001c92 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001c94 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08001c96 */ STRB R0, [R4, 0x2] \n\
/* 08001c98 */ STR R3, [R4, 0x4] \n\
/* 08001c9a */ LDR R0, [SP, 0xC] \n\
/* 08001c9c */ STR R0, [R4, 0x8] \n\
/* 08001c9e */ LDR R0, [SP, 0x10] \n\
/* 08001ca0 */ STR R0, [R4, 0xC] \n\
/* 08001ca2 */ LDR R0, [SP, 0x14] \n\
/* 08001ca4 */ STR R0, [R4, 0x10] \n\
/* 08001ca6 */ LDRH R1, [R4, 0x2] \n\
/* 08001ca8 */ LDR R0, =0xfffffe7f \n\
/* 08001caa */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001cac */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08001cae */ LSLS R2, R2, 0x1 \n\
/* 08001cb0 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08001cb2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001cb4 */ STRH R0, [R4, 0x2] \n\
/* 08001cb6 */ LDRB R0, [R4] \n\
/* 08001cb8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08001cba */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001cbc */ STRB R0, [R4] \n\
/* 08001cbe */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08001cc0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08001cc2 */ BL func_08001b98 \n\
 \n\
branch_08001cc6: \n\
/* 08001cc6 */ POP {R4, R5} \n\
/* 08001cc8 */ POP {R0} \n\
/* 08001cca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
