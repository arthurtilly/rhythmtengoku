asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fd14 \n\
/* 0800fd14 */ PUSH {R4, LR} \n\
/* 0800fd16 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800fd18 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0800fd1a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800fd1c */ BEQ branch_0800fd5a \n\
/* 0800fd1e */ LDRB R1, [R2, 0x12] \n\
/* 0800fd20 */ LSLS R0, R1, 0x1E \n\
/* 0800fd22 */ LSRS R0, R0, 0x1F \n\
/* 0800fd24 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800fd26 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 0800fd28 */ BEQ branch_0800fd5a \n\
/* 0800fd2a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800fd2c */ BEQ branch_0800fd3a \n\
/* 0800fd2e */ LDRH R0, [R2, 0x8] \n\
/* 0800fd30 */ LSLS R0, R0, 0x3 \n\
/* 0800fd32 */ STRH R0, [R2, 0x8] \n\
/* 0800fd34 */ LDRH R0, [R2, 0x10] \n\
/* 0800fd36 */ LSLS R0, R0, 0x3 \n\
/* 0800fd38 */ B branch_0800fd48 \n\
 \n\
branch_0800fd3a: \n\
/* 0800fd3a */ LDRH R0, [R2, 0x8] \n\
/* 0800fd3c */ LSLS R0, R0, 0x10 \n\
/* 0800fd3e */ ASRS R0, R0, 0x13 \n\
/* 0800fd40 */ STRH R0, [R2, 0x8] \n\
/* 0800fd42 */ LDRH R0, [R2, 0x10] \n\
/* 0800fd44 */ LSLS R0, R0, 0x10 \n\
/* 0800fd46 */ ASRS R0, R0, 0x13 \n\
 \n\
branch_0800fd48: \n\
/* 0800fd48 */ STRH R0, [R2, 0x10] \n\
/* 0800fd4a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800fd4c */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 0800fd4e */ LSLS R1, R3, 0x1 \n\
/* 0800fd50 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0800fd52 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800fd54 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0800fd56 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800fd58 */ STRB R0, [R2, 0x12] \n\
 \n\
branch_0800fd5a: \n\
/* 0800fd5a */ POP {R4} \n\
/* 0800fd5c */ POP {R0} \n\
/* 0800fd5e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
