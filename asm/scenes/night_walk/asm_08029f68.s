asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029f68 \n\
/* 08029f68 */ PUSH {R4-R6, LR} \n\
/* 08029f6a */ SUB SP, 0xC \n\
/* 08029f6c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08029f6e */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08029f70 */ LDR R0, =D_030055d0 \n\
/* 08029f72 */ LDR R0, [R0] \n\
/* 08029f74 */ MOVS R1, 0xD6 @ Set R1 to 0xD6 \n\
/* 08029f76 */ LSLS R1, R1, 0x2 \n\
/* 08029f78 */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 08029f7a */ ADDS R1, 0x60 @ Add 0x60 to R1 \n\
/* 08029f7c */ ADDS R3, R0, R1 @ Set R3 to R0 + R1 \n\
/* 08029f7e */ LDRB R1, [R5] \n\
/* 08029f80 */ LSLS R0, R1, 0x1C \n\
/* 08029f82 */ LSRS R0, R0, 0x1C \n\
/* 08029f84 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08029f86 */ BNE branch_08029f94 \n\
/* 08029f88 */ LSLS R0, R1, 0x1B \n\
/* 08029f8a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029f8c */ BGE branch_08029f94 \n\
/* 08029f8e */ LDRH R0, [R3, 0x8] \n\
/* 08029f90 */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 08029f92 */ STRH R0, [R3, 0x8] \n\
 \n\
branch_08029f94: \n\
/* 08029f94 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08029f96 */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 08029f98 */ LSLS R2, R2, 0x4 \n\
/* 08029f9a */ LDRB R1, [R5] \n\
/* 08029f9c */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 08029f9e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08029fa0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08029fa2 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08029fa4 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08029fa6 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08029fa8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08029faa */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 08029fac */ STRB R0, [R5] \n\
/* 08029fae */ LDR R0, =D_03005380 \n\
/* 08029fb0 */ LDR R0, [R0] \n\
/* 08029fb2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08029fb4 */ LDRSH R1, [R5, R2] \n\
/* 08029fb6 */ LDR R2, =D_088c9a98 \n\
/* 08029fb8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08029fba */ STR R4, [SP] \n\
/* 08029fbc */ STR R4, [SP, 0x4] \n\
/* 08029fbe */ STR R4, [SP, 0x8] \n\
/* 08029fc0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029fc2 */ BL func_0804d8f8 \n\
/* 08029fc6 */ STR R4, [R5, 0x8] \n\
/* 08029fc8 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 08029fca */ BL func_0800c3a4 \n\
/* 08029fce */ SUBS R0, R0, R6 @ Set R0 to R0 - R6 \n\
/* 08029fd0 */ STR R0, [R5, 0xC] \n\
/* 08029fd2 */ ADD SP, 0xC \n\
/* 08029fd4 */ POP {R4-R6} \n\
/* 08029fd6 */ POP {R0} \n\
/* 08029fd8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
