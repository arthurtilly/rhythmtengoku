asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021e88 \n\
/* 08021e88 */ PUSH {R4, LR} \n\
/* 08021e8a */ SUB SP, 0xC \n\
/* 08021e8c */ LDR R3, =D_030055d0 \n\
/* 08021e8e */ LDR R2, [R3] \n\
/* 08021e90 */ ADDS R4, R2, 0x4 @ Set R4 to R2 + 0x4 \n\
/* 08021e92 */ LDRB R1, [R2, 0x4] \n\
/* 08021e94 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08021e96 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08021e98 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08021e9a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08021e9c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08021e9e */ STRB R0, [R2, 0x4] \n\
/* 08021ea0 */ LDR R0, [R3] \n\
/* 08021ea2 */ LDRB R0, [R0, 0x16] \n\
/* 08021ea4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08021ea6 */ BHI branch_08021ed0 \n\
/* 08021ea8 */ LDR R0, =D_03005380 \n\
/* 08021eaa */ LDR R0, [R0] \n\
/* 08021eac */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021eae */ LDRSH R1, [R4, R2] \n\
/* 08021eb0 */ LDR R2, =D_088acd54 \n\
/* 08021eb2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08021eb4 */ STR R3, [SP] \n\
/* 08021eb6 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08021eb8 */ STR R3, [SP, 0x4] \n\
/* 08021eba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021ebc */ STR R3, [SP, 0x8] \n\
/* 08021ebe */ BL func_0804d8f8 \n\
/* 08021ec2 */ B branch_08021eea \n\
\n\
.ltorg \n\
 \n\
branch_08021ed0: \n\
/* 08021ed0 */ LDR R0, =D_03005380 \n\
/* 08021ed2 */ LDR R0, [R0] \n\
/* 08021ed4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021ed6 */ LDRSH R1, [R4, R2] \n\
/* 08021ed8 */ LDR R2, =D_088acc94 \n\
/* 08021eda */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08021edc */ STR R3, [SP] \n\
/* 08021ede */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08021ee0 */ STR R3, [SP, 0x4] \n\
/* 08021ee2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021ee4 */ STR R3, [SP, 0x8] \n\
/* 08021ee6 */ BL func_0804d8f8 \n\
 \n\
branch_08021eea: \n\
/* 08021eea */ LDR R0, =D_08a9e084 \n\
/* 08021eec */ BL func_08002634 \n\
/* 08021ef0 */ ADD SP, 0xC \n\
/* 08021ef2 */ POP {R4} \n\
/* 08021ef4 */ POP {R0} \n\
/* 08021ef6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
