asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804cbcc \n\
/* 0804cbcc */ PUSH {R4-R7, LR} \n\
/* 0804cbce */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804cbd0 */ LDRH R5, [R4, 0x2] \n\
/* 0804cbd2 */ LDR R6, [R4, 0x8] \n\
/* 0804cbd4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804cbd6 */ CMP R3, R5 @ Check R3 - R5 \n\
/* 0804cbd8 */ BCS branch_0804cbfe \n\
/* 0804cbda */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804cbdc */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804cbde */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0804cbe0 */ MOVS R7, 0x41 @ Set R7 to 0x41 \n\
/* 0804cbe2 */ NEGS R7, R7 @ Set R7 to -R7 \n\
/* 0804cbe4 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
 \n\
branch_0804cbe6: \n\
/* 0804cbe6 */ LDRB R1, [R2] \n\
/* 0804cbe8 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0804cbea */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804cbec */ STRB R0, [R2] \n\
/* 0804cbee */ LDRB R1, [R2, 0x1] \n\
/* 0804cbf0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804cbf2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804cbf4 */ STRB R0, [R2, 0x1] \n\
/* 0804cbf6 */ ADDS R2, 0x3C @ Add 0x3C to R2 \n\
/* 0804cbf8 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804cbfa */ CMP R3, R5 @ Check R3 - R5 \n\
/* 0804cbfc */ BCC branch_0804cbe6 \n\
 \n\
branch_0804cbfe: \n\
/* 0804cbfe */ LDR R0, =0x0000ffff \n\
/* 0804cc00 */ STRH R0, [R4, 0xE] \n\
/* 0804cc02 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804cc04 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804cc06 */ STRH R0, [R4, 0xC] \n\
/* 0804cc08 */ STRH R0, [R6, 0x18] \n\
/* 0804cc0a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804cc0c */ STRH R0, [R6, 0x1A] \n\
/* 0804cc0e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0804cc10 */ SUBS R2, R5, 0x1 @ Set R2 to R5 - 0x1 \n\
/* 0804cc12 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 0804cc14 */ ADDS R5, 0x22 @ Add 0x22 to R5 \n\
/* 0804cc16 */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0804cc18 */ BCS branch_0804cc2e \n\
/* 0804cc1a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804cc1c */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
 \n\
branch_0804cc1e: \n\
/* 0804cc1e */ SUBS R0, R3, 0x1 @ Set R0 to R3 - 0x1 \n\
/* 0804cc20 */ STRH R0, [R1] \n\
/* 0804cc22 */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 0804cc24 */ STRH R0, [R1, 0x2] \n\
/* 0804cc26 */ ADDS R1, 0x3C @ Add 0x3C to R1 \n\
/* 0804cc28 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804cc2a */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0804cc2c */ BCC branch_0804cc1e \n\
 \n\
branch_0804cc2e: \n\
/* 0804cc2e */ LSLS R0, R3, 0x4 \n\
/* 0804cc30 */ SUBS R0, R0, R3 @ Set R0 to R0 - R3 \n\
/* 0804cc32 */ LSLS R0, R0, 0x2 \n\
/* 0804cc34 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0804cc36 */ SUBS R1, R3, 0x1 @ Set R1 to R3 - 0x1 \n\
/* 0804cc38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804cc3a */ STRH R1, [R0, 0x18] \n\
/* 0804cc3c */ LDR R1, =0x0000ffff \n\
/* 0804cc3e */ STRH R1, [R0, 0x1A] \n\
/* 0804cc40 */ STRH R2, [R4, 0x10] \n\
/* 0804cc42 */ STRH R3, [R4, 0x12] \n\
/* 0804cc44 */ STRH R2, [R4, 0x1A] \n\
/* 0804cc46 */ STRH R2, [R4, 0x14] \n\
/* 0804cc48 */ STRH R2, [R4, 0x16] \n\
/* 0804cc4a */ STRH R2, [R4, 0x18] \n\
/* 0804cc4c */ STRH R2, [R4, 0x1C] \n\
/* 0804cc4e */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0804cc50 */ STRH R0, [R4, 0x1E] \n\
/* 0804cc52 */ LDRB R1, [R5] \n\
/* 0804cc54 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0804cc56 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804cc58 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804cc5a */ STRB R0, [R5] \n\
/* 0804cc5c */ POP {R4-R7} \n\
/* 0804cc5e */ POP {R0} \n\
/* 0804cc60 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
