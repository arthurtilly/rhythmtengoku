asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043e78 \n\
/* 08043e78 */ PUSH {R4-R6, LR} \n\
/* 08043e7a */ SUB SP, 0x1C \n\
/* 08043e7c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08043e7e */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08043e80 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08043e82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043e84 */ BEQ branch_08043e98 \n\
/* 08043e86 */ MOVS R6, 0x68 @ Set R6 to 0x68 \n\
/* 08043e88 */ MOVS R4, 0x10 @ Set R4 to 0x10 \n\
/* 08043e8a */ LDR R5, =0xfffffe00 \n\
/* 08043e8c */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08043e8e */ BL func_08043124 \n\
/* 08043e92 */ B branch_08043edc \n\
\n\
.ltorg \n\
 \n\
branch_08043e98: \n\
/* 08043e98 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043e9a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08043e9c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043e9e */ BEQ branch_08043eb0 \n\
/* 08043ea0 */ MOVS R6, 0x68 @ Set R6 to 0x68 \n\
/* 08043ea2 */ MOVS R4, 0x68 @ Set R4 to 0x68 \n\
/* 08043ea4 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08043ea6 */ LSLS R5, R5, 0x2 \n\
/* 08043ea8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043eaa */ BL func_08043124 \n\
/* 08043eae */ B branch_08043edc \n\
 \n\
branch_08043eb0: \n\
/* 08043eb0 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08043eb2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08043eb4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043eb6 */ BEQ branch_08043ec8 \n\
/* 08043eb8 */ MOVS R6, 0x20 @ Set R6 to 0x20 \n\
/* 08043eba */ MOVS R4, 0x3C @ Set R4 to 0x3C \n\
/* 08043ebc */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08043ebe */ LSLS R5, R5, 0x3 \n\
/* 08043ec0 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08043ec2 */ BL func_08043124 \n\
/* 08043ec6 */ B branch_08043edc \n\
 \n\
branch_08043ec8: \n\
/* 08043ec8 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08043eca */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08043ecc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043ece */ BEQ branch_08043edc \n\
/* 08043ed0 */ MOVS R6, 0xB0 @ Set R6 to 0xB0 \n\
/* 08043ed2 */ MOVS R4, 0x3C @ Set R4 to 0x3C \n\
/* 08043ed4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08043ed6 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08043ed8 */ BL func_08043124 \n\
 \n\
branch_08043edc: \n\
/* 08043edc */ LDR R0, =D_08931ad4 \n\
/* 08043ede */ LSLS R2, R6, 0x10 \n\
/* 08043ee0 */ ASRS R2, R2, 0x10 \n\
/* 08043ee2 */ LSLS R3, R4, 0x10 \n\
/* 08043ee4 */ ASRS R3, R3, 0x10 \n\
/* 08043ee6 */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 08043ee8 */ LSLS R1, R1, 0x8 \n\
/* 08043eea */ STR R1, [SP] \n\
/* 08043eec */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08043eee */ LSLS R1, R1, 0x1 \n\
/* 08043ef0 */ STR R1, [SP, 0x4] \n\
/* 08043ef2 */ LSLS R1, R5, 0x10 \n\
/* 08043ef4 */ ASRS R1, R1, 0x10 \n\
/* 08043ef6 */ STR R1, [SP, 0x8] \n\
/* 08043ef8 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08043efa */ STR R4, [SP, 0xC] \n\
/* 08043efc */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08043efe */ STR R1, [SP, 0x10] \n\
/* 08043f00 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08043f02 */ STR R1, [SP, 0x14] \n\
/* 08043f04 */ STR R4, [SP, 0x18] \n\
/* 08043f06 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043f08 */ BL func_0800fa6c \n\
/* 08043f0c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08043f0e */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08043f10 */ BEQ branch_08043f18 \n\
/* 08043f12 */ LDR R1, =func_08043a2c \n\
/* 08043f14 */ BL func_08010238 \n\
 \n\
branch_08043f18: \n\
/* 08043f18 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08043f1a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08043f1c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043f1e */ BL func_08017928 \n\
/* 08043f22 */ LDR R0, =s_virus_fork_seqData \n\
/* 08043f24 */ BL func_08002634 \n\
/* 08043f28 */ ADD SP, 0x1C \n\
/* 08043f2a */ POP {R4-R6} \n\
/* 08043f2c */ POP {R0} \n\
/* 08043f2e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
