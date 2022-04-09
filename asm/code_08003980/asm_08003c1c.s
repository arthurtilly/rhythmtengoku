asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003c1c \n\
/* 08003c1c */ PUSH {R4-R7, LR} \n\
/* 08003c1e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08003c20 */ PUSH {R7} \n\
/* 08003c22 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08003c24 */ LDRB R1, [R4] \n\
/* 08003c26 */ LSLS R0, R1, 0x1F \n\
/* 08003c28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003c2a */ BNE branch_08003c2e \n\
/* 08003c2c */ B branch_08003dd6 \n\
 \n\
branch_08003c2e: \n\
/* 08003c2e */ LSLS R0, R1, 0x1D \n\
/* 08003c30 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003c32 */ BGE branch_08003c36 \n\
/* 08003c34 */ B branch_08003dd6 \n\
 \n\
branch_08003c36: \n\
/* 08003c36 */ LDRB R0, [R4, 0x3] \n\
/* 08003c38 */ LSRS R0, R0, 0x6 \n\
/* 08003c3a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003c3c */ BEQ branch_08003c40 \n\
/* 08003c3e */ B branch_08003dd6 \n\
 \n\
branch_08003c40: \n\
/* 08003c40 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08003c42 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08003c44 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08003c46 */ LDRSH R1, [R4, R0] \n\
/* 08003c48 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08003c4a */ LDRSH R0, [R4, R2] \n\
/* 08003c4c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08003c4e */ BLT branch_08003c52 \n\
/* 08003c50 */ B branch_08003dc2 \n\
 \n\
branch_08003c52: \n\
/* 08003c52 */ LDR R0, [R4, 0xC] \n\
/* 08003c54 */ LDMIA R0!, {R1} \n\
/* 08003c56 */ STR R0, [R4, 0xC] \n\
/* 08003c58 */ LSRS R0, R1, 0x1C \n\
/* 08003c5a */ LDR R5, =0x0fffffff \n\
/* 08003c5c */ ANDS R5, R1 @ Set R5 to R5 & R1 \n\
/* 08003c5e */ CMP R0, 0xA @ Compare R0 and 0xA \n\
/* 08003c60 */ BLS branch_08003c64 \n\
/* 08003c62 */ B branch_08003db0 \n\
 \n\
branch_08003c64: \n\
/* 08003c64 */ LSLS R0, R0, 0x2 \n\
/* 08003c66 */ LDR R1, =jtbl_08003c78 \n\
/* 08003c68 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08003c6a */ LDR R0, [R0] \n\
/* 08003c6c */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08003c78: \n\
.word jump_08003ca4 \n\
.word jump_08003cd2 \n\
.word jump_08003ce0 \n\
.word jump_08003cec \n\
.word jump_08003cf0 \n\
.word jump_08003ce8 \n\
.word jump_08003cfe \n\
.word jump_08003d24 \n\
.word branch_08003db0 \n\
.word jump_08003d28 \n\
.word jump_08003d8c \n\
\n\
jump_08003ca4: \n\
/* 08003ca4 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08003ca6 */ BEQ branch_08003cc8 \n\
/* 08003ca8 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 08003caa */ BNE branch_08003cb0 \n\
/* 08003cac */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08003cae */ B branch_08003cc8 \n\
 \n\
branch_08003cb0: \n\
/* 08003cb0 */ LDRB R1, [R4] \n\
/* 08003cb2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08003cb4 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08003cb6 */ STR R5, [R4, 0x14] \n\
/* 08003cb8 */ MOVS R0, 0x19 @ Set R0 to 0x19 \n\
/* 08003cba */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08003cbc */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08003cbe */ STRB R1, [R4] \n\
/* 08003cc0 */ LDRH R0, [R4, 0x4] \n\
/* 08003cc2 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08003cc4 */ STRH R0, [R4, 0x4] \n\
/* 08003cc6 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08003cc8: \n\
/* 08003cc8 */ LDRH R0, [R4, 0x12] \n\
/* 08003cca */ LDRH R1, [R4, 0x10] \n\
/* 08003ccc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08003cce */ STRH R0, [R4, 0x10] \n\
/* 08003cd0 */ B branch_08003db0 \n\
\n\
jump_08003cd2: \n\
/* 08003cd2 */ STR R5, [R4, 0xC] \n\
/* 08003cd4 */ STR R5, [R4, 0x8] \n\
/* 08003cd6 */ LDR R0, =0xffff \n\
/* 08003cd8 */ STRH R0, [R4, 0x4] \n\
/* 08003cda */ B branch_08003db0 \n\
\n\
.ltorg \n\
\n\
jump_08003ce0: \n\
/* 08003ce0 */ LDR R0, [R4, 0x20] \n\
/* 08003ce2 */ BL _call_via_r5 \n\
/* 08003ce6 */ B branch_08003db0 \n\
\n\
jump_08003ce8: \n\
/* 08003ce8 */ STR R5, [R4, 0x20] \n\
/* 08003cea */ B branch_08003db0 \n\
\n\
jump_08003cec: \n\
/* 08003cec */ STRH R5, [R4, 0x12] \n\
/* 08003cee */ B branch_08003db0 \n\
\n\
jump_08003cf0: \n\
/* 08003cf0 */ LDRB R0, [R4, 0x3] \n\
/* 08003cf2 */ MOVS R1, 0x3F @ Set R1 to 0x3F \n\
/* 08003cf4 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08003cf6 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08003cf8 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08003cfa */ STRB R1, [R4, 0x3] \n\
/* 08003cfc */ B branch_08003dd6 \n\
\n\
jump_08003cfe: \n\
/* 08003cfe */ LDRB R0, [R4] \n\
/* 08003d00 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08003d02 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003d04 */ STR R5, [R4, 0x14] \n\
/* 08003d06 */ MOVS R1, 0x19 @ Set R1 to 0x19 \n\
/* 08003d08 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08003d0a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003d0c */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08003d0e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003d10 */ STRB R0, [R4] \n\
/* 08003d12 */ LDRH R0, [R4, 0x4] \n\
/* 08003d14 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08003d16 */ STRH R0, [R4, 0x4] \n\
/* 08003d18 */ LDRH R0, [R4, 0x12] \n\
/* 08003d1a */ LDRH R2, [R4, 0x10] \n\
/* 08003d1c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08003d1e */ STRH R0, [R4, 0x10] \n\
/* 08003d20 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08003d22 */ B branch_08003db0 \n\
\n\
jump_08003d24: \n\
/* 08003d24 */ STR R5, [R4, 0x18] \n\
/* 08003d26 */ B branch_08003db0 \n\
\n\
jump_08003d28: \n\
/* 08003d28 */ MOVS R3, 0x1F @ Set R3 to 0x1F \n\
/* 08003d2a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08003d2c */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08003d2e */ LSLS R1, R1, 0x5 \n\
/* 08003d30 */ LDRH R2, [R4] \n\
/* 08003d32 */ LDR R0, =0xfffffc1f \n\
/* 08003d34 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08003d36 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003d38 */ STRH R0, [R4] \n\
/* 08003d3a */ LSRS R1, R5, 0x5 \n\
/* 08003d3c */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08003d3e */ LSLS R1, R1, 0x2 \n\
/* 08003d40 */ LDRB R2, [R4, 0x1] \n\
/* 08003d42 */ MOVS R0, 0x7D @ Set R0 to 0x7D \n\
/* 08003d44 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08003d46 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08003d48 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003d4a */ STRB R0, [R4, 0x1] \n\
/* 08003d4c */ LSRS R2, R5, 0xA \n\
/* 08003d4e */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 08003d50 */ LSLS R2, R2, 0xF \n\
/* 08003d52 */ LDR R0, [R4] \n\
/* 08003d54 */ LDR R1, =0xfff07fff \n\
/* 08003d56 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003d58 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08003d5a */ STR R0, [R4] \n\
/* 08003d5c */ LSRS R1, R5, 0xF \n\
/* 08003d5e */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08003d60 */ LSLS R1, R1, 0x4 \n\
/* 08003d62 */ LDRH R2, [R4, 0x2] \n\
/* 08003d64 */ LDR R0, =0xfffffe0f \n\
/* 08003d66 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08003d68 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003d6a */ STRH R0, [R4, 0x2] \n\
/* 08003d6c */ LSRS R1, R5, 0x14 \n\
/* 08003d6e */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08003d70 */ LSLS R1, R1, 0x1 \n\
/* 08003d72 */ LDRB R2, [R4, 0x3] \n\
/* 08003d74 */ MOVS R0, 0x3F @ Set R0 to 0x3F \n\
/* 08003d76 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08003d78 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08003d7a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003d7c */ STRB R0, [R4, 0x3] \n\
/* 08003d7e */ B branch_08003db0 \n\
\n\
.ltorg \n\
\n\
jump_08003d8c: \n\
/* 08003d8c */ LDRB R0, [R4] \n\
/* 08003d8e */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08003d90 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003d92 */ MOVS R1, 0x19 @ Set R1 to 0x19 \n\
/* 08003d94 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08003d96 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003d98 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08003d9a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003d9c */ STRB R0, [R4] \n\
/* 08003d9e */ LDRH R0, [R4, 0x4] \n\
/* 08003da0 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08003da2 */ STRH R0, [R4, 0x4] \n\
/* 08003da4 */ LDRH R0, [R4, 0x12] \n\
/* 08003da6 */ LDRH R1, [R4, 0x10] \n\
/* 08003da8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08003daa */ STRH R0, [R4, 0x10] \n\
/* 08003dac */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08003dae */ MOV R8, R5 @ Set R8 to R5 \n\
 \n\
branch_08003db0: \n\
/* 08003db0 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08003db2 */ LDRSH R1, [R4, R2] \n\
/* 08003db4 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08003db6 */ LDRSH R0, [R4, R2] \n\
/* 08003db8 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08003dba */ BGE branch_08003dc2 \n\
/* 08003dbc */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08003dbe */ BNE branch_08003dc2 \n\
/* 08003dc0 */ B branch_08003c52 \n\
 \n\
branch_08003dc2: \n\
/* 08003dc2 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08003dc4 */ BEQ branch_08003dce \n\
/* 08003dc6 */ LDR R1, [R4, 0x24] \n\
/* 08003dc8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08003dca */ BL func_08003eb8 \n\
 \n\
branch_08003dce: \n\
/* 08003dce */ LDRH R0, [R4, 0x10] \n\
/* 08003dd0 */ LDRH R1, [R4, 0x6] \n\
/* 08003dd2 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08003dd4 */ STRH R0, [R4, 0x10] \n\
 \n\
branch_08003dd6: \n\
/* 08003dd6 */ POP {R3} \n\
/* 08003dd8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08003dda */ POP {R4-R7} \n\
/* 08003ddc */ POP {R0} \n\
/* 08003dde */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
