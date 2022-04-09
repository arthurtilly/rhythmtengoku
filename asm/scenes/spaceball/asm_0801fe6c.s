asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801fe6c \n\
/* 0801fe6c */ PUSH {R4-R6, LR} \n\
/* 0801fe6e */ SUB SP, 0x14 \n\
/* 0801fe70 */ LDR R6, =D_030055d0 \n\
/* 0801fe72 */ LDR R4, [R6] \n\
/* 0801fe74 */ LDR R0, [R4, 0x8] \n\
/* 0801fe76 */ LDR R1, [R4, 0xC] \n\
/* 0801fe78 */ LDR R2, [R4, 0x10] \n\
/* 0801fe7a */ LDR R3, [R4, 0x14] \n\
/* 0801fe7c */ LDR R5, [R4, 0x1C] \n\
/* 0801fe7e */ STR R5, [SP] \n\
/* 0801fe80 */ LDR R4, [R4, 0x20] \n\
/* 0801fe82 */ STR R4, [SP, 0x4] \n\
/* 0801fe84 */ BL func_0801fdc4 \n\
/* 0801fe88 */ LDR R3, [R6] \n\
/* 0801fe8a */ LDR R0, [R3, 0x24] \n\
/* 0801fe8c */ LDR R1, [R3, 0x28] \n\
/* 0801fe8e */ LDR R2, [R3, 0x2C] \n\
/* 0801fe90 */ LDR R3, [R3, 0x30] \n\
/* 0801fe92 */ BL func_0801fd70 \n\
/* 0801fe96 */ LDR R3, [R6] \n\
/* 0801fe98 */ LDR R0, [R3, 0x34] \n\
/* 0801fe9a */ LDR R1, [R3, 0x38] \n\
/* 0801fe9c */ LDR R2, [R3, 0x3C] \n\
/* 0801fe9e */ LDR R3, [R3, 0x40] \n\
/* 0801fea0 */ BL func_0801fd70 \n\
/* 0801fea4 */ LDR R3, [R6] \n\
/* 0801fea6 */ LDR R0, [R3, 0x44] \n\
/* 0801fea8 */ LDR R1, [R3, 0x48] \n\
/* 0801feaa */ LDR R2, [R3, 0x4C] \n\
/* 0801feac */ LDR R3, [R3, 0x50] \n\
/* 0801feae */ BL func_0801fd70 \n\
/* 0801feb2 */ LDR R3, [R6] \n\
/* 0801feb4 */ LDR R0, [R3, 0x54] \n\
/* 0801feb6 */ LDR R1, [R3, 0x58] \n\
/* 0801feb8 */ LDR R2, [R3, 0x5C] \n\
/* 0801feba */ LDR R3, [R3, 0x60] \n\
/* 0801febc */ BL func_0801fd70 \n\
/* 0801fec0 */ LDR R0, [R6] \n\
/* 0801fec2 */ LDR R1, [R0, 0x4] \n\
/* 0801fec4 */ LSLS R0, R1, 0x4 \n\
/* 0801fec6 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0801fec8 */ LSLS R0, R0, 0xC \n\
/* 0801feca */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801fecc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801fece */ BGE branch_0801fed2 \n\
/* 0801fed0 */ ADDS R0, 0xFF @ Add 0xFF to R0 \n\
 \n\
branch_0801fed2: \n\
/* 0801fed2 */ ASRS R3, R0, 0x8 \n\
/* 0801fed4 */ LSLS R0, R1, 0x2 \n\
/* 0801fed6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801fed8 */ LSLS R0, R0, 0xD \n\
/* 0801feda */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801fedc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801fede */ BGE branch_0801fee2 \n\
/* 0801fee0 */ ADDS R0, 0xFF @ Add 0xFF to R0 \n\
 \n\
branch_0801fee2: \n\
/* 0801fee2 */ ASRS R0, R0, 0x8 \n\
/* 0801fee4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801fee6 */ LSLS R1, R1, 0x8 \n\
/* 0801fee8 */ MOVS R2, 0xB0 @ Set R2 to 0xB0 \n\
/* 0801feea */ LSLS R2, R2, 0x8 \n\
/* 0801feec */ STR R0, [SP] \n\
/* 0801feee */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801fef0 */ STR R4, [SP, 0x4] \n\
/* 0801fef2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801fef4 */ BL func_08008910 \n\
/* 0801fef8 */ LDR R0, [R6] \n\
/* 0801fefa */ ADDS R0, 0x64 @ Add 0x64 to R0 \n\
/* 0801fefc */ LDRH R0, [R0] \n\
/* 0801fefe */ CMP R0, 0x17 @ Compare R0 and 0x17 \n\
/* 0801ff00 */ BHI branch_0801ff50 \n\
/* 0801ff02 */ LDR R0, =D_03005380 \n\
/* 0801ff04 */ LDR R0, [R0] \n\
/* 0801ff06 */ LDR R1, =D_088a1b90 \n\
/* 0801ff08 */ STR R4, [SP] \n\
/* 0801ff0a */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 0801ff0c */ LSLS R2, R2, 0x8 \n\
/* 0801ff0e */ STR R2, [SP, 0x4] \n\
/* 0801ff10 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801ff12 */ STR R2, [SP, 0x8] \n\
/* 0801ff14 */ STR R4, [SP, 0xC] \n\
/* 0801ff16 */ STR R4, [SP, 0x10] \n\
/* 0801ff18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ff1a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801ff1c */ BL func_0804d160 \n\
/* 0801ff20 */ LDR R2, [R6] \n\
/* 0801ff22 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0801ff24 */ ADDS R3, 0x64 @ Add 0x64 to R3 \n\
/* 0801ff26 */ LDRH R1, [R3] \n\
/* 0801ff28 */ LSLS R1, R1, 0x1 \n\
/* 0801ff2a */ ADDS R2, 0x66 @ Add 0x66 to R2 \n\
/* 0801ff2c */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0801ff2e */ STRH R0, [R2] \n\
/* 0801ff30 */ LDRH R0, [R3] \n\
/* 0801ff32 */ BL func_0801fc44 \n\
/* 0801ff36 */ LDR R1, [R6] \n\
/* 0801ff38 */ ADDS R1, 0x64 @ Add 0x64 to R1 \n\
/* 0801ff3a */ LDRH R0, [R1] \n\
/* 0801ff3c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801ff3e */ STRH R0, [R1] \n\
/* 0801ff40 */ B branch_0801ff58 \n\
\n\
.ltorg \n\
 \n\
branch_0801ff50: \n\
/* 0801ff50 */ BL func_0801fd1c \n\
/* 0801ff54 */ BL func_0801fcb0 \n\
 \n\
branch_0801ff58: \n\
/* 0801ff58 */ ADD SP, 0x14 \n\
/* 0801ff5a */ POP {R4-R6} \n\
/* 0801ff5c */ POP {R0} \n\
/* 0801ff5e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
