asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006e88 \n\
/* 08006e88 */ PUSH {R4-R7, LR} \n\
/* 08006e8a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08006e8c */ PUSH {R7} \n\
/* 08006e8e */ SUB SP, 0xC \n\
/* 08006e90 */ LDR R5, =D_03004b10 \n\
/* 08006e92 */ LDR R0, =0x854 \n\
/* 08006e94 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08006e96 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08006e98 */ LDRB R1, [R0] \n\
/* 08006e9a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08006e9c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006e9e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006ea0 */ BEQ branch_08006f6c \n\
/* 08006ea2 */ LDR R0, =0x040000d4 @ !Hardware REG_DMA3SAD \n\
/* 08006ea4 */ ADDS R1, R5, 0x4 @ Set R1 to R5 + 0x4 \n\
/* 08006ea6 */ STR R1, [R0] \n\
/* 08006ea8 */ LDR R1, =0x04000008 @ !Hardware REG_BG0CNT \n\
/* 08006eaa */ STR R1, [R0, 0x4] \n\
/* 08006eac */ LDR R2, =0x84000006 \n\
/* 08006eae */ STR R2, [R0, 0x8] \n\
/* 08006eb0 */ LDR R1, [R0, 0x8] \n\
/* 08006eb2 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08006eb4 */ ADDS R1, 0x3C @ Add 0x3C to R1 \n\
/* 08006eb6 */ STR R1, [R0] \n\
/* 08006eb8 */ LDR R1, =0x04000040 @ !Hardware REG_WIN0H \n\
/* 08006eba */ STR R1, [R0, 0x4] \n\
/* 08006ebc */ STR R2, [R0, 0x8] \n\
/* 08006ebe */ LDR R0, [R0, 0x8] \n\
/* 08006ec0 */ LDR R1, =0x454 \n\
/* 08006ec2 */ ADDS R0, R5, R1 @ Set R0 to R5 + R1 \n\
/* 08006ec4 */ MOVS R1, 0xE0 @ Set R1 to 0xE0 \n\
/* 08006ec6 */ LSLS R1, R1, 0x13 \n\
/* 08006ec8 */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 08006eca */ LSLS R7, R7, 0x3 \n\
/* 08006ecc */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 08006ece */ LSLS R6, R6, 0x1 \n\
/* 08006ed0 */ STR R6, [SP] \n\
/* 08006ed2 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08006ed4 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08006ed6 */ BL func_0800186c \n\
/* 08006eda */ BL func_08004270 \n\
/* 08006ede */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08006ee0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08006ee2 */ LDRH R1, [R2] \n\
/* 08006ee4 */ LDR R0, =0xfff2 \n\
/* 08006ee6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006ee8 */ ADDS R5, 0x54 @ Add 0x54 to R5 \n\
/* 08006eea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006eec */ BEQ branch_08006ef0 \n\
/* 08006eee */ LDR R5, =D_030046c0 \n\
 \n\
branch_08006ef0: \n\
/* 08006ef0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08006ef2 */ BGE branch_08006f2c \n\
/* 08006ef4 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08006ef6 */ LSLS R1, R1, 0x13 \n\
/* 08006ef8 */ STR R6, [SP] \n\
/* 08006efa */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08006efc */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08006efe */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08006f00 */ BL func_0800186c \n\
/* 08006f04 */ B branch_08006f62 \n\
\n\
.ltorg \n\
 \n\
branch_08006f2c: \n\
/* 08006f2c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08006f2e */ BLE branch_08006f40 \n\
/* 08006f30 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08006f32 */ LSLS R1, R1, 0x13 \n\
/* 08006f34 */ LSLS R2, R4, 0x1 \n\
/* 08006f36 */ STR R6, [SP] \n\
/* 08006f38 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08006f3a */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08006f3c */ BL func_0800186c \n\
 \n\
branch_08006f40: \n\
/* 08006f40 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08006f42 */ LSLS R0, R0, 0x1 \n\
/* 08006f44 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08006f46 */ BGT branch_08006f62 \n\
/* 08006f48 */ LSLS R0, R4, 0x1 \n\
/* 08006f4a */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 08006f4c */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 08006f4e */ LSLS R1, R4, 0x1 \n\
/* 08006f50 */ LDR R2, =D_05000002 \n\
/* 08006f52 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08006f54 */ LDR R2, =0x1ff \n\
/* 08006f56 */ SUBS R2, R2, R4 @ Set R2 to R2 - R4 \n\
/* 08006f58 */ LSLS R2, R2, 0x1 \n\
/* 08006f5a */ STR R6, [SP] \n\
/* 08006f5c */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08006f5e */ BL func_0800186c \n\
 \n\
branch_08006f62: \n\
/* 08006f62 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08006f64 */ LSLS R0, R0, 0x13 \n\
/* 08006f66 */ LDR R1, =D_03004b10 \n\
/* 08006f68 */ LDRH R1, [R1] \n\
/* 08006f6a */ STRH R1, [R0] \n\
 \n\
branch_08006f6c: \n\
/* 08006f6c */ ADD SP, 0xC \n\
/* 08006f6e */ POP {R3} \n\
/* 08006f70 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08006f72 */ POP {R4-R7} \n\
/* 08006f74 */ POP {R0} \n\
/* 08006f76 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
