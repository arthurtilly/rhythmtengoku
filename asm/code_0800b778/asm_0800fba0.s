asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fba0 \n\
/* 0800fba0 */ PUSH {R4-R7, LR} \n\
/* 0800fba2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800fba4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800fba6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800fba8 */ PUSH {R5-R7} \n\
/* 0800fbaa */ SUB SP, 0x14 \n\
/* 0800fbac */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0800fbae */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0800fbb0 */ LDR R4, [SP, 0x34] \n\
/* 0800fbb2 */ LDR R5, [SP, 0x38] \n\
/* 0800fbb4 */ LDR R6, [SP, 0x3C] \n\
/* 0800fbb6 */ LDR R0, [SP, 0x40] \n\
/* 0800fbb8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800fbba */ LSLS R2, R2, 0x10 \n\
/* 0800fbbc */ LSRS R2, R2, 0x10 \n\
/* 0800fbbe */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0800fbc0 */ LSLS R3, R3, 0x10 \n\
/* 0800fbc2 */ LSRS R3, R3, 0x10 \n\
/* 0800fbc4 */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 0800fbc6 */ LSLS R4, R4, 0x10 \n\
/* 0800fbc8 */ LSRS R4, R4, 0x10 \n\
/* 0800fbca */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800fbcc */ LSLS R1, R1, 0x10 \n\
/* 0800fbce */ LSRS R1, R1, 0x10 \n\
/* 0800fbd0 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800fbd2 */ LDR R0, =D_03005380 \n\
/* 0800fbd4 */ LDR R0, [R0] \n\
/* 0800fbd6 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800fbd8 */ LSLS R1, R1, 0x18 \n\
/* 0800fbda */ ASRS R1, R1, 0x18 \n\
/* 0800fbdc */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0800fbde */ LSLS R3, R2, 0x10 \n\
/* 0800fbe0 */ ASRS R3, R3, 0x10 \n\
/* 0800fbe2 */ LSLS R1, R7, 0x10 \n\
/* 0800fbe4 */ ASRS R1, R1, 0x10 \n\
/* 0800fbe6 */ STR R1, [SP] \n\
/* 0800fbe8 */ STR R4, [SP, 0x4] \n\
/* 0800fbea */ LSLS R5, R5, 0x18 \n\
/* 0800fbec */ ASRS R5, R5, 0x18 \n\
/* 0800fbee */ STR R5, [SP, 0x8] \n\
/* 0800fbf0 */ LSLS R6, R6, 0x18 \n\
/* 0800fbf2 */ ASRS R6, R6, 0x18 \n\
/* 0800fbf4 */ STR R6, [SP, 0xC] \n\
/* 0800fbf6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800fbf8 */ STR R1, [SP, 0x10] \n\
/* 0800fbfa */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0800fbfc */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800fbfe */ BL func_0804d160 \n\
/* 0800fc02 */ LSLS R0, R0, 0x10 \n\
/* 0800fc04 */ LSRS R0, R0, 0x10 \n\
/* 0800fc06 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800fc08 */ LSLS R0, R4, 0x10 \n\
/* 0800fc0a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fc0c */ BLT branch_0800fc5c \n\
/* 0800fc0e */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0800fc10 */ BL func_0800c43c \n\
/* 0800fc14 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800fc16 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800fc18 */ BEQ branch_0800fc5c \n\
/* 0800fc1a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800fc1c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800fc1e */ STRH R4, [R3] \n\
/* 0800fc20 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0800fc22 */ STRB R0, [R3, 0x2] \n\
/* 0800fc24 */ STRB R2, [R3, 0x3] \n\
/* 0800fc26 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800fc28 */ STRH R0, [R3, 0x4] \n\
/* 0800fc2a */ STRH R0, [R3, 0x6] \n\
/* 0800fc2c */ STRH R1, [R3, 0x8] \n\
/* 0800fc2e */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800fc30 */ STRH R0, [R3, 0xA] \n\
/* 0800fc32 */ STRH R7, [R3, 0xC] \n\
/* 0800fc34 */ STRH R1, [R3, 0xE] \n\
/* 0800fc36 */ STRH R1, [R3, 0x10] \n\
/* 0800fc38 */ LDRB R1, [R3, 0x12] \n\
/* 0800fc3a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800fc3c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800fc3e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800fc40 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0800fc42 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800fc44 */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 0800fc46 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800fc48 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800fc4a */ SUBS R1, 0x4 @ Subtract 0x4 from R1 \n\
/* 0800fc4c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800fc4e */ SUBS R1, 0x8 @ Subtract 0x8 from R1 \n\
/* 0800fc50 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800fc52 */ STRB R0, [R3, 0x12] \n\
/* 0800fc54 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800fc56 */ B branch_0800fc5e \n\
\n\
.ltorg \n\
 \n\
branch_0800fc5c: \n\
/* 0800fc5c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800fc5e: \n\
/* 0800fc5e */ ADD SP, 0x14 \n\
/* 0800fc60 */ POP {R3-R5} \n\
/* 0800fc62 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800fc64 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800fc66 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800fc68 */ POP {R4-R7} \n\
/* 0800fc6a */ POP {R1} \n\
/* 0800fc6c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
