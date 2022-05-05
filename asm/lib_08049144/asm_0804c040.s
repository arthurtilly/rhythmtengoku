asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c040 \n\
/* 0804c040 */ PUSH {R4, R5, LR} \n\
/* 0804c042 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804c044 */ LDRB R2, [R4, 0x3] \n\
/* 0804c046 */ LSLS R0, R2, 0x1A \n\
/* 0804c048 */ LSRS R0, R0, 0x1D \n\
/* 0804c04a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804c04c */ BEQ branch_0804c05c \n\
/* 0804c04e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804c050 */ BLE branch_0804c0b4 \n\
/* 0804c052 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804c054 */ BEQ branch_0804c07e \n\
/* 0804c056 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0804c058 */ BEQ branch_0804c09a \n\
/* 0804c05a */ B branch_0804c0b4 \n\
 \n\
branch_0804c05c: \n\
/* 0804c05c */ LDRH R0, [R4, 0x2A] \n\
/* 0804c05e */ LDRH R1, [R4, 0x28] \n\
/* 0804c060 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804c062 */ STRH R0, [R4, 0x28] \n\
/* 0804c064 */ LSLS R0, R0, 0x10 \n\
/* 0804c066 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c068 */ BGE branch_0804c0b4 \n\
/* 0804c06a */ MOVS R0, 0x39 @ Set R0 to 0x39 \n\
/* 0804c06c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804c06e */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804c070 */ STRB R0, [R4, 0x3] \n\
/* 0804c072 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804c074 */ LSLS R0, R0, 0x8 \n\
/* 0804c076 */ STRH R0, [R4, 0x28] \n\
/* 0804c078 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804c07a */ STRH R0, [R4, 0x2A] \n\
/* 0804c07c */ B branch_0804c0b4 \n\
 \n\
branch_0804c07e: \n\
/* 0804c07e */ LDRH R1, [R4, 0x28] \n\
/* 0804c080 */ LDRH R0, [R4, 0x2A] \n\
/* 0804c082 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804c084 */ BCS branch_0804c0b0 \n\
/* 0804c086 */ MOVS R0, 0x39 @ Set R0 to 0x39 \n\
/* 0804c088 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804c08a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804c08c */ STRB R0, [R4, 0x3] \n\
/* 0804c08e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804c090 */ STRH R0, [R4, 0x28] \n\
/* 0804c092 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c094 */ BL func_0804b560 \n\
/* 0804c098 */ B branch_0804c0b4 \n\
 \n\
branch_0804c09a: \n\
/* 0804c09a */ LDRH R1, [R4, 0x28] \n\
/* 0804c09c */ LDRH R0, [R4, 0x2A] \n\
/* 0804c09e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804c0a0 */ BCS branch_0804c0b0 \n\
/* 0804c0a2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804c0a4 */ STRH R0, [R4, 0x28] \n\
/* 0804c0a6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c0a8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804c0aa */ BL func_0804b574 \n\
/* 0804c0ae */ B branch_0804c0b4 \n\
 \n\
branch_0804c0b0: \n\
/* 0804c0b0 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0804c0b2 */ STRH R0, [R4, 0x28] \n\
 \n\
branch_0804c0b4: \n\
/* 0804c0b4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c0b6 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 0804c0b8 */ LDRB R1, [R0] \n\
/* 0804c0ba */ LDRH R0, [R4, 0x20] \n\
/* 0804c0bc */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0804c0be */ LDRH R0, [R4, 0x28] \n\
/* 0804c0c0 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0804c0c2 */ ASRS R5, R0, 0x8 \n\
/* 0804c0c4 */ LSRS R1, R5, 0xF \n\
/* 0804c0c6 */ CMP R1, 0xFF @ Compare R1 and 0xFF \n\
/* 0804c0c8 */ BLS branch_0804c0cc \n\
/* 0804c0ca */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
 \n\
branch_0804c0cc: \n\
/* 0804c0cc */ LDR R0, [R4, 0x4] \n\
/* 0804c0ce */ LSLS R1, R1, 0x18 \n\
/* 0804c0d0 */ LSRS R1, R1, 0x18 \n\
/* 0804c0d2 */ BL func_0804adb4 \n\
/* 0804c0d6 */ LSRS R1, R5, 0x8 \n\
/* 0804c0d8 */ LDRH R0, [R4, 0x22] \n\
/* 0804c0da */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0804c0dc */ LSRS R1, R0, 0xF \n\
/* 0804c0de */ CMP R1, 0xFF @ Compare R1 and 0xFF \n\
/* 0804c0e0 */ BLS branch_0804c0e4 \n\
/* 0804c0e2 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
 \n\
branch_0804c0e4: \n\
/* 0804c0e4 */ LDR R0, [R4, 0x4] \n\
/* 0804c0e6 */ LSLS R1, R1, 0x18 \n\
/* 0804c0e8 */ LSRS R1, R1, 0x18 \n\
/* 0804c0ea */ LDRH R2, [R4, 0x24] \n\
/* 0804c0ec */ BL func_08049ec4 \n\
/* 0804c0f0 */ POP {R4, R5} \n\
/* 0804c0f2 */ POP {R0} \n\
/* 0804c0f4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
