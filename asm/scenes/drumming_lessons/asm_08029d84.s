asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029d84 \n\
/* 08029d84 */ PUSH {R4, R5, LR} \n\
/* 08029d86 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08029d88 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08029d8a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08029d8c */ BL func_0800c3a4 \n\
/* 08029d90 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08029d92 */ BLS branch_08029df2 \n\
/* 08029d94 */ LDR R3, [R4] \n\
/* 08029d96 */ LSLS R0, R3, 0x1F \n\
/* 08029d98 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029d9a */ BNE branch_08029df2 \n\
/* 08029d9c */ LDR R0, =D_030055d0 \n\
/* 08029d9e */ LDR R1, [R0] \n\
/* 08029da0 */ LDR R2, =0x0000041c \n\
/* 08029da2 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08029da4 */ LDRH R0, [R0] \n\
/* 08029da6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029da8 */ BNE branch_08029dea \n\
/* 08029daa */ SUBS R2, 0x5B @ Subtract 0x5B from R2 \n\
/* 08029dac */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08029dae */ LDRB R0, [R0] \n\
/* 08029db0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029db2 */ BEQ branch_08029dd0 \n\
/* 08029db4 */ LDR R0, =D_089e2ba8 \n\
/* 08029db6 */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 08029db8 */ ANDS R3, R1 @ Set R3 to R3 & R1 \n\
/* 08029dba */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 08029dbc */ LDRH R0, [R0] \n\
/* 08029dbe */ BL func_080271a8 \n\
/* 08029dc2 */ B branch_08029dea \n\
\n\
.ltorg \n\
 \n\
branch_08029dd0: \n\
/* 08029dd0 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08029dd2 */ LSLS R2, R2, 0x2 \n\
/* 08029dd4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08029dd6 */ LDRB R0, [R0] \n\
/* 08029dd8 */ LDR R1, =D_089e2ba8 \n\
/* 08029dda */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 08029ddc */ ANDS R3, R2 @ Set R3 to R3 & R2 \n\
/* 08029dde */ ADDS R1, R3, R1 @ Set R1 to R3 + R1 \n\
/* 08029de0 */ LDRH R2, [R1] \n\
/* 08029de2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08029de4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029de6 */ BL func_080271d4 \n\
 \n\
branch_08029dea: \n\
/* 08029dea */ LDRB R0, [R4] \n\
/* 08029dec */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08029dee */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08029df0 */ STRB R0, [R4] \n\
 \n\
branch_08029df2: \n\
/* 08029df2 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08029df4 */ BL func_0800c3a4 \n\
/* 08029df8 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08029dfa */ BHI branch_08029e04 \n\
/* 08029dfc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08029dfe */ B branch_08029e06 \n\
\n\
.ltorg \n\
 \n\
branch_08029e04: \n\
/* 08029e04 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08029e06: \n\
/* 08029e06 */ POP {R4, R5} \n\
/* 08029e08 */ POP {R1} \n\
/* 08029e0a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
