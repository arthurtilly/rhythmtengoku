asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007e7c \n\
/* 08007e7c */ PUSH {R4, LR} \n\
/* 08007e7e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007e80 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08007e82 */ BL mem_heap_alloc \n\
/* 08007e86 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08007e88 */ LDRB R1, [R4] \n\
/* 08007e8a */ LSLS R1, R1, 0x1E \n\
/* 08007e8c */ LSRS R1, R1, 0x1E \n\
/* 08007e8e */ LDRB R2, [R3] \n\
/* 08007e90 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08007e92 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08007e94 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08007e96 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007e98 */ STRB R0, [R3] \n\
/* 08007e9a */ LDR R1, [R4] \n\
/* 08007e9c */ LSRS R1, R1, 0x2 \n\
/* 08007e9e */ LSLS R1, R1, 0x2 \n\
/* 08007ea0 */ LDR R0, [R3] \n\
/* 08007ea2 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08007ea4 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08007ea6 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007ea8 */ STR R0, [R3] \n\
/* 08007eaa */ LDR R1, [R4, 0x4] \n\
/* 08007eac */ STR R1, [R3, 0x4] \n\
/* 08007eae */ LDR R2, [R4, 0x8] \n\
/* 08007eb0 */ STR R2, [R3, 0x8] \n\
/* 08007eb2 */ LDR R4, [R4, 0xC] \n\
/* 08007eb4 */ STR R4, [R3, 0xC] \n\
/* 08007eb6 */ LDR R1, =gSineTable \n\
/* 08007eb8 */ LSLS R0, R0, 0xB \n\
/* 08007eba */ LSRS R0, R0, 0x15 \n\
/* 08007ebc */ LSLS R0, R0, 0x1 \n\
/* 08007ebe */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08007ec0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08007ec2 */ LDRSH R0, [R0, R1] \n\
/* 08007ec4 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08007ec6 */ ASRS R1, R0, 0x8 \n\
/* 08007ec8 */ LDRB R0, [R3] \n\
/* 08007eca */ LSLS R0, R0, 0x1E \n\
/* 08007ecc */ LSRS R0, R0, 0x1E \n\
/* 08007ece */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007ed0 */ BEQ branch_08007eea \n\
/* 08007ed2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007ed4 */ BGT branch_08007ee0 \n\
/* 08007ed6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007ed8 */ BEQ branch_08007ee6 \n\
/* 08007eda */ B branch_08007ef0 \n\
\n\
.ltorg \n\
 \n\
branch_08007ee0: \n\
/* 08007ee0 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08007ee2 */ BEQ branch_08007eee \n\
/* 08007ee4 */ B branch_08007ef0 \n\
 \n\
branch_08007ee6: \n\
/* 08007ee6 */ STRB R1, [R4] \n\
/* 08007ee8 */ B branch_08007ef0 \n\
 \n\
branch_08007eea: \n\
/* 08007eea */ STRH R1, [R4] \n\
/* 08007eec */ B branch_08007ef0 \n\
 \n\
branch_08007eee: \n\
/* 08007eee */ STR R1, [R4] \n\
 \n\
branch_08007ef0: \n\
/* 08007ef0 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08007ef2 */ POP {R4} \n\
/* 08007ef4 */ POP {R1} \n\
/* 08007ef6 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
