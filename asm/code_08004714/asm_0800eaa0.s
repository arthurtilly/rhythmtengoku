asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800eaa0 \n\
/* 0800eaa0 */ PUSH {R4, R5, LR} \n\
/* 0800eaa2 */ LDR R5, =D_030053c0 \n\
/* 0800eaa4 */ LDRB R0, [R5, 0x1] \n\
/* 0800eaa6 */ LSLS R0, R0, 0x1A \n\
/* 0800eaa8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800eaaa */ BLT branch_0800eab8 \n\
/* 0800eaac */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800eaae */ LSLS R0, R0, 0x1 \n\
/* 0800eab0 */ B branch_0800eafe \n\
\n\
.ltorg \n\
 \n\
branch_0800eab8: \n\
/* 0800eab8 */ MOVS R1, 0xB8 @ Set R1 to 0xB8 \n\
/* 0800eaba */ LSLS R1, R1, 0x1 \n\
/* 0800eabc */ ADDS R0, R5, R1 @ Set R0 to R5 + R1 \n\
/* 0800eabe */ LDRH R4, [R0] \n\
/* 0800eac0 */ SUBS R1, 0x2 @ Subtract 0x2 from R1 \n\
/* 0800eac2 */ ADDS R0, R5, R1 @ Set R0 to R5 + R1 \n\
/* 0800eac4 */ LDRH R0, [R0] \n\
/* 0800eac6 */ BL func_0800c3a4 \n\
/* 0800eaca */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800eacc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800eace */ LSLS R0, R0, 0x9 \n\
/* 0800ead0 */ BL __divsi3 \n\
/* 0800ead4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800ead6 */ LDRB R0, [R5, 0x1] \n\
/* 0800ead8 */ LSLS R0, R0, 0x19 \n\
/* 0800eada */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800eadc */ BGE branch_0800eae2 \n\
/* 0800eade */ SUBS R4, R4, R1 @ Set R4 to R4 - R1 \n\
/* 0800eae0 */ B branch_0800eae4 \n\
 \n\
branch_0800eae2: \n\
/* 0800eae2 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
 \n\
branch_0800eae4: \n\
/* 0800eae4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800eae6 */ BGE branch_0800eaea \n\
/* 0800eae8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0800eaea: \n\
/* 0800eaea */ LDR R0, =0xffff \n\
/* 0800eaec */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0800eaee */ BLE branch_0800eaf2 \n\
/* 0800eaf0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_0800eaf2: \n\
/* 0800eaf2 */ LDR R0, =D_030053c0 \n\
/* 0800eaf4 */ MOVS R1, 0xB8 @ Set R1 to 0xB8 \n\
/* 0800eaf6 */ LSLS R1, R1, 0x1 \n\
/* 0800eaf8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800eafa */ STRH R4, [R0] \n\
/* 0800eafc */ ASRS R0, R4, 0x8 \n\
 \n\
branch_0800eafe: \n\
/* 0800eafe */ POP {R4, R5} \n\
/* 0800eb00 */ POP {R1} \n\
/* 0800eb02 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
