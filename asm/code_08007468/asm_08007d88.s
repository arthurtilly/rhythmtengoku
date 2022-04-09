asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007d88 \n\
/* 08007d88 */ PUSH {R4, LR} \n\
/* 08007d8a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007d8c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08007d8e */ BL mem_heap_alloc \n\
/* 08007d92 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08007d94 */ LDRB R1, [R4] \n\
/* 08007d96 */ LSLS R1, R1, 0x1E \n\
/* 08007d98 */ LSRS R1, R1, 0x1E \n\
/* 08007d9a */ LDRB R2, [R3] \n\
/* 08007d9c */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08007d9e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08007da0 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08007da2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007da4 */ STRB R0, [R3] \n\
/* 08007da6 */ LDR R2, [R4] \n\
/* 08007da8 */ LDR R0, =0x1fffc \n\
/* 08007daa */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08007dac */ LDR R0, [R3] \n\
/* 08007dae */ LDR R1, =0xfffe0003 \n\
/* 08007db0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007db2 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08007db4 */ STR R0, [R3] \n\
/* 08007db6 */ LDRH R1, [R3, 0x2] \n\
/* 08007db8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08007dba */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007dbc */ STRH R0, [R3, 0x2] \n\
/* 08007dbe */ LDR R2, [R4, 0x4] \n\
/* 08007dc0 */ STR R2, [R3, 0x4] \n\
/* 08007dc2 */ LDR R1, [R4, 0x8] \n\
/* 08007dc4 */ STR R1, [R3, 0x8] \n\
/* 08007dc6 */ LDR R0, [R4, 0xC] \n\
/* 08007dc8 */ STR R0, [R3, 0xC] \n\
/* 08007dca */ LDRB R0, [R3] \n\
/* 08007dcc */ LSLS R0, R0, 0x1E \n\
/* 08007dce */ LSRS R0, R0, 0x1E \n\
/* 08007dd0 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007dd2 */ BEQ branch_08007df2 \n\
/* 08007dd4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007dd6 */ BGT branch_08007de8 \n\
/* 08007dd8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007dda */ BEQ branch_08007dee \n\
/* 08007ddc */ B branch_08007df8 \n\
\n\
.ltorg \n\
 \n\
branch_08007de8: \n\
/* 08007de8 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08007dea */ BEQ branch_08007df6 \n\
/* 08007dec */ B branch_08007df8 \n\
 \n\
branch_08007dee: \n\
/* 08007dee */ STRB R1, [R2] \n\
/* 08007df0 */ B branch_08007df8 \n\
 \n\
branch_08007df2: \n\
/* 08007df2 */ STRH R1, [R2] \n\
/* 08007df4 */ B branch_08007df8 \n\
 \n\
branch_08007df6: \n\
/* 08007df6 */ STR R1, [R2] \n\
 \n\
branch_08007df8: \n\
/* 08007df8 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08007dfa */ POP {R4} \n\
/* 08007dfc */ POP {R1} \n\
/* 08007dfe */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
