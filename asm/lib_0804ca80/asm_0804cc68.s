asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804cc68 \n\
/* 0804cc68 */ PUSH {LR} \n\
/* 0804cc6a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804cc6c */ LSLS R1, R1, 0x10 \n\
/* 0804cc6e */ ASRS R2, R1, 0x10 \n\
/* 0804cc70 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804cc72 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804cc74 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804cc76 */ BNE branch_0804cc7c \n\
 \n\
branch_0804cc78: \n\
/* 0804cc78 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804cc7a */ B branch_0804cd16 \n\
 \n\
branch_0804cc7c: \n\
/* 0804cc7c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804cc7e */ BGE branch_0804cca8 \n\
/* 0804cc80 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804cc82 */ ADDS R2, 0x22 @ Add 0x22 to R2 \n\
/* 0804cc84 */ LDRB R1, [R2] \n\
/* 0804cc86 */ LSLS R0, R1, 0x1C \n\
/* 0804cc88 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804cc8a */ BNE branch_0804cc78 \n\
/* 0804cc8c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0804cc8e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804cc90 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804cc92 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804cc94 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804cc96 */ STRB R0, [R2] \n\
/* 0804cc98 */ LDRH R0, [R3, 0x1C] \n\
/* 0804cc9a */ STRH R0, [R3, 0x24] \n\
/* 0804cc9c */ LDR R0, =D_03004428 \n\
/* 0804cc9e */ LDRB R0, [R0] \n\
/* 0804cca0 */ STRH R0, [R3, 0x26] \n\
/* 0804cca2 */ B branch_0804cc78 \n\
\n\
.ltorg \n\
 \n\
branch_0804cca8: \n\
/* 0804cca8 */ LDRH R0, [R3, 0x2] \n\
/* 0804ccaa */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804ccac */ BLT branch_0804ccd8 \n\
/* 0804ccae */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804ccb0 */ ADDS R2, 0x22 @ Add 0x22 to R2 \n\
/* 0804ccb2 */ LDRB R1, [R2] \n\
/* 0804ccb4 */ LSLS R0, R1, 0x1C \n\
/* 0804ccb6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ccb8 */ BNE branch_0804cc78 \n\
/* 0804ccba */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0804ccbc */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804ccbe */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804ccc0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804ccc2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804ccc4 */ STRB R0, [R2] \n\
/* 0804ccc6 */ LDRH R0, [R3, 0x1C] \n\
/* 0804ccc8 */ STRH R0, [R3, 0x24] \n\
/* 0804ccca */ LDR R0, =D_03004428 \n\
/* 0804cccc */ LDRB R0, [R0] \n\
/* 0804ccce */ STRH R0, [R3, 0x26] \n\
/* 0804ccd0 */ B branch_0804cc78 \n\
\n\
.ltorg \n\
 \n\
branch_0804ccd8: \n\
/* 0804ccd8 */ LDR R1, [R3, 0x8] \n\
/* 0804ccda */ LSLS R0, R2, 0x4 \n\
/* 0804ccdc */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0804ccde */ LSLS R0, R0, 0x2 \n\
/* 0804cce0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804cce2 */ LDRB R1, [R0, 0x1] \n\
/* 0804cce4 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0804cce6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804cce8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ccea */ BNE branch_0804cd14 \n\
/* 0804ccec */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804ccee */ ADDS R2, 0x22 @ Add 0x22 to R2 \n\
/* 0804ccf0 */ LDRB R1, [R2] \n\
/* 0804ccf2 */ LSLS R0, R1, 0x1C \n\
/* 0804ccf4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ccf6 */ BNE branch_0804cc78 \n\
/* 0804ccf8 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0804ccfa */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804ccfc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804ccfe */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0804cd00 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804cd02 */ STRB R0, [R2] \n\
/* 0804cd04 */ LDRH R0, [R3, 0x1C] \n\
/* 0804cd06 */ STRH R0, [R3, 0x24] \n\
/* 0804cd08 */ LDR R0, =D_03004428 \n\
/* 0804cd0a */ LDRB R0, [R0] \n\
/* 0804cd0c */ STRH R0, [R3, 0x26] \n\
/* 0804cd0e */ B branch_0804cc78 \n\
\n\
.ltorg \n\
 \n\
branch_0804cd14: \n\
/* 0804cd14 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0804cd16: \n\
/* 0804cd16 */ POP {R1} \n\
/* 0804cd18 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
