asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801aff8 \n\
/* 0801aff8 */ PUSH {LR} \n\
/* 0801affa */ SUB SP, 0x14 \n\
/* 0801affc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801affe */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801b000 */ BLT branch_0801b02a \n\
/* 0801b002 */ LDR R0, =D_030046a8 \n\
/* 0801b004 */ LDR R2, [R0] \n\
/* 0801b006 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801b008 */ ADDS R0, 0xC2 @ Add 0xC2 to R0 \n\
/* 0801b00a */ LDRB R0, [R0] \n\
/* 0801b00c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0801b00e */ BGE branch_0801b02a \n\
/* 0801b010 */ LSLS R0, R1, 0x2 \n\
/* 0801b012 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0801b014 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801b016 */ ADDS R0, 0xC7 @ Add 0xC7 to R0 \n\
/* 0801b018 */ LDRB R0, [R0] \n\
/* 0801b01a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801b01c */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0801b01e */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 0801b020 */ BEQ branch_0801b054 \n\
/* 0801b022 */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 0801b024 */ BCC branch_0801b034 \n\
/* 0801b026 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 0801b028 */ BEQ branch_0801b07c \n\
 \n\
branch_0801b02a: \n\
/* 0801b02a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801b02c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801b02e */ B branch_0801b0a2 \n\
\n\
.ltorg \n\
 \n\
branch_0801b034: \n\
/* 0801b034 */ LDR R0, =D_03005380 \n\
/* 0801b036 */ LDR R0, [R0] \n\
/* 0801b038 */ LDR R1, =D_0890c430 \n\
/* 0801b03a */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0801b03c */ STR R2, [SP] \n\
/* 0801b03e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b040 */ STR R2, [SP, 0x4] \n\
/* 0801b042 */ STR R2, [SP, 0x8] \n\
/* 0801b044 */ STR R2, [SP, 0xC] \n\
/* 0801b046 */ STR R2, [SP, 0x10] \n\
/* 0801b048 */ B branch_0801b098 \n\
\n\
.ltorg \n\
 \n\
branch_0801b054: \n\
/* 0801b054 */ LDR R0, =D_03005380 \n\
/* 0801b056 */ LDR R0, [R0] \n\
/* 0801b058 */ LDR R1, =D_0890c3d8 \n\
/* 0801b05a */ ADDS R2, 0xC5 @ Add 0xC5 to R2 \n\
/* 0801b05c */ LDRB R2, [R2] \n\
/* 0801b05e */ LSLS R2, R2, 0x18 \n\
/* 0801b060 */ ASRS R2, R2, 0x18 \n\
/* 0801b062 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 0801b064 */ STR R3, [SP] \n\
/* 0801b066 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801b068 */ STR R3, [SP, 0x4] \n\
/* 0801b06a */ STR R3, [SP, 0x8] \n\
/* 0801b06c */ STR R3, [SP, 0xC] \n\
/* 0801b06e */ STR R3, [SP, 0x10] \n\
/* 0801b070 */ MOVS R3, 0x76 @ Set R3 to 0x76 \n\
/* 0801b072 */ B branch_0801b09a \n\
\n\
.ltorg \n\
 \n\
branch_0801b07c: \n\
/* 0801b07c */ LDR R0, =D_03005380 \n\
/* 0801b07e */ LDR R0, [R0] \n\
/* 0801b080 */ LDR R1, =D_0890c440 \n\
/* 0801b082 */ ADDS R2, 0xC5 @ Add 0xC5 to R2 \n\
/* 0801b084 */ LDRB R2, [R2] \n\
/* 0801b086 */ LSLS R2, R2, 0x18 \n\
/* 0801b088 */ ASRS R2, R2, 0x18 \n\
/* 0801b08a */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0801b08c */ STR R3, [SP] \n\
/* 0801b08e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801b090 */ STR R3, [SP, 0x4] \n\
/* 0801b092 */ STR R3, [SP, 0x8] \n\
/* 0801b094 */ STR R3, [SP, 0xC] \n\
/* 0801b096 */ STR R3, [SP, 0x10] \n\
 \n\
branch_0801b098: \n\
/* 0801b098 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
 \n\
branch_0801b09a: \n\
/* 0801b09a */ BL func_0804d160 \n\
/* 0801b09e */ LSLS R0, R0, 0x10 \n\
/* 0801b0a0 */ ASRS R0, R0, 0x10 \n\
 \n\
branch_0801b0a2: \n\
/* 0801b0a2 */ ADD SP, 0x14 \n\
/* 0801b0a4 */ POP {R1} \n\
/* 0801b0a6 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
